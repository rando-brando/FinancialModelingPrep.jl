"""
    price_targets(fmp, symbol)

Returns a JSON table of price targets for the specified symbol.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.

See [Price-Target]\
(https://site.financialmodelingprep.com/developer/docs/#Price-Target) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the price targets for AAPL
data = price_targets(fmp, "AAPL")
```
"""
function price_targets(fmp::FMP, symbol::String)
    endpoint = "price-target"
    url, query = Client.make_url_v4(fmp, endpoint, symbol = symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    price_targets_by_analyst(fmp, name)

Returns a JSON table of price targets  from the specified name.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- name::String: An analyst name.

See [Price-Target-by-Analyst-Name]\
(https://site.financialmodelingprep.com/developer/docs/#Price-Target-By-Analyst-Name) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the price targets from Tim Anderson
data = price_targets_by_analyst(fmp, "Tim%20Anderson")
```
"""
function price_targets_by_analyst(fmp::FMP, name::String)
    endpoint = "price-target-analyst-name"
    url, query = Client.make_url_v4(fmp, endpoint, name = name)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    price_targets_by_company(fmp, company)

Returns a JSON table of price targets from the specified company.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- company::String: An analyst company name.

See [Price-Target-by-Analyst-Company]\
(https://site.financialmodelingprep.com/developer/docs/#Price-Target-by-Analyst-Company) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the price targets from Barclays
data = price_targets_by_company(fmp, "Barclays")
```
"""
function price_targets_by_company(fmp::FMP, company::String)
    endpoint = "price-target-analyst-company"
    url, query = Client.make_url_v4(fmp, endpoint, company = company)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    price_targets_summary(fmp, symbol)

Returns a JSON table of the price targets summary for the specified symbol.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.

See [Price-Target-Summary]\
(https://site.financialmodelingprep.com/developer/docs/#Price-target-Summary) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the price targets summary for AAPL
data = price_targets_summary(fmp, "AAPL")
```
"""
function price_targets_summary(fmp::FMP, symbol::String)
    endpoint = "price-target-summary"
    url, query = Client.make_url_v4(fmp, endpoint, symbol = symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    price_targets_consensus(fmp, symbol)

Returns a JSON table of the price targets consensus for the specified symbol.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.

See [Price-Target-Consensus]\
(https://site.financialmodelingprep.com/developer/docs/#Price-Target-Consensus) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the price targets consensus for AAPL
data = price_target_consensus(fmp, "AAPL")
```
"""
function price_targets_consensus(fmp::FMP, symbol::String)
    endpoint = "price-target-consensus"
    url, query = Client.make_url_v4(fmp, endpoint, symbol = symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    price_targets_feed(fmp, params...)

Returns a JSON table containing the price targets feed results.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- params...: Additional keyword query params.

See [Price-Target-RSS-Feed]\
(https://site.financialmodelingprep.com/developer/docs/#Price-Target-RSS-Feed) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the first page from the price target feed
data = price_targets_feed(fmp, page = 0)
```
"""
function price_targets_feed(fmp::FMP; params...)
    endpoint = "price-target-rss-feed"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
