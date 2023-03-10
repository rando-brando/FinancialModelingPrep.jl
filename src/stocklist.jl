"""
    available_symbols(fmp)

Returns a JSON table of all available symbols in the API.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.

See [Symbols-List]\
(https://site.financialmodelingprep.com/developer/docs/#Symbols-List) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get a list of all available symbols
data = available_symbols(fmp)
```
"""
function available_symbols(fmp::FMP)
    endpoint = "stock/list"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    tradeable_symbols(fmp)

Returns a JSON table of all tradeable symbols in the API.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.

See [Tradeable-Symbols-List]\
(https://site.financialmodelingprep.com/developer/docs/#Tradable-Symbols-List) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get a list of all available symbols
data = tradeable_symbols(fmp)
```
"""
function tradeable_symbols(fmp::FMP)
    endpoint = "available-traded/list"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    etf_symbols(fmp)

Returns a JSON table of all tradeable symbols in the API.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.

See [ETF-Symbols]\
(https://site.financialmodelingprep.com/developer/docs/#ETF-List) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get a list of all etf symbols
data = etf_symbols(fmp)
```
"""
function etf_symbols(fmp::FMP)
    endpoint = "etf/list"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
