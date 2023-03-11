"""
    insider_trading_types(fmp)

Returns insider trading transaction types.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.

See [Insider-Trading]\
(https://site.financialmodelingprep.com/developer/docs/#Stock-Insider-Trading) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the types of insider trading events
data = insider_trading_types(fmp)
```
"""
function insider_trading_types(fmp::FMP)
    endpoint = "insider-trading-transaction-type"
    url, query = Client.make_url_v4(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    insider_trades(fmp, params...)

Returns insider trades.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [Insider-Trading]\
(https://site.financialmodelingprep.com/developer/docs/#Stock-Insider-Trading) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the most recent insider purchases and sales
data = insider_trades(fmp, transactionType = ["P-Purchase", "S-Sale"], page = 0)

# get the most recent insider trades for AAPL
data = insider_trades(fmp, symbol = "AAPL", page = 0)
```
"""
function insider_trades(fmp::FMP; params...)
    endpoint = "insider-trading"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    insider_trades_feed(fmp, params...)

Returns insider trades from the RSS feed.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [Insider-Trading-RSS-Feed]\
(https://site.financialmodelingprep.com/developer/docs/#Insider-Trading-RSS-Feed) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the most recent insider trades from the feed
data = insider_trades_feed(fmp, page = 0)
```
"""
function insider_trades_feed(fmp::FMP; params...)
    endpoint = "insider-trading-rss-feed"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    insiders_list(fmp, params...)

Returns all insider names and their CIKs matching the specified parameters.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [CIK-Mapper]\
(https://site.financialmodelingprep.com/developer/docs/#Stock-Insider-Trading) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get all insider names and their CIKs from page 3
data = insiders_list(fmp, page = 3)
```
"""
function insiders_list(fmp::FMP; params...)
    endpoint = "mapper-cik-name"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    cik_from_insider(fmp, name)

Returns all CIKs matching the specified insider name.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `name::String`: A name.

See [CIK-Mapper]\
(https://site.financialmodelingprep.com/developer/docs/#Stock-Insider-Trading) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get all CIKs matching "zuckerberg mark"
data = cik_from_insider(fmp, "zuckerberg%20mark")
```
"""
function cik_from_insider(fmp::FMP; name::String)
    endpoint = "mapper-cik-name"
    url, query = Client.make_url_v4(fmp, endpoint; name)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
cik_from_insider(fmp::FMP, name::String) = cik_from_insider(fmp; name)

"""
    cik_from_symbol(fmp, symbol)

Returns all CIKs matching the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.

See [CIK-Mapper]\
(https://site.financialmodelingprep.com/developer/docs/#Stock-Insider-Trading) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the CIK for AAPL
data = cik_from_symbol(fmp, "AAPL")
```
"""
function cik_from_symbol(fmp::FMP; symbol::String)
    endpoint = "mapper-cik-company/$(symbol)"
    url, query = Client.make_url_v4(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
cik_from_symbol(fmp::FMP, symbol::String) = cik_from_symbol(fmp; symbol)

"""
    insider_roster(fmp, symbol)

Returns a JSON table with the insider roster for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.

See [Insider-Roster]\
(https://site.financialmodelingprep.com/developer/docs/#Stock-Insider-Trading) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the insider roster for AAPL
data = insider_roster(fmp, "AAPL")
```
"""
function insider_roster(fmp::FMP; symbol::String)
    endpoint = "insider-roaster"
    url, query = Client.make_url_v4(fmp, endpoint; symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
insider_roster(fmp::FMP, symbol::String) = insider_roster(fmp; symbol)

"""
    insider_roster_statistics(fmp, symbol)

Returns insider roster statistics for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.

See [Insider-Roster-Statistics]\
(https://site.financialmodelingprep.com/developer/docs/#Stock-Insider-Trading) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the insider roster statistics for AAPL
data = insider_roster_statistics(fmp, "AAPL")
```
"""
function insider_roster_statistics(fmp::FMP; symbol::String)
    endpoint = "insider-roaster-statistics"
    url, query = Client.make_url_v4(fmp, endpoint; symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
insider_roster_statistics(fmp::FMP, symbol::String) = insider_roster_statistics(fmp; symbol)

"""
    fails_to_deliver(fmp, symbol, params)

Returns fails to deliver for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `params...`: Additional keyword query params.

See [Fails-to-Deliver]\
(https://site.financialmodelingprep.com/developer/docs/#Fail-to-deliver) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the first page of fails to deliver for AAPL
data = fails_to_deliver(fmp, "AAPL", page = 0)
```
"""
function fails_to_deliver(fmp::FMP; symbol::String, params...)
    endpoint = "fails_to_deliver"
    url, query = Client.make_url_v4(fmp, endpoint; symbol, params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
fails_to_deliver(fmp::FMP, symbol::String; params...) = fails_to_deliver(fmp; symbol, params...)
