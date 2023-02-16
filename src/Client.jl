module Client

import HTTP, JSON
import Base: @kwdef

"""
FMP(api_key, base_url, headers)

Creates a FMP instance for interacting with the Financial Modeling Prep API endpoints.

# Arguments
- api_key::String
- base_url::String
- headers::Dict{String, String}

# Examples
``` julia
# load your FMP API key
my_key = ENV("FMP_API_KEY")

# create a new FMP instance, passing the API key by name
fmp = FMP(api_key = my_key)
```
"""
@kwdef struct FMP
    api_key::String = "demo"
    base_url::String = "https://financialmodelingprep.com"
    headers::Dict{String, String} = Dict{String, String}("Upgrade-Insecure-Requests" => "1")
end

"""
    make_url_v3(fmp, endpoint, params...)

Creates an API version 3 url.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- endpoint::String: The api endpoint
- params...: Additional keyword query params.
"""
function make_url_v3(fmp::FMP, endpoint::String; params...)
    query = Dict{String, Any}(string(k) => v for (k, v) in params)
    query["apikey"] = fmp.api_key
    url = "$(fmp.base_url)/api/v3/$(endpoint)"
    return url, query
end

"""
    make_url_v4(fmp, endpoint, params...)

Creates an API version 4 url.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- endpoint::String: The api endpoint
- params...: Additional keyword query params.
"""
function make_url_v4(fmp::FMP, endpoint::String; params...)
    query = Dict{String, Any}(string(k) => v for (k, v) in params)
    query["apikey"] = fmp.api_key
    url = "$(fmp.base_url)/api/v4/$(endpoint)"
    return url
end

"""
    make_request(url, query)

Handles and returns the response of a HTTP request.

# Arguments
- url::String: A url to make a request to.
- query::Dict{String, Any}: Additional query parameters for the request.
"""
function make_request(url::String, query::Dict{String, Any})::HTTP.Messages.Response
    response = HTTP.get(url, query = query)
    
    # only response status 200 contains usable data
    if response.status != 200
        error("HTTP request returned status code $(response.status)")
    end
    
    return response
end

"""
    parse_response(response)

Handles and returns the result of parsing a response.

# Arguments
- response::HTTP.Messages.Response: An HTTP response object.
"""
function parse_response(response::HTTP.Messages.Response)::Vector{Any}
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
