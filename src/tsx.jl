"""
    available_tsx(fmp)

Returns a vector of all available tsx symbols in the API. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.

See [TSX-List](https://site.financialmodelingprep.com/developer/docs/#Most-of-the-TSX) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get a list of all available tsx symbols
data = available_tsx(fmp)
```
"""
function available_tsx(fmp::FMP)::Vector{Any}
    endpoint = "symbol/available-tsx"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end