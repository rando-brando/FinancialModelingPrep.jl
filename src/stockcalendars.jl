"""
    earnings_calendar(fmp, params...)
    earnings_calendar(fmp, symbol, params...)

Returns a list of earnings calendar events. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- params...: Additional keyword query params.

See [Earnings-Calendar](https://site.financialmodelingprep.com/developer/docs/#Earnings-Calendar) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the earnings calendar events for Q1 2022
data = earnings_calendar(fmp, from = "2022-01-01", to = "2022-03-31")

# get the last 50 earnings calendar events for AAPL
data = earnings_calendar(fmp, "AAPL", limit = 50)
```
"""
function earnings_calendar(fmp::FMP; params...)::Vector{Any}
    endpoint = "earning_calendar"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

function earnings_calendar(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "historical/earning_calendar/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint, params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    earnings_calendar_confirmed(fmp, params...)

Returns a list of the confirmed earnings calendar events. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- params...: Additional keyword query params.

See [Earnings-Calendar-Confirmed](https://site.financialmodelingprep.com/developer/docs/#Earnings-Calendar-Confirmed) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the confirmed earnings calendar events for Q1 2022
data = earnings_calendar_confirmed(fmp, from = "2022-01-01", to = "2022-03-31")
```
"""
function earnings_calendar_confirmed(fmp::FMP; params...)::Vector{Any}
    endpoint = "earning-calendar-confirmed"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    ipo_calendar(fmp, params...)

Returns a list of the ipo calendar events. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- params...: Additional keyword query params.

See [IPO-Calendar](https://site.financialmodelingprep.com/developer/docs/#IPO-Calendar) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the ipo calendar events for Q1 2022
data = ipo_calendar(fmp, from = "2022-01-01", to = "2022-03-31")
```
"""
function ipo_calendar(fmp::FMP; params...)::Vector{Any}
    endpoint = "ipo_calendar"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    ipo_calendar_prospectus(fmp, params...)

Returns a list of the ipo calendar events with prospectus. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- params...: Additional keyword query params.

See [IPO-Calendar-with-Prospectus](https://site.financialmodelingprep.com/developer/docs/#IPO-calendar-with-prospectus) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the ipo calendar events with prospectus for Q1 2022
data = ipo_calendar_prospectus(fmp, from = "2022-01-01", to = "2022-03-31")
```
"""
function ipo_calendar_prospectus(fmp::FMP; params...)::Vector{Any}
    endpoint = "ipo-calendar-prospectus"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    ipo_calendar_confirmed(fmp, params...)

Returns a list of the confirmed ipo calendar events. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- params...: Additional keyword query params.

See [IPO-Calendar-Confirmed](https://site.financialmodelingprep.com/developer/docs/#IPO-calendar-Confirmed) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the confirmed ipo calendar events for Q1 2022
data = ipo_calendar_confirmed(fmp, from = "2022-01-01", to = "2022-03-31")
```
"""
function ipo_calendar_confirmed(fmp::FMP; params...)::Vector{Any}
    endpoint = "ipo-calendar-confirmed"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    stock_split_calendar(fmp, params...)

Returns a list of stock split calendar events. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- params...: Additional keyword query params.

See [Stock-Split-Calendar](https://site.financialmodelingprep.com/developer/docs/#Stock-Split-Calendar) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the stock split calendar events for Q1 2022
data = stock_split_calendar(fmp, from = "2022-01-01", to = "2022-03-31")
```
"""
function stock_split_calendar(fmp::FMP; params...)::Vector{Any}
    endpoint = "stock_split_calendar"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    dividend_calendar(fmp, params...)

Returns a list of dividend calendar events. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- params...: Additional keyword query params.

See [Dividend-Calendar](https://site.financialmodelingprep.com/developer/docs/#Dividend-Calendar) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the dividend calendar events for Q1 2022
data = dividend_calendar(fmp, from = "2022-01-01", to = "2022-03-31")
```
"""
function dividend_calendar(fmp::FMP; params...)::Vector{Any}
    endpoint = "stock_dividend_calendar"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    historical_dividends(fmp, symbol)

Returns a list historical dividends for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.

See [Historical-Dividends](https://site.financialmodelingprep.com/developer/docs/#Historical-Dividends) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last historical dividends for AAPL
data = historical_dividends(fmp, "AAPL")
```
"""
function historical_dividends(fmp::FMP, symbol::String)::Vector{Any}
    endpoint = "historical-price-full/stock-dividends/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    economic_calendar(fmp, params...)

Returns a list of economic calendar events. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- params...: Additional keyword query params.

See [Economic-Calendar](https://site.financialmodelingprep.com/developer/docs/#Economic-Calendar) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the economic calendar events for Q1 2022
data = economic_calendar(fmp, from = "2022-01-01", to = "2022-03-31")
```
"""
function economic_calendar(fmp::FMP; params...)::Vector{Any}
    endpoint = "economic_calendar"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end