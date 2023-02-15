module Handler

import HTTP, JSON

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
