"""
    price_quote(fmp, symbol)

Returns the price quote for the specified symbol(s). Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A financial symbol.

See [Company-Quote](https://site.financialmodelingprep.com/developer/docs/#Company-Quote) for more details.\\
See [Index-Quote](https://site.financialmodelingprep.com/developer/docs/#Most-of-the-majors-indexes-(Dow-Jones%2C-Nasdaq%2C-S&P-500)) for more details.\\
See [Euronext-Quote](https://site.financialmodelingprep.com/developer/docs/#Most-of-the-EuroNext) for more details.\\
See [TSX-Quote](https://site.financialmodelingprep.com/developer/docs/#Most-of-the-TSX) for more details.\\
See [Crypto-Quote](https://site.financialmodelingprep.com/developer/docs/#Cryptocurrencies) for more details.\\
See [Forex-Quote](https://site.financialmodelingprep.com/developer/docs/#Forex-(FX)) for more details.\\
See [Commodity-Quote](https://site.financialmodelingprep.com/developer/docs/#Most-of-the-Major-Commodities-(Gold%2C-Silver%2C-Oil)) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the price quote for AAPL
data = price_quote(fmp, "AAPL")
```
"""
function price_quote(fmp::FMP, symbol::String)
    endpoint = "quote/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    price_quotes(fmp, market)

Returns the price quotes for the specified marklet. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- market::String: A financial market.

See [Stock-Quote](https://site.financialmodelingprep.com/developer/docs/#Stock-Price) for more details.\\
See [Index-Quote](https://site.financialmodelingprep.com/developer/docs/#Most-of-the-majors-indexes-(Dow-Jones%2C-Nasdaq%2C-S&P-500)) for more details.\\
See [Euronext-Quote](https://site.financialmodelingprep.com/developer/docs/#Most-of-the-EuroNext) for more details.\\
See [TSX-Quote](https://site.financialmodelingprep.com/developer/docs/#Most-of-the-TSX) for more details.\\
See [Crypto-Quote](https://site.financialmodelingprep.com/developer/docs/#Cryptocurrencies) for more details.\\
See [Forex-Quote](https://site.financialmodelingprep.com/developer/docs/#Forex-(FX)) for more details.\\
See [Commodity-Quote](https://site.financialmodelingprep.com/developer/docs/#Most-of-the-Major-Commodities-(Gold%2C-Silver%2C-Oil)) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the price quotes for major indexes
data = price_quote(fmp, "index")

# get the price quotes for NYSE
data = price_quote(fmp, "nyse")

# get the price quotes for TSX
data = price_quote(fmp, "euronext")

# get the price quotes for euronext
data = price_quote(fmp, "tsx")

# get the price quotes for crypto
data = price_quote(fmp, "crypto")

# get the price quotes for forex
data = price_quote(fmp, "forex")

# get the price quotes for commodity
data = price_quote(fmp, "commodity")
```
"""
function price_quotes(fmp::FMP, market::String)
    endpoint = "quotes/$(market)"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    historical_price_quote(fmp, symbol, frequency = TIME_FREQUENCIES.daily, params...)

Returns the historical price quote for the specified symbol and frequency. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- frequency::String: A time frame.
- params...: Additional keyword query params.

See [Historical-Stock-Quote](https://site.financialmodelingprep.com/developer/docs/#Stock-Historical-Price) for more details.\\
See [Historical-Index-Quote](https://site.financialmodelingprep.com/developer/docs/#Historical-stock-index-prices) for more details.\\
See [Historical-Euronext-Quote](https://site.financialmodelingprep.com/developer/docs/#Historical-EuroNext-prices) for more details.\\
See [Historical-TSX-Quote](https://site.financialmodelingprep.com/developer/docs/#Historical-TSX-prices) for more details.\\
See [Historical-Cryptocurrencies-Quote](https://site.financialmodelingprep.com/developer/docs/#Historical-Cryptocurrencies-Price) for more details.\\
See [Historical-Forex-Quote](https://site.financialmodelingprep.com/developer/docs/#Historical-Forex-Price) for more details.\\
See [Historical-Commodities-Quote](https://site.financialmodelingprep.com/developer/docs/#Historical-commodities-prices) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the 15m historical price quote for AAPL
data = historical_price_quote(fmp, "AAPL", frequency = TIME_FREQUENCIES.minutes15)

# get the 4hr historical price quote for BTCUSD
data = historical_price_quote(fmp, "BTCUSD", frequency = TIME_FREQUENCIES.hours4)

# get the daily historical price quote time series for EURUSD
data = historical_price_quote(fmp, "EURUSD", frequency = TIME_FREQUENCIES.daily, timeseries = 5)
```
"""
function historical_price_quote(fmp::FMP, symbol::String; frequency::String = TIME_FREQUENCIES.daily, params...)
    if !(frequency in TIME_FREQUENCIES)
        error("Invalid frequency value. Allowed values are $(TIME_FREQUENCIES). Modify TIME_FREQUENCIES to override behavior.")
    end
    if frequency == TIME_FREQUENCIES.daily
        endpoint = "historical-price-full/$(symbol)"
    else
        endpoint = "historical-chart/$(frequency)/$(symbol)"
    end
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response, :historical)
    return data
end