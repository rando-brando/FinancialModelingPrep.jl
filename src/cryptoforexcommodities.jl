"""
    available_crytocurrencies(fmp)

Returns a JSON table of all available cryptocurrencies in the API.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.

See [Cryptocurrencies-List]\
(https://site.financialmodelingprep.com/developer/docs/#Historical-Cryptocurrencies-Price) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get a list of all available cryptocurrencies
data = available_crytocurrencies(fmp)
```
"""
function available_crytocurrencies(fmp::FMP)
    endpoint = "available-cryptocurrencies"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    available_forex_pairs(fmp)

Returns a JSON table of all available forex pairs in the API.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.

See [Forex-Pairs-List]\
(https://site.financialmodelingprep.com/developer/docs/#Forex-(FX)) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get a list of all available forex pairs
data = available_forex_pairs(fmp)
```
"""
function available_forex_pairs(fmp::FMP)
    endpoint = "available-forex-currency-pairs"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    exchange_rates(fmp)
    exchange_rates(fmp, symbol)

Returns the commodity quote for the specified symbol(s).

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A commodity symbol.

See [Crypto-Quote]\
(https://site.financialmodelingprep.com/developer/docs/#Cryptocurrencies) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get all fx rates
data = commodity_quote(fmp)

# get the fx rates for EURUSD
data = commodity_quote(fmp, "EURUSD")
```
"""
function exchange_rates(fmp::FMP)
    endpoint = "fx"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

function exchange_rates(fmp::FMP; symbol::String)
    endpoint = "fx/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
exchange_rates(fmp::FMP, symbol::String) = exchange_rates(fmp; symbol)

"""
    available_commodities(fmp)

Returns a JSON table of all available commodities in the API.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.

See [Commodities-List]\
(https://site.financialmodelingprep.com/developer/docs/#Most-of-the-Major-Commodities-(Gold,-Silver,-Oil)) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get a list of all available commodities
data = available_commodities(fmp)
```
"""
function available_commodities(fmp::FMP)
    endpoint = "available-commodities"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
