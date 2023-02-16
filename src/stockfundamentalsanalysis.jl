"""
    financial_ratios(fmp, symbol, params...)

Returns a vector of common financial ratios for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- params...: Additional keyword query params.

See [Company-Financial-Ratios](https://site.financialmodelingprep.com/developer/docs/#Company-Financial-Ratios) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get financial ratios for AAPL in the last 30 quarters
data = financial_ratios(fmp, "AAPL", period = "quarter", limit = 30)
```
"""
function financial_ratios(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "api/v3/ratios/" 
    query = Dict{String, Any}(string(k) => v for (k, v) in params)
    query["apikey"] = fmp.api_key
    url = fmp.base_url * endpoint * symbol
    response = Handler.make_request(url, query)
    data = Handler.parse_response(response)
    return data
end

"""
    financial_scores(fmp, symbol)

Returns a vector of common financial scores for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.

See [Stock-Financial-Scores](https://site.financialmodelingprep.com/developer/docs/#Stock-Financial-scores) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get financial scores for AAPL
data = financial_scores(fmp, "AAPL")
```
"""
function financial_scores(fmp::FMP, symbol::String)::Vector{Any}
    endpoint = "api/v3/ratios/" 
    query = Dict{String, Any}("symbol" => symbol, "apikey" => fmp.api_key)
    url = fmp.base_url * endpoint
    response = Handler.make_request(url, query)
    data = Handler.parse_response(response)
    return data
end

"""
    owners_earnings(fmp, symbol)

Returns a vector of owners earnings for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.

See [Stock-Financial-Scores](https://site.financialmodelingprep.com/developer/docs/#Stock-Financial-scores) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get ownings earnings for AAPL
data = owners_earnings(fmp, "AAPL")
```
"""
function owners_earnings(fmp::FMP, symbol::String)::Vector{Any}
    endpoint = "api/v3/owners-earnings/" 
    query = Dict{String, Any}("symbol" => symbol, "apikey" => fmp.api_key)
    url = fmp.base_url * endpoint
    response = Handler.make_request(url, query)
    data = Handler.parse_response(response)
    return data
end

"""
    enterprise_values(fmp, symbol, params...)

Returns a vector of enterprise value components for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- params...: Additional keyword query params.

See [Company-Enterprise-Value](https://site.financialmodelingprep.com/developer/docs/#Company-Enterprise-Value) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get enterprise values for AAPL in the last 30 quarters
data = enterprise_values(fmp, "AAPL", period = "quarter", limit = 30)
```
"""
function enterprise_values(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "api/v3/enterprise-values/" 
    query = Dict{String, Any}(string(k) => v for (k, v) in params)
    query["apikey"] = fmp.api_key
    url = fmp.base_url * endpoint * symbol
    response = Handler.make_request(url, query)
    data = Handler.parse_response(response)
    return data
end

"""
    income_statements_growth(fmp, symbol, params...)

Returns a vector of income statements growth for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- params...: Additional keyword query params.

See [Financial-Statements-Growth](https://site.financialmodelingprep.com/developer/docs/#Financial-Statements-Growth) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 5 annual statements growth for AAPL
data = income_statements_growth(fmp, "AAPL", limit = 5)
```
"""
function income_statements_growth(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "api/v3/income-statement-growth/"
    query = Dict{String, Any}(string(k) => v for (k, v) in params)
    query["apikey"] = fmp.api_key
    url = fmp.base_url * endpoint * symbol
    response = Handler.make_request(url, query)
    data = Handler.parse_response(response)
    return data 
end

"""
    balance_sheet_statements_growth(fmp, symbol, params...)

Returns a vector of balance sheet statements growth for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- params...: Additional keyword query params.

See [Financial-Statements-Growth](https://site.financialmodelingprep.com/developer/docs/#Financial-Statements-Growth) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 5 annual statements growth for AAPL
data = balance_sheet_statements_growth(fmp, "AAPL", limit = 5)
```
"""
function balance_sheet_statements_growth(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "api/v3/balance_sheet_statement_growth/"
    query = Dict{String, Any}(string(k) => v for (k, v) in params)
    query["apikey"] = fmp.api_key
    url = fmp.base_url * endpoint * symbol
    response = Handler.make_request(url, query)
    data = Handler.parse_response(response)
    return data 
end

"""
    cash_flow_statements_growth(fmp, symbol, params...)

Returns a vector of cash flow statements growth for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- params...: Additional keyword query params.

See [Financial-Statements-Growth](https://site.financialmodelingprep.com/developer/docs/#Financial-Statements-Growth) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 5 annual statements growth for AAPL
data = cash_flow_statements_growth(fmp, "AAPL", limit = 5)
```
"""
function cash_flow_statements_growth(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "api/v3/cash-flow-statement-growth/"
    query = Dict{String, Any}(string(k) => v for (k, v) in params)
    query["apikey"] = fmp.api_key
    url = fmp.base_url * endpoint * symbol
    response = Handler.make_request(url, query)
    data = Handler.parse_response(response)
    return data 
end

"""
    financial_statements_growth(fmp, symbol, params...)

Returns a vector of financial statements growth for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- params...: Additional keyword query params.

See [Company-Financial-Growth](https://site.financialmodelingprep.com/developer/docs/#Company-Financial-Growth) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 5 annual statements growth for AAPL
data = financial_statements_growth(fmp, "AAPL", limit = 5)
```
"""
function financial_statements_growth(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "api/v3/financial-growth/"
    query = Dict{String, Any}(string(k) => v for (k, v) in params)
    query["apikey"] = fmp.api_key
    url = fmp.base_url * endpoint * symbol
    response = Handler.make_request(url, query)
    data = Handler.parse_response(response)
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

See [Company-Enterprise-Value](https://site.financialmodelingprep.com/developer/docs/#Company-Enterprise-Value) for more details.

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
        error("Invalid period value. Allowed values are $(REPORTING_PERIODS). You can add a missing period by modifying this variable.")
    end
    endpoint = "api/v3/key-metrics/" * period ^ (period == REPORTING_PERIODS.ttm)
    query = Dict{String, Any}(string(k) => v for (k, v) in params)
    if period == REPORTING_PERIODS.quarter
        query["period"] = REPORTING_PERIODS.quarter
    end
    query["apikey"] = fmp.api_key
    url = fmp.base_url * endpoint * symbol
    response = Handler.make_request(url, query)
    data = Handler.parse_response(response)
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

# get the curren rating for AAPL 
data = company_rating(fmp, "AAPL")
```
"""
function current_rating(fmp::FMP, symbol::String)::Vector{Any}
    endpoint = "api/v3/rating/"
    query = Dict{String, Any}("apikey" => fmp.api_key)
    url = fmp.base_url * endpoint * symbol
    response = Handler.make_request(url, query)
    data = Handler.parse_response(response)
    return data 
end

"""
    historical_ratings(fmp, symbol, params...)

Returns a vector of ratings for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- params...: Additional keyword query params.

See [Company-Rating](https://site.financialmodelingprep.com/developer/docs/#Company-Rating) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 100 ratings for AAPL 
data = historical_ratings(fmp, "AAPL", limit = 100)
```
"""
function historical_ratings(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "api/v3/historical-rating/"
    query = Dict{String, Any}(string(k) => v for (k, v) in params)
    query["apikey"] = fmp.api_key
    url = fmp.base_url * endpoint * symbol
    response = Handler.make_request(url, query)
    data = Handler.parse_response(response)
    return data
end

"""
    discounted_cash_flows(fmp, symbol, with_wacc = false)

Returns a vector of discounted cash flows for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- with_wacc::Bool: Return the version with WACC.

See [Company-Discounted-cash-flow-value](https://site.financialmodelingprep.com/developer/docs/#Company-Discounted-cash-flow-value) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the latest dcf for AAPL including WACC
data = discounted_cash_flows(fmp, "AAPL", with_wacc = true)
```
"""
function discounted_cash_flows(fmp::FMP, symbol::String; with_wacc::Bool = false)::Vector{Any}
    endpoint = with_wacc ? "api/v4/advanced_discounted_cash_flow" : "api/v3/discounted-cash-flow/" * symbol
    query = Dict{String, Any}("apikey" => fmp.api_key)
    if with_wacc
        query["symbol"] = symbol
    end
    url = fmp.base_url * endpoint
    response = Handler.make_request(url, query)
    data = Handler.parse_response(response)
    return data 
end

"""
    historical_discounted_cash_flows(fmp, symbol, params...)

Returns a vector of historical discounted cash flows for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- params...: Additional keyword query params.

See [Company-Discounted-cash-flow-value](https://site.financialmodelingprep.com/developer/docs/#Company-Discounted-cash-flow-value) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the dcf for in the last 30 quarters AAPL
data = historical_discounted_cash_flows(fmp, "AAPL", period = "quarter", limit = 30)
```
"""
function historical_discounted_cash_flows(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "api/v3/historical-discounted-cash-flow/"
    query = Dict{String, Any}(string(k) => v for (k, v) in params)
    query["apikey"] = fmp.api_key
    url = fmp.base_url * endpoint * symbol
    response = Handler.make_request(url, query)
    data = Handler.parse_response(response)
    return data 
end