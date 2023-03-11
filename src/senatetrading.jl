"""
    senate_trades(fmp, symbol)

Returns senate trades for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.

See [Senate-Trading]\
(https://site.financialmodelingprep.com/developer/docs/#Senate-trading) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get senate trades for AAPL
data = senate_trades(fmp, "AAPL")
```
"""
function senate_trades(fmp::FMP; symbol::String)
    endpoint = "senate-trading"
    url, query = Client.make_url_v4(fmp, endpoint; symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
senate_trades(fmp::FMP, symbol::String) = senate_trades(fmp; symbol)

"""
    senate_trades_feed(fmp, params...)

Returns senate trades from the RSS feed.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [Senate-Trading-RSS-Feed]\
(https://site.financialmodelingprep.com/developer/docs/#Senate-trading) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the first page of senate trades from the RSS feed
data = senate_trades_feed(fmp, page = 0)
```
"""
function senate_trades_feed(fmp::FMP; params...)
    endpoint = "senate-trading-rss-feed"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    senate_disclosures(fmp, symbol)

Returns senate disclosures for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.

See [Senate-Disclosure]\
(https://site.financialmodelingprep.com/developer/docs/#Senate-disclosure) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get senate disclosures for AAPL
data = senate_disclosures(fmp, "AAPL")
```
"""
function senate_disclosures(fmp::FMP; symbol::String)
    endpoint = "senate-disclosure"
    url, query = Client.make_url_v4(fmp, endpoint; symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
senate_disclosures(fmp::FMP, symbol::String) = senate_disclosures(fmp; symbol)

"""
    senate_disclosure_feed(fmp, params...)

Returns senate disclosures from the RSS feed.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [Senate-Disclosure-RSS-Feed]\
(https://site.financialmodelingprep.com/developer/docs/#Senate-disclosure) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the first page of senate disclosures from the RSS feed
data = senate_disclosure_feed(fmp, page = 0)
```
"""
function senate_disclosure_feed(fmp::FMP; params...)
    endpoint = "senate-disclosure-rss-feed"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
