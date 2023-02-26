"""
    social_sentiment(fmp, symbol, params...)
    social_sentiment(fmp, type = "trending", params...)

Returns a vector with the social sentiment type for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- type::String: One of "trending", or "change".
- params...: Additional keyword query params.

See [Social-Sentiment](https://site.financialmodelingprep.com/developer/docs/#Social-Sentiment) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the first page of historical social sentiment for AAPL
data = social_sentiment(fmp, "AAPL", page = 0)

# get all trending social sentiment from stocktwits with a bullish bias
data = social_sentiment(fmp, type = "trending", type = "bullish", source = "stocktwits")
```
"""
function social_sentiment(fmp::FMP; type::String = "trending", params...)::Vector{Any}
    endpoint = "social-sentiment/$(type)"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

function social_sentiment(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "historical/social-sentiment"
    url, query = Client.make_url_v4(fmp, endpoint; symbol = symbol, params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    stock_grades(fmp, symbol, params...)

Returns a vector of stock grades for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- params...: Additional keyword query params.

See [Stock-Grade](https://site.financialmodelingprep.com/developer/docs/#Stock-Grade) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 100 stock grades for AAPL
data = stock_grades(fmp, "AAPL", limit = 100)
```  
"""
function stock_grades(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "grade/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    earnings_surprises(fmp, symbol)

Returns a vector of earnings suprises for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.

See [Earnings-Surprises](https://site.financialmodelingprep.com/developer/docs/#Earnings-Surprises) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the latest earnings surprises for AAPL
data = earnings_surprises(fmp, "AAPL")
```
"""
function earnings_surprises(fmp::FMP, symbol::String)::Vector{Any}
    endpoint = "earnings-surprises/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    analyst_estimates(fmp, symbol, params...)

Returns a vector of analyst estimates for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- params...: Additional keyword query params.

See [Analyst-Estimates](https://site.financialmodelingprep.com/developer/docs/#Analyst-Estimates) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 4 quarters of analyst estimates for AAPL
data = analyst_estimates(fmp, "AAPL", period = "quarter", limit = 4)
```  
"""
function analyst_estimates(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "analyst-estimates/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    mergers_and_acquisitions_feed(fmp, params...)

Returns a vector containing the mergers and acquisitions feed results. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- params...: Additional keyword query params.

See [Mergers-and-Acquisitions](https://site.financialmodelingprep.com/developer/docs/#MERGER-AND-ACQUISITION) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the first page of the mergers and acquisitions rss feed
data = mergers_and_acquisitions_feed(fmp, page = 0)
```
"""
function mergers_and_acquisitions_feed(fmp::FMP; params...)::Vector{Any}
    endpoint = "mergers-acquisitions-rss-feed"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    mergers_and_acquisitions_search(fmp, params...)

Returns a vector containing mergers and acquisitions search results. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- params...: Additional keyword query params.

See [Mergers-and-Acquisitions](https://site.financialmodelingprep.com/developer/docs/#MERGER-AND-ACQUISITION) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# search for mergers and acquisitions
data = mergers_and_acquisitions_search(fmp, name = "Syros")
```
"""
function mergers_and_acquisitions_search(fmp::FMP; params...)::Vector{Any}
    endpoint = "mergers-acquisitions/search"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end