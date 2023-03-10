"""
    beneficial_ownership(fmp, symbol)

Returns a JSON table of beneficial ownership for the specified symbol.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.

See [Individual-Beneficial-Ownership]\
(https://site.financialmodelingprep.com/developer/docs/#Individual-Beneficial-Ownership) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the beneficial ownership for AAPL
data = beneficial_ownership(fmp, "AAPL")
```
"""
function beneficial_ownership(fmp::FMP, symbol::String)
    endpoint = "insider/ownership/acquisition_of_beneficial_ownership"
    url, query = Client.make_url_v4(fmp, endpoint, symbol = symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
