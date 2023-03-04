"""
    insider_trading_types(fmp)

Returns a vector of insider trading transaction types. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.

See [Insider-Trading](https://site.financialmodelingprep.com/developer/docs/#Stock-Insider-Trading) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the types of insider trading events
data = insider_trading_types(fmp)
```
"""
function insider_trading_types(fmp::FMP)::Vector{Any}
    endpoint = "insider-trading-transaction-type"
    url, query = Client.make_url_v4(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    insider_trades(fmp, params...)

Returns a vector of insider trades. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- params...: Additional keyword query params.

See [Insider-Trading](https://site.financialmodelingprep.com/developer/docs/#Stock-Insider-Trading) for more details.

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
function insider_trades(fmp::FMP; params...)::Vector{Any}
    endpoint = "insider-trading"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    insider_trades_feed(fmp, params...)

Returns a vector of insider trades from the RSS feed. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- params...: Additional keyword query params.

See [Insider-Trading-RSS-Feed](https://site.financialmodelingprep.com/developer/docs/#Insider-Trading-RSS-Feed) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the most recent insider trades from the feed
data = insider_trades_feed(fmp, page = 0)
```
"""
function insider_trades_feed(fmp::FMP; params...)::Vector{Any}
    endpoint = "insider-trading-rss-feed"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    cik_list(fmp, params...)

Returns a list of all CIKs matching the specified parameters. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- params...: Additional keyword query params.

See [CIK-Mapper](https://site.financialmodelingprep.com/developer/docs/#Stock-Insider-Trading) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get all CIKs from page 3
data = cik_list(fmp, page = 3)
```
"""
function cik_list(fmp::FMP, params...)::Vector{Any}
    endpoint = "mapper-cik-name"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    cik_from_name(fmp, name)

Returns a list of all CIKs matching the specified name. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- name::String: A name.

See [CIK-Mapper](https://site.financialmodelingprep.com/developer/docs/#Stock-Insider-Trading) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get all CIKs matching the name
data = cik_from_name(fmp, "zuckerberg%20mark")
```
"""
function cik_from_name(fmp::FMP, name::String)::Vector{Any}
    endpoint = "mapper-cik-name"
    url, query = Client.make_url_v4(fmp, endpoint, name = name)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    cik_from_symbol(fmp, symbol)

Returns a list of all CIKs matching the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::symbol: A stock symbol.

See [CIK-Mapper](https://site.financialmodelingprep.com/developer/docs/#Stock-Insider-Trading) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the CIK for AAPL
data = cik_from_symbol(fmp, "AAPL")
```
"""
function cik_from_symbol(fmp::FMP, symbol::String)::Vector{Any}
    endpoint = "mapper-cik-company/$(symbol)"
    url, query = Client.make_url_v4(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    insider_roster(fmp, symbol)

Returns a list with the insider roster for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::symbol: A stock symbol.

See [Insider-Roster](https://site.financialmodelingprep.com/developer/docs/#Stock-Insider-Trading) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the insider roster for AAPL
data = insider_roster(fmp, "AAPL")
```
"""
function insider_roster(fmp::FMP, symbol::String)::Vector{Any}
    endpoint = "insider-roaster"
    url, query = Client.make_url_v3(fmp, endpoint, symbol = symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    insider_roster_statistics(fmp, symbol)

Returns a list of insider roster statistics for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::symbol: A stock symbol.

See [Insider-Roster-Statistics](https://site.financialmodelingprep.com/developer/docs/#Stock-Insider-Trading) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the insider roster statistics for AAPL
data = insider_roster_statistics(fmp, "AAPL")
```
"""
function insider_roster_statistics(fmp::FMP, symbol::String)::Vector{Any}
    endpoint = "insider-roaster-statistics"
    url, query = Client.make_url_v3(fmp, endpoint, symbol = symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    fails_to_deliver(fmp, symbol, params)

Returns a list of fails to deliver for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::symbol: A stock symbol.
- params...: Additional keyword query params.

See [Fails-to-Deliver](https://site.financialmodelingprep.com/developer/docs/#Fail-to-deliver) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the first page of fails to deliver for AAPL
data = fails_to_deliver(fmp, "AAPL", page = 0)
```
"""
function fails_to_deliver(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "fails_to_deliver"
    url, query = Client.make_url_v3(fmp, endpoint; symbol = symbol, params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end