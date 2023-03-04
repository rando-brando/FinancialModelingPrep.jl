module Client

import HTTP, JSON
import Base: @kwdef

"""
FMP(apikey = "demo", baseurl = "https://financialmodelingprep.com", headers = Dict("Upgrade-Insecure-Requests" => "1"))

Creates a Financial Modeling Prep instance for interacting with the API server endpoints.

# Arguments
- apikey::String
- baseurl::String
- headers::Dict{String, String}

# Examples
``` julia
# load your FMP API key
FMP_API_KEY = ENV("FMP_API_KEY")

# create a new FMP instance, passing the API key by name
fmp = FMP(apikey = FMP_API_KEY)
```
"""
@kwdef struct FMP
    api_key::String = "demo"
    base_url::String = "https://financialmodelingprep.com"
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
    query["apikey"] = fmp.api_key
    url = "$(fmp.base_url)/api/v3/$(endpoint)"
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
    query["apikey"] = fmp.api_key
    url = "$(fmp.base_url)/api/v4/$(endpoint)"
    return url, query
end

"""
    make_get_request(url, query)

Makes a GET request to the Financial Modeling Prep API server.

# Arguments
- url::String: A url to make a request to.
- query::Dict{String, Any}: Additional query parameters for the request.
"""
function make_get_request(url::String, query::Dict{String, Any})::HTTP.Messages.Response
    response = HTTP.get(url, query = query)
    
    # only response status 200 contains usable data
    if response.status != 200
        error("HTTP request returned status code $(response.status).")
    end
    
    return response
end

"""
    parse_json_response(response)

Parses a JSON response from the Financial Modeling Prep API server.

# Arguments
- response::HTTP.Messages.Response: An HTTP response object.
"""
function parse_json_response(response::HTTP.Messages.Response)::Vector{Any}
    result = JSON.parse(String(response.body))
    
    # raise error when the API response does
    if isa(result, Dict) && haskey(result, "Error Message")
        error(result["Error Message"])
    end

    # convert all results to a vector
    if !isa(result, Vector)
        result = [result]
    end
    
    return result
end

end # module Handler
