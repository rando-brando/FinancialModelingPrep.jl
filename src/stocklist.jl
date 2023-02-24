"""
    available_symbols(fmp)

Returns a vector of all available symbols in the API. Each element is a dictionary.

See [Symbols-List](https://site.financialmodelingprep.com/developer/docs/#Symbols-List) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get a list of all available symbols
data = available_symbols(fmp)
```
"""
function available_symbols(fmp::FMP)::Vector{Any}
    endpoint = "stock/list"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    tradeable_symbols(fmp)

Returns a vector of all tradeable symbols in the API. Each element is a dictionary.

See [Tradeable-Symbols-List](https://site.financialmodelingprep.com/developer/docs/#Tradable-Symbols-List) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get a list of all available symbols
data = tradeable_symbols(fmp)
```
"""
function tradeable_symbols(fmp::FMP)::Vector{Any}
    endpoint = "available-traded/list"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    etf_symbols(fmp)

Returns a vector of all tradeable symbols in the API. Each element is a dictionary.

See [ETF-Symbols](https://site.financialmodelingprep.com/developer/docs/#ETF-List) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get a list of all etf symbols
data = etf_symbols(fmp)
```
"""
function etf_symbols(fmp::FMP)::Vector{Any}
    endpoint = "etf/list"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end