"""
    earnings_calendar(fmp, params...)

Returns earnings calendar events.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [Earnings-Calendar]\
(https://site.financialmodelingprep.com/developer/docs/#Earnings-Calendar) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the earnings calendar events for Q1 2022
data = earnings_calendar(fmp, from = "2022-01-01", to = "2022-03-31")
```
"""
function earnings_calendar(fmp::FMP; params...)
    endpoint = "earning_calendar"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    historical_earnings_calendar(fmp, symbol, params...)

Returns historical earnings calendar events.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `params...`: Additional keyword query params.

See [Earnings-Calendar]\
(https://site.financialmodelingprep.com/developer/docs/#Earnings-Calendar) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 50 earnings calendar events for AAPL
data = historical_earnings_calendar(fmp, "AAPL", limit = 50)
```
"""
function historical_earnings_calendar(fmp::FMP; symbol::String, params...)
    endpoint = "historical/earning_calendar/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
historical_earnings_calendar(fmp::FMP, symbol::String; params...) = historical_earnings_calendar(fmp; symbol, params...)

"""
    earnings_calendar_confirmed(fmp, params...)

Returns the confirmed earnings calendar events.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [Earnings-Calendar-Confirmed]\
(https://site.financialmodelingprep.com/developer/docs/#Earnings-Calendar-Confirmed) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the confirmed earnings calendar events for Q1 2022
data = earnings_calendar_confirmed(fmp, from = "2022-01-01", to = "2022-03-31")
```
"""
function earnings_calendar_confirmed(fmp::FMP; params...)
    endpoint = "earning-calendar-confirmed"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    ipo_calendar(fmp, params...)

Returns the ipo calendar events.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [IPO-Calendar]\
(https://site.financialmodelingprep.com/developer/docs/#IPO-Calendar) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the ipo calendar events for Q1 2022
data = ipo_calendar(fmp, from = "2022-01-01", to = "2022-03-31")
```
"""
function ipo_calendar(fmp::FMP; params...)
    endpoint = "ipo_calendar"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    ipo_calendar_prospectus(fmp, params...)

Returns the ipo calendar events with prospectus.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [IPO-Calendar-with-Prospectus]\
(https://site.financialmodelingprep.com/developer/docs/#IPO-calendar-with-prospectus) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the ipo calendar events with prospectus for Q1 2022
data = ipo_calendar_prospectus(fmp, from = "2022-01-01", to = "2022-03-31")
```
"""
function ipo_calendar_prospectus(fmp::FMP; params...)
    endpoint = "ipo-calendar-prospectus"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    ipo_calendar_confirmed(fmp, params...)

Returns the confirmed ipo calendar events.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [IPO-Calendar-Confirmed]\
(https://site.financialmodelingprep.com/developer/docs/#IPO-calendar-Confirmed) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the confirmed ipo calendar events for Q1 2022
data = ipo_calendar_confirmed(fmp, from = "2022-01-01", to = "2022-03-31")
```
"""
function ipo_calendar_confirmed(fmp::FMP; params...)
    endpoint = "ipo-calendar-confirmed"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    stock_split_calendar(fmp, params...)

Returns stock split calendar events.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [Stock-Split-Calendar]\
(https://site.financialmodelingprep.com/developer/docs/#Stock-Split-Calendar) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the stock split calendar events for Q1 2022
data = stock_split_calendar(fmp, from = "2022-01-01", to = "2022-03-31")
```
"""
function stock_split_calendar(fmp::FMP; params...)
    endpoint = "stock_split_calendar"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    dividend_calendar(fmp, params...)

Returns dividend calendar events.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [Dividend-Calendar]\
(https://site.financialmodelingprep.com/developer/docs/#Dividend-Calendar) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the dividend calendar events for Q1 2022
data = dividend_calendar(fmp, from = "2022-01-01", to = "2022-03-31")
```
"""
function dividend_calendar(fmp::FMP; params...)
    endpoint = "stock_dividend_calendar"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    historical_dividends(fmp, symbol)

Returns a JSON table historical dividends for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.

See [Historical-Dividends]\
(https://site.financialmodelingprep.com/developer/docs/#Historical-Dividends) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last historical dividends for AAPL
data = historical_dividends(fmp, "AAPL")
```
"""
function historical_dividends(fmp::FMP; symbol::String)
    endpoint = "historical-price-full/stock_dividend/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response, :historical)
    return data
end
historical_dividends(fmp::FMP, symbol::String) = historical_dividends(fmp; symbol)

"""
    economic_calendar(fmp, params...)

Returns economic calendar events.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [Economic-Calendar]\
(https://site.financialmodelingprep.com/developer/docs/#Economic-Calendar) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the economic calendar events for Q1 2022
data = economic_calendar(fmp, from = "2022-01-01", to = "2022-03-31")
```
"""
function economic_calendar(fmp::FMP; params...)
    endpoint = "economic_calendar"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
