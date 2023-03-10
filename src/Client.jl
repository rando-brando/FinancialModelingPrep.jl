module Client

include("Exceptions.jl")

import HTTP, JSON3, JSONTables
import Base: @kwdef
import .Exceptions

"""
FMP(apikey, baseurl, headers)

Creates a Financial Modeling Prep instance for interacting with the API server endpoints.

# Arguments
- apikey::String = `"demo"`
- baseurl::String = `"https://financialmodelingprep.com"`
- headers::Dict{String, String} = `Dict("Upgrade-Insecure-Requests" => "1")`

# Examples
``` julia
# load your FMP API key
FMP_API_KEY = ENV("FMP_API_KEY")

# create a new FMP instance, passing the API key by name
fmp = FMP(apikey = FMP_API_KEY)
```
"""
@kwdef struct FMP
    apikey::String = "demo"
    baseurl::String = "https://financialmodelingprep.com"
    headers::Dict{String, String} = Dict{String, String}("Upgrade-Insecure-Requests" => "1")
end

"""
    make_url_v3(fmp, endpoint, params...)

Creates a Financial Modeling Prep API version 3 URL.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- endpoint::String: The api endpoint
- params...: Additional keyword query params.
"""
function make_url_v3(fmp::FMP, endpoint::String; params...)::Tuple{String, Dict{String, Any}}
    query = Dict{String, Any}(string(k) => v for (k, v) in params)
    query["apikey"] = fmp.apikey
    url = "$(fmp.baseurl)/api/v3/$(endpoint)"
    return url, query
end

"""
    make_url_v4(fmp, endpoint, params...)

Creates a Financial Modeling Prep API version 4 URL.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- endpoint::String: The api endpoint
- params...: Additional keyword query params.
"""
function make_url_v4(fmp::FMP, endpoint::String; params...)::Tuple{String, Dict{String, Any}}
    query = Dict{String, Any}(string(k) => v for (k, v) in params)
    query["apikey"] = fmp.apikey
    url = "$(fmp.baseurl)/api/v4/$(endpoint)"
    return url, query
end

"""
    make_get_request(url, query, status_exception = false)

Makes a GET request to the Financial Modeling Prep API server.

# Arguments
- url::String: A url to make a request to.
- query::Dict{String, Any}: Additional query parameters for the request.
- status_exception::Bool = false: throw HTTP.StatusError for response status >= 300.
"""
function make_get_request(url::String, query::Dict{String, Any}; status_exception = false)::HTTP.Messages.Response
    response = HTTP.get(url, query = query, status_exception = status_exception)
    return response
end

"""
    parse_json_object(response)
    parse_json_object(response, accessor)

Parses a response from the Financial Modeling Prep API server as a JSON object.

# Arguments
- response::HTTP.Messages.Response: An HTTP response containing JSON data.
- accessor: A Symbol or String accessor containing a nested array.
"""
function parse_json_object(response::HTTP.Messages.Response, accessor)::Union{JSON3.Object, JSON3.Array}
    result = JSON3.read(response.body)

    # raise error when the API response does
    if isa(result, JSON3.Object)
        if haskey(result, "Error Message")
            throw(Exceptions.PermissionError(result["Error Message"]))
        end
        if response.status != 200
            status = response.status
            method = response.request.method
            target = split(response.request.target, "?")[1]
            throw(HTTP.Exceptions.StatusError(status, method, target, response))
        end
        if haskey(result, accessor)
            result = result[accessor]
        end
    end

    return result
end
parse_json_object(response::HTTP.Messages.Response) = parse_json_object(response, nothing)

"""
    parse_json_table(response)
    parse_json_table(response, accessor)

    Parses a response from the Financial Modeling Prep API server as a JSON table.

# Arguments
- response::HTTP.Messages.Response: An HTTP response containing JSON data.
- accessor: A Symbol or String accessor containing a nested array.
"""
function parse_json_table(response::HTTP.Messages.Response, accessor)::JSONTables.Table
    result = parse_json_object(response, accessor)
    if !isempty(result)
        result = JSONTables.jsontable(result)
    end
    return result
end
parse_json_table(response::HTTP.Messages.Response) = parse_json_table(response, nothing)

end # module Client
