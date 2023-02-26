"""
    available_euronext(fmp)

Returns a vector of all available euronext symbols in the API. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.

See [Euronext-List](https://site.financialmodelingprep.com/developer/docs/#Most-of-the-EuroNext) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get a list of all available euronext symbols
data = available_euronext(fmp)
```
"""
function available_euronext(fmp::FMP)::Vector{Any}
    endpoint = "symbol/available-euronext"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end