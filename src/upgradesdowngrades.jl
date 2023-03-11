"""
    upgrades_and_downgrades(fmp, symbol)

Returns upgrades and downgrades for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.

See [Upgrades-&-Downgrades]\
(https://site.financialmodelingprep.com/developer/docs/#Upgrades-&-Downgrades) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the upgrades and downgrades for AAPL
data = upgrades_and_downgrades(fmp, AAPL)
```
"""
function upgrades_and_downgrades(fmp::FMP; symbol::String)
    endpoint = "upgrades-downgrades"
    url, query = Client.make_url_v4(fmp, endpoint; symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
upgrades_and_downgrades(fmp::FMP, symbol::String) = upgrades_and_downgrades(fmp; symbol)

"""
    upgrades_and_downgrades_feed(fmp, params...)

Returns upgrades and downgrades from the rss feed.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [Upgrades-&-Downgrades-RSS-Feed]\
(https://site.financialmodelingprep.com/developer/docs/#Upgrades-&-Downgrades-RSS-Feed) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the first page of upgrades and downgrades
data = upgrades_and_downgrades_feed(fmp, page = 0)
```
"""
function upgrades_and_downgrades_feed(fmp::FMP; params...)
    endpoint = "upgrades-downgrades-rss-feed"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    upgrades_and_downgrades_consensus(fmp, symbol)

Returns consensus upgrades and downgrades for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.

See [Upgrades-&-Downgrades-Consensus]\
(https://site.financialmodelingprep.com/developer/docs/#Upgrades-&-Downgrades-Consensus) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the consensus of upgrades and downgrades for AAPL
data = upgrades_and_downgrades_consensus(fmp, AAPL)
```
"""
function upgrades_and_downgrades_consensus(fmp::FMP; symbol::String)
    endpoint = "upgrades-downgrades-consensus"
    url, query = Client.make_url_v4(fmp, endpoint; symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
upgrades_and_downgrades_consensus(fmp::FMP, symbol::String) = upgrades_and_downgrades_consensus(fmp; symbol)

"""
    upgrades_and_downgrades_by_company(fmp, company)

Returns upgrades and downgrades for the specified company.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.

See [Upgrades-&-Downgrades-By-Company]\
(https://site.financialmodelingprep.com/developer/docs/#Upgrades-&-Downgrades-By-Company) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the consensus of upgrades and downgrades for Barclays
data = upgrades_and_downgrades_by_company(fmp, company = "Barclays")
```
"""
function upgrades_and_downgrades_by_company(fmp::FMP; company::String)
    endpoint = "upgrades-downgrades-grading-company"
    url, query = Client.make_url_v4(fmp, endpoint; company)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
upgrades_and_downgrades_by_company(fmp::FMP, company::String) = upgrades_and_downgrades_by_company(fmp; company)
