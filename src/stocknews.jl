"""
    fmp_articles(fmp, params...)

Returns a JSON object of fmp articles.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [FMP-Articles]\
(https://site.financialmodelingprep.com/developer/docs/#FMP-Articles) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get fmp articles from page 0 and size 5
data = fmp_articles(fmp, page = 0, size = 5)
```
"""
function fmp_articles(fmp::FMP; params...)
    endpoint = "fmp/articles"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_object(response)
    return data
end

"""
    stock_news(fmp, params...)

Returns stock news articles.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [Stock-News]\
(https://site.financialmodelingprep.com/developer/docs/#Stock-News) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the latest 50 stock news for AAPL and FB
data = stock_news(fmp, tickers = "AAPL,FB", limit = 50)
```
"""
function stock_news(fmp::FMP; params...)
    endpoint = "stock_news"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    stock_news_sentiment_feed(fmp, params...)

Returns stock news article sentiment.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [Stock-Sentiment]\
(https://site.financialmodelingprep.com/developer/docs/#Stock-News) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the first page of stock news article sentiment
data = stock_news_sentiment_feed(fmp, page = 0)
```
"""
function stock_news_sentiment_feed(fmp::FMP; params...)
    endpoint = "stock-news-setniments-rss-feed"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    crypto_news(fmp, params...)

Returns crypto news articles.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [Crypto-News]\
(https://site.financialmodelingprep.com/developer/docs/#Crypto-news) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the first page of news for BTCUSD
data = crypto_news(fmp, symbol = "BTCUSD", page = 0)
```
"""
function crypto_news(fmp::FMP; params...)
    endpoint = "crypto_news"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    forex_news(fmp, params...)

Returns forex news articles.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [Forex-News]\
(https://site.financialmodelingprep.com/developer/docs/#Forex-news) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the first page of news for EURUSD
data = forex_news(fmp, symbol = "EURUSD", page = 0)
```
"""
function forex_news(fmp::FMP; params...)
    endpoint = "forex_news"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    general_news(fmp, params...)

Returns general news articles.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [General-News]\
(https://site.financialmodelingprep.com/developer/docs/#General-news) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the first page of general news
data = general_news(fmp, page = 0)
```
"""
function general_news(fmp::FMP; params...)
    endpoint = "general_news"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    press_releases(fmp, symbol, params...)

Returns stock press releases.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `params...`: Additional keyword query params.

See [Press-Releases]\
(https://site.financialmodelingprep.com/developer/docs/#Press-Releases) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get first page of press releases from AAPL
data = press_releases(fmp, symbol = "AAPL", page = 0)
```
"""
function press_releases(fmp::FMP; symbol::String, params...)
    endpoint = "press-releases/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
press_releases(fmp::FMP, symbol::String; params...) = press_releases(fmp; symbol, params...)
