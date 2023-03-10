"""
    historical_social_sentiment(fmp, symbol, params...)

Returns a JSON table with the historical social sentiment for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `params...`: Additional keyword query params.

See [Social-Sentiment]\
(https://site.financialmodelingprep.com/developer/docs/#Social-Sentiment) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the first page of historical social sentiment for AAPL
data = historical_social_sentiment(fmp, "AAPL", page = 0)
```
"""
function historical_social_sentiment(fmp::FMP; symbol::String, params...)
    endpoint = "historical/social-sentiment"
    url, query = Client.make_url_v4(fmp, endpoint; symbol, params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
historical_social_sentiment(fmp::FMP, symbol::String; params...) = historical_social_sentiment(fmp; symbol, params...)

"""
    social_sentiment_trends(fmp, type, source)

Returns a JSON table with the social sentiment trends for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `type::String:` One of "bullish" or "bearish".
- `source::String:` One of "twitter" or "stocktwits".

See [Social-Sentiment]\
(https://site.financialmodelingprep.com/developer/docs/#Social-Sentiment) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get all social sentiment trends
data = social_sentiment_trends(fmp)

# get all social sentiment trends from stocktwits with a bearish bias
data = social_sentiment_trends(fmp, type = "bearish", source = "stocktwits")
```
"""
function social_sentiment_trends(fmp::FMP; type = nothing, source = nothing)
    endpoint = "social-sentiment/trending"
    url, query = Client.make_url_v4(fmp, endpoint; type, source)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    social_sentiment_changes(fmp, type, source)

Returns a JSON table with the social sentiment changes for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `type::String:` One of "bullish" or "bearish".
- `source::String:` One of "twitter" or "stocktwits".

See [Social-Sentiment]\
(https://site.financialmodelingprep.com/developer/docs/#Social-Sentiment) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get all social sentiment changes
data = social_sentiment_trends(fmp)

# get all social sentiment changes from stocktwits with a bearish bias
data = social_sentiment_changes(fmp, type = "bearish", source = "stocktwits")
```
"""
function social_sentiment_changes(fmp::FMP; type = nothing, source = nothing)
    endpoint = "social-sentiment/changes"
    url, query = Client.make_url_v4(fmp, endpoint; type, source)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    stock_grades(fmp, symbol, params...)

Returns stock grades for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `params...`: Additional keyword query params.

See [Stock-Grade]\
(https://site.financialmodelingprep.com/developer/docs/#Stock-Grade) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 100 stock grades for AAPL
data = stock_grades(fmp, "AAPL", limit = 100)
```  
"""
function stock_grades(fmp::FMP, symbol::String; params...)
    endpoint = "grade/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    earnings_surprises(fmp, symbol)

Returns earnings suprises for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.

See [Earnings-Surprises]\
(https://site.financialmodelingprep.com/developer/docs/#Earnings-Surprises) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the latest earnings surprises for AAPL
data = earnings_surprises(fmp, "AAPL")
```
"""
function earnings_surprises(fmp::FMP, symbol::String)
    endpoint = "earnings-surprises/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    analyst_estimates(fmp, symbol, params...)

Returns analyst estimates for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `params...`: Additional keyword query params.

See [Analyst-Estimates]\
(https://site.financialmodelingprep.com/developer/docs/#Analyst-Estimates) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 4 quarters of analyst estimates for AAPL
data = analyst_estimates(fmp, "AAPL", period = "quarter", limit = 4)
```  
"""
function analyst_estimates(fmp::FMP, symbol::String; params...)
    endpoint = "analyst-estimates/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    mergers_and_acquisitions_feed(fmp, params...)

Returns a JSON table containing the mergers and acquisitions feed results.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [Mergers-and-Acquisitions-RSS-Feed]\
(https://site.financialmodelingprep.com/developer/docs/#MERGER-AND-ACQUISITION) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the first page of the mergers and acquisitions rss feed
data = mergers_and_acquisitions_feed(fmp, page = 0)
```
"""
function mergers_and_acquisitions_feed(fmp::FMP; params...)
    endpoint = "mergers-acquisitions-rss-feed"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    mergers_and_acquisitions_search(fmp, params...)

Returns a JSON table containing mergers and acquisitions search results.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [Mergers-and-Acquisitions]\
(https://site.financialmodelingprep.com/developer/docs/#MERGER-AND-ACQUISITION) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# search for mergers and acquisitions
data = mergers_and_acquisitions_search(fmp, name = "Syros")
```
"""
function mergers_and_acquisitions_search(fmp::FMP; params...)
    endpoint = "mergers-acquisitions/search"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
