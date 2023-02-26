"""
    financial_ratios(fmp, symbol, params...)

Returns a vector of common financial ratios for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- params...: Additional keyword query params.

See [Financial-Ratios](https://site.financialmodelingprep.com/developer/docs/#Company-Financial-Ratios) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get financial ratios for AAPL in the last 30 quarters
data = financial_ratios(fmp, "AAPL", period = "quarter", limit = 30)
```
"""
function financial_ratios(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "ratios/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    financial_scores(fmp, symbol)

Returns a vector of common financial scores for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.

See [Financial-Scores](https://site.financialmodelingprep.com/developer/docs/#Stock-Financial-scores) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get financial scores for AAPL
data = financial_scores(fmp, "AAPL")
```
"""
function financial_scores(fmp::FMP, symbol::String)::Vector{Any}
    endpoint = "score"
    url, query = Client.make_url_v4(fmp, endpoint, symbol = symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    owners_earnings(fmp, symbol)

Returns a vector of owners earnings for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.

See [Owners-Earnings](https://site.financialmodelingprep.com/developer/docs/#Stock-Financial-scores) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get ownings earnings for AAPL
data = owners_earnings(fmp, "AAPL")
```
"""
function owners_earnings(fmp::FMP, symbol::String)::Vector{Any}
    endpoint = "owners-earnings" 
    url, query = Client.make_url_v4(fmp, endpoint, symbol = symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    enterprise_values(fmp, symbol, params...)

Returns a vector of enterprise value components for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- params...: Additional keyword query params.

See [Enterprise-Value](https://site.financialmodelingprep.com/developer/docs/#Company-Enterprise-Value) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get enterprise values for AAPL in the last 30 quarters
data = enterprise_values(fmp, "AAPL", period = "quarter", limit = 30)
```
"""
function enterprise_values(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "enterprise-values/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    income_statements_growth(fmp, symbol, params...)

Returns a vector of income statements growth for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- params...: Additional keyword query params.

See [Income-Statements-Growth](https://site.financialmodelingprep.com/developer/docs/#Financial-Statements-Growth) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 5 annual statements growth for AAPL
data = income_statements_growth(fmp, "AAPL", limit = 5)
```
"""
function income_statements_growth(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "income-statement-growth/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data 
end

"""
    balance_sheet_statements_growth(fmp, symbol, params...)

Returns a vector of balance sheet statements growth for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- params...: Additional keyword query params.

See [Balance-Sheet-Statements-Growth](https://site.financialmodelingprep.com/developer/docs/#Financial-Statements-Growth) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 5 annual statements growth for AAPL
data = balance_sheet_statements_growth(fmp, "AAPL", limit = 5)
```
"""
function balance_sheet_statements_growth(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "balance_sheet_statement_growth/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data 
end

"""
    cash_flow_statements_growth(fmp, symbol, params...)

Returns a vector of cash flow statements growth for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- params...: Additional keyword query params.

See [Cash-Flow-Statements-Growth](https://site.financialmodelingprep.com/developer/docs/#Financial-Statements-Growth) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 5 annual statements growth for AAPL
data = cash_flow_statements_growth(fmp, "AAPL", limit = 5)
```
"""
function cash_flow_statements_growth(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "cash-flow-statement-growth/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data 
end

"""
    financial_statements_growth(fmp, symbol, params...)

Returns a vector of financial statements growth for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- params...: Additional keyword query params.

See [Financial-Statements-Growth](https://site.financialmodelingprep.com/developer/docs/#Company-Financial-Growth) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 5 annual statements growth for AAPL
data = financial_statements_growth(fmp, "AAPL", limit = 5)
```
"""
function financial_statements_growth(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "financial-growth/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data 
end

"""
    key_metrics(fmp, symbol, period, params...)

Returns a vector of key metrics for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- period::String: A `REPORTING_PERIODS` option.
- params...: Additional keyword query params.

See [Key-Metrics](https://site.financialmodelingprep.com/developer/docs/#Company-Key-Metrics) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get key metrics for AAPL in the last 30 years by ttm
data = key_metrics(fmp, "AAPL", period = "ttm", limit = 30)
```
"""
function key_metrics(fmp::FMP, symbol::String; period::String = REPORTING_PERIODS.annual, params...)::Vector{Any}
    if !(period in REPORTING_PERIODS)
        error("Invalid period value. Allowed values are $(REPORTING_PERIODS). Modify REPORTING_PERIODS to override behavior.")
    end
    endpoint = "key-metrics" * ("-$(period)" ^ (period == REPORTING_PERIODS.ttm)) * "/$(symbol)"
    if period == REPORTING_PERIODS.quarter
        url, query = Client.make_url_v3(fmp, endpoint; period = period, params...)
    else
        url, query = Client.make_url_v3(fmp, endpoint; params...)
    end
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    company_rating(fmp, symbol)

Returns a vector of ratings for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.

See [Company-Rating](https://site.financialmodelingprep.com/developer/docs/#Company-Rating) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the company rating for AAPL 
data = company_rating(fmp, "AAPL")
```
"""
function company_rating(fmp::FMP, symbol::String)::Vector{Any}
    endpoint = "rating/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data 
end

"""
    historical_ratings(fmp, symbol, params...)

Returns a vector of ratings for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- params...: Additional keyword query params.

See [Historical-Ratings](https://site.financialmodelingprep.com/developer/docs/#Company-Rating) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 100 ratings for AAPL 
data = historical_ratings(fmp, "AAPL", limit = 100)
```
"""
function historical_ratings(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "historical-rating/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    discounted_cash_flows(fmp, symbol, with_wacc = false)

Returns a vector of discounted cash flows for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- with_wacc::Bool: Return the version with WACC.

See [Discounted-Cash-Flow](https://site.financialmodelingprep.com/developer/docs/#Company-Discounted-cash-flow-value) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the latest dcf for AAPL including WACC
data = discounted_cash_flows(fmp, "AAPL", with_wacc = true)
```
"""
function discounted_cash_flows(fmp::FMP, symbol::String; with_wacc::Bool = false)::Vector{Any}
    if with_wacc
        endpoint = "advanced_discounted_cash_flow"
        url, query = Client.make_url_v4(fmp, endpoint; symbol = symbol, params...)
    else
        endpoint = "discounted-cash-flow/$(symbol)"
        url, query = Client.make_url_v3(fmp, endpoint; params...)
    end
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data 
end

"""
    historical_discounted_cash_flows(fmp, symbol, params...)

Returns a vector of historical discounted cash flows for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- params...: Additional keyword query params.

See [Historical-Discounted-Cash-Flow](https://site.financialmodelingprep.com/developer/docs/#Company-Discounted-cash-flow-value) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the dcf for in the last 30 quarters AAPL
data = historical_discounted_cash_flows(fmp, "AAPL", period = "quarter", limit = 30)
```
"""
function historical_discounted_cash_flows(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "historical-discounted-cash-flow/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data 
end