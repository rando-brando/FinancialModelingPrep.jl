"""
    available_tsx(fmp)

Returns a JSON table of all available tsx symbols in the API.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.

See [TSX-List]\
(https://site.financialmodelingprep.com/developer/docs/#Most-of-the-TSX) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get a list of all available tsx symbols
data = available_tsx(fmp)
```
"""
function available_tsx(fmp::FMP)
    endpoint = "symbol/available-tsx"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
