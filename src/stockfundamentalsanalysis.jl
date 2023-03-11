"""
    financial_ratios(fmp, symbol, params...)

Returns common financial ratios for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `params...`: Additional keyword query params.

See [Financial-Ratios]\
(https://site.financialmodelingprep.com/developer/docs/#Company-Financial-Ratios) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get financial ratios for AAPL in the last 30 quarters
data = financial_ratios(fmp, "AAPL", period = "quarter", limit = 30)
```
"""
function financial_ratios(fmp::FMP; symbol::String, params...)
    endpoint = "ratios/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
financial_ratios(fmp::FMP, symbol::String; params...) = financial_ratios(fmp; symbol, params...)

"""
    financial_scores(fmp, symbol)

Returns common financial scores for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.

See [Financial-Scores]\
(https://site.financialmodelingprep.com/developer/docs/#Stock-Financial-scores) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get financial scores for AAPL
data = financial_scores(fmp, "AAPL")
```
"""
function financial_scores(fmp::FMP; symbol::String)
    endpoint = "score"
    url, query = Client.make_url_v4(fmp, endpoint; symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
financial_scores(fmp::FMP, symbol::String) = financial_scores(fmp; symbol)

"""
    owners_earnings(fmp, symbol)

Returns owners earnings for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.

See [Owners-Earnings]\
(https://site.financialmodelingprep.com/developer/docs/#Stock-Financial-scores) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get ownings earnings for AAPL
data = owners_earnings(fmp, "AAPL")
```
"""
function owners_earnings(fmp::FMP; symbol::String)
    endpoint = "owners-earnings" 
    url, query = Client.make_url_v4(fmp, endpoint; symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
owners_earnings(fmp::FMP, symbol::String) = owners_earnings(fmp; symbol)

"""
    enterprise_values(fmp, symbol, params...)

Returns enterprise value components for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `params...`: Additional keyword query params.

See [Enterprise-Value]\
(https://site.financialmodelingprep.com/developer/docs/#Company-Enterprise-Value) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get enterprise values for AAPL in the last 30 quarters
data = enterprise_values(fmp, "AAPL", period = "quarter", limit = 30)
```
"""
function enterprise_values(fmp::FMP; symbol::String, params...)
    endpoint = "enterprise-values/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
enterprise_values(fmp::FMP, symbol::String; params...) = enterprise_values(fmp; symbol, params...)

"""
    income_statements_growth(fmp, symbol, params...)

Returns income statements growth for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `params...`: Additional keyword query params.

See [Income-Statements-Growth]\
(https://site.financialmodelingprep.com/developer/docs/#Financial-Statements-Growth) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 5 annual statements growth for AAPL
data = income_statements_growth(fmp, "AAPL", limit = 5)
```
"""
function income_statements_growth(fmp::FMP; symbol::String, params...)
    endpoint = "income-statement-growth/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data 
end
income_statements_growth(fmp::FMP, symbol::String; params...) = income_statements_growth(fmp; symbol, params...)

"""
    balance_sheet_statements_growth(fmp, symbol, params...)

Returns balance sheet statements growth for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `params...`: Additional keyword query params.

See [Balance-Sheet-Statements-Growth]\
(https://site.financialmodelingprep.com/developer/docs/#Financial-Statements-Growth) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 5 annual statements growth for AAPL
data = balance_sheet_statements_growth(fmp, "AAPL", limit = 5)
```
"""
function balance_sheet_statements_growth(fmp::FMP; symbol::String, params...)
    endpoint = "balance-sheet-statement-growth/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data 
end
balance_sheet_statements_growth(fmp::FMP, symbol::String; params...) = balance_sheet_statements_growth(fmp; symbol, params...)

"""
    cash_flow_statements_growth(fmp, symbol, params...)

Returns cash flow statements growth for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `params...`: Additional keyword query params.

See [Cash-Flow-Statements-Growth]\
(https://site.financialmodelingprep.com/developer/docs/#Financial-Statements-Growth) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 5 annual statements growth for AAPL
data = cash_flow_statements_growth(fmp, "AAPL", limit = 5)
```
"""
function cash_flow_statements_growth(fmp::FMP; symbol::String, params...)
    endpoint = "cash-flow-statement-growth/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data 
end
cash_flow_statements_growth(fmp::FMP, symbol::String; params...) = cash_flow_statements_growth(fmp; symbol, params...)

"""
    financial_statements_growth(fmp, symbol, params...)

Returns financial statements growth for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `params...`: Additional keyword query params.

See [Financial-Statements-Growth]\
(https://site.financialmodelingprep.com/developer/docs/#Company-Financial-Growth) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 5 annual statements growth for AAPL
data = financial_statements_growth(fmp, "AAPL", limit = 5)
```
"""
function financial_statements_growth(fmp::FMP; symbol::String, params...)
    endpoint = "financial-growth/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data 
end
financial_statements_growth(fmp::FMP, symbol::String; params...) = financial_statements_growth(fmp; symbol, params...)

"""
    key_metrics(fmp, symbol, period, params...)

Returns key metrics for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `period::String`: A `REPORTING_PERIODS` option.
- `params...`: Additional keyword query params.

See [Key-Metrics]\
(https://site.financialmodelingprep.com/developer/docs/#Company-Key-Metrics) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get key metrics for AAPL in the last 30 years by ttm
data = key_metrics(fmp, "AAPL", period = REPORTING_PERIODS.ttm, limit = 30)
```
"""
function key_metrics(fmp::FMP; symbol::String, period::String = REPORTING_PERIODS.annual, params...)
    if !(period in REPORTING_PERIODS)
        error("Invalid frequency value. Allowed values are $(REPORTING_PERIODS).")
    end
    endpoint = "key-metrics" * ("-$(period)" ^ (period == REPORTING_PERIODS.ttm)) * "/$(symbol)"
    if period == REPORTING_PERIODS.quarter
        url, query = Client.make_url_v3(fmp, endpoint; period, params...)
    else
        url, query = Client.make_url_v3(fmp, endpoint; params...)
    end
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
key_metrics(fmp::FMP, symbol::String, period::String; params...) = key_metrics(fmp; symbol, period, params...)
key_metrics(fmp::FMP, symbol::String; period::String = REPORTING_PERIODS.annual, params...) = key_metrics(fmp; symbol, period, params...)

"""
    company_rating(fmp, symbol)

Returns ratings for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.

See [Company-Rating]\
(https://site.financialmodelingprep.com/developer/docs/#Company-Rating) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the company rating for AAPL 
data = company_rating(fmp, "AAPL")
```
"""
function company_rating(fmp::FMP; symbol::String)
    endpoint = "rating/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data 
end
company_rating(fmp::FMP, symbol::String) = company_rating(fmp; symbol)

"""
    historical_ratings(fmp, symbol, params...)

Returns historical ratings for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `params...`: Additional keyword query params.

See [Historical-Ratings]\
(https://site.financialmodelingprep.com/developer/docs/#Company-Rating) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 100 ratings for AAPL 
data = historical_ratings(fmp, "AAPL", limit = 100)
```
"""
function historical_ratings(fmp::FMP; symbol::String, params...)
    endpoint = "historical-rating/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
historical_ratings(fmp::FMP, symbol::String; params...) = historical_ratings(fmp; symbol, params...)

"""
    discounted_cash_flows(fmp, symbol)

Returns discounted cash flows for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.

See [Discounted-Cash-Flow]\
(https://site.financialmodelingprep.com/developer/docs/#Company-Discounted-cash-flow-value) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the dcf for AAPL
data = discounted_cash_flows(fmp, "AAPL")
```
"""
function discounted_cash_flows(fmp::FMP; symbol::String)
    endpoint = "discounted-cash-flow/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data 
end
discounted_cash_flows(fmp::FMP, symbol::String) = discounted_cash_flows(fmp; symbol)

"""
    advanced_discounted_cash_flows(fmp, symbol, levered = false)

Returns advaned discounted cash flows for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `levered::Bool`: Return the levered dcf with including WACC.

See [Discounted-Cash-Flow]\
(https://site.financialmodelingprep.com/developer/docs/#Company-Discounted-cash-flow-value) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the levered dcf for AAPL with WACC
data = advanced_discounted_cash_flows(fmp, "AAPL", levered = true)
```
"""
function advanced_discounted_cash_flows(fmp::FMP; symbol::String, levered::Bool = false)
    if levered
        endpoint = "advanced_levered_discounted_cash_flow"
    else
        endpoint = "advanced_discounted_cash_flow"
    end
    url, query = Client.make_url_v4(fmp, endpoint; symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data 
end
advanced_discounted_cash_flows(fmp::FMP, symbol::String; levered::Bool = false) = advanced_discounted_cash_flows(fmp; symbol, levered)

"""
    historical_discounted_cash_flows(fmp, symbol, params...)

Returns historical discounted cash flows for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `params...`: Additional keyword query params.

See [Historical-Discounted-Cash-Flow]\
(https://site.financialmodelingprep.com/developer/docs/#Company-Discounted-cash-flow-value) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the dcf for in the last 30 quarters AAPL
data = historical_discounted_cash_flows(fmp, "AAPL", period = "quarter", limit = 30)
```
"""
function historical_discounted_cash_flows(fmp::FMP; symbol::String, params...)
    endpoint = "historical-discounted-cash-flow/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data 
end
historical_discounted_cash_flows(fmp::FMP, symbol::String; params...) = historical_discounted_cash_flows(fmp; symbol, params...)
