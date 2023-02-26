"""
    upgrades_and_downgrades(fmp, symbol)

Returns a vector of upgrades and downgrades for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.

See [Upgrades-&-Downgrades](https://site.financialmodelingprep.com/developer/docs/#Upgrades-&-Downgrades) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the upgrades and downgrades for AAPL
data = upgrades_and_downgrades(fmp, AAPL)
```
"""
function upgrades_and_downgrades(fmp::FMP, symbol::String)::Vector{Any}
    endpoint = "upgrades-downgrades"
    url, query = Client.make_url_v4(fmp, endpoint, symbol = symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    upgrades_and_downgrades_feed(fmp, params...)

Returns a vector of upgrades and downgrades from the rss feed. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- params...: Additional keyword query params.

See [Upgrades-&-Downgrades-RSS-Feed](https://site.financialmodelingprep.com/developer/docs/#Upgrades-&-Downgrades-RSS-Feed) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the first page of upgrades and downgrades
data = upgrades_and_downgrades_feed(fmp, page = 0)
```
"""
function upgrades_and_downgrades_feed(fmp::FMP; params...)::Vector{Any}
    endpoint = "upgrades-downgrades-rss-feed"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    upgrades_and_downgrades_consensus(fmp, symbol)

Returns a vector of consensus upgrades and downgrades for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.

See [Upgrades-&-Downgrades-Consensus](https://site.financialmodelingprep.com/developer/docs/#Upgrades-&-Downgrades-Consensus) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the consensus of upgrades and downgrades for AAPL
data = upgrades_and_downgrades_consensus(fmp, AAPL)
```
"""
function upgrades_and_downgrades_consensus(fmp::FMP, symbol::String)::Vector{Any}
    endpoint = "upgrades-downgrades-consensus"
    url, query = Client.make_url_v4(fmp, endpoint, symbol = symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    upgrades_and_downgrades_by_company(fmp, company)

Returns a vector of upgrades and downgrades for the specified company. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.

See [Upgrades-&-Downgrades-By-Company](https://site.financialmodelingprep.com/developer/docs/#Upgrades-&-Downgrades-By-Company) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the consensus of upgrades and downgrades for Barclays
data = upgrades_and_downgrades_by_company(fmp, "Barclays")
```
"""
function upgrades_and_downgrades_by_company(fmp::FMP, company::String)::Vector{Any}
    endpoint = "upgrades-downgrades-grading-company"
    url, query = Client.make_url_v4(fmp, endpoint, company = company)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end