"""
    search_symbol(fmp, symbol, params...)

Returns a list of search results for the specified symbol and filters. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- params...: Additional keyword query params.

See [Symbol-Search](https://site.financialmodelingprep.com/developer/docs/#Ticker-Search) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the first 10 matches where symbol is AA and exchange is NASDAQ
data = search_symbol(fmp, "AA", limit = 10, exchange = "NASDAQ")
```
"""
function search_symbol(fmp::FMP, symbol::String; params...)
    endpoint = "search-ticker"
    url, query = Client.make_url_v3(fmp, endpoint; query = symbol, params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    search_name(fmp, name, params...)

Returns a list of search results for the specified name and filters. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- name::String: A company name.
- params...: Additional keyword query params.

See [Name-Search](https://site.financialmodelingprep.com/developer/docs/#Ticker-Search) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the first 10 matches where name is Meta and exchange is NASDAQ
data = search_name(fmp, "Meta", limit = 10, exchange = "NASDAQ")
```
"""
function search_name(fmp::FMP, name::String; params...)
    endpoint = "search-name"
    url, query = Client.make_url_v3(fmp, endpoint; query = name, params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    stock_screener(fmp, params...)

Returns a list of search results for the specified filters. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- params...: Additional keyword query params.

See [Stock-Screener](https://site.financialmodelingprep.com/developer/docs/#Stock-Screener) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get all tech stocks in the NASDAQ with a market cap over 100mm and a beta above 1
data = stock_screener(fmp, marketCapMoreThan = 100000000, betaMoreThan = 1, sector = "Technology", exchange = "NASDAQ")

# get the first 100 stocks in California with a price greater than 100
data = stock_screener(fmp, country = "CA", priceMoreThan = 100, limit = 100)
```
"""
function stock_screener(fmp::FMP; params...)
    endpoint = "stock-screener"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end