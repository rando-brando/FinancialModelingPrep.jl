"""
    symbols_with_financials(fmp)

Returns a vector of symbols which have financial statements. Each element is a string.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
"""
function symbols_with_financials(fmp::FMP)::Vector{String}
    endpoint = "api/v3/financial-statement-symbol-lists"
    query::Vector{Tuple{String, Any}} = [("apikey", fmp.api_key)]
    response = HTTP.get(fmp.base_url * endpoint, query = query)
    data = JSON.parse(String(response.body))
    return data
end

"""
    income_statements(fmp, symbol, period = "annual", limit = 30, reported = false)

Returns a vector of income statements by period for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- period::String: Either "annual" or "quarter".
- limit::Integer: The number of periods to return.
- reported::Bool: Return the reported or normalized statements.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 10 quarterly statments for AAPL
data = income_statements(fmp, "AAPL", period = "quarter", limit = 10)

# get the last 5 annual statements as reported for AAPL
data = income_statements(fmp, "AAPL", limit = 5, reported = true)
```
"""
function income_statements(fmp::FMP, symbol::String;  period::String = "annual", limit::Integer = 30, reported::Bool = false)
    endpoint = "api/v3/" * if reported "income-statement-as-reported/" else "income-statement/" end
    query::Vector{Tuple{String, Any}} = [("limit", limit), ("apikey", fmp.api_key)]
    if period == "quarter"
        pushfirst!(query, ("period", period))
    end
    response = HTTP.get(fmp.base_url * endpoint * symbol, query = query)
    data = JSON.parse(String(response.body))
    return data
end

"""
    balance_sheet_statements(fmp, symbol, period = "annual", limit = 30, reported = false)

Returns a vector of balance sheet statements by period for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- period::String: Either "annual" or "quarter".
- limit::Integer: The number of periods to return.
- reported::Bool: Return the reported or normalized statements.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 10 quarterly statments for AAPL
data = balance_sheet_statements(fmp, "AAPL", period = "quarter", limit = 10)

# get the last 5 annual statements as reported for AAPL
data = balance_sheet_statements(fmp, "AAPL", limit = 5, reported = true)
```
"""
function balance_sheet_statements(fmp::FMP, symbol::String;  period::String = "annual", limit::Integer = 30, reported::Bool = false)
    endpoint = "api/v3/" * if reported "balance-sheet-statement-as-reported/" else "balance-sheet-statement/" end
    query::Vector{Tuple{String, Any}} = [("limit", limit), ("apikey", fmp.api_key)]
    if period == "quarter"
        pushfirst!(query, ("period", period))
    end
    response = HTTP.get(fmp.base_url * endpoint * symbol, query = query)
    data = JSON.parse(String(response.body))
    return data
end

"""
    cash_flow_statements(fmp, symbol, period = "annual", limit = 30, reported = false)

Returns a vector of cash flow statements by period for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- period::String: Either "annual" or "quarter".
- limit::Integer: The number of periods to return.
- reported::Bool: Return the reported or normalized statements.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 10 quarterly statments for AAPL
data = cash_flow_statements(fmp, "AAPL", period = "quarter", limit = 10)

# get the last 5 annual statements as reported for AAPL
data = cash_flow_statements(fmp, "AAPL", limit = 5, reported = true)
```
"""
function cash_flow_statements(fmp::FMP, symbol::String; period::String = "annual", limit::Integer = 30, reported::Bool = false)
    endpoint = "api/v3/" * if reported "cash-flow-statement-as-reported/" else "cash-flow-statement/" end
    query::Vector{Tuple{String, Any}} = [("limit", limit), ("apikey", fmp.api_key)]
    if period == "quarter"
        pushfirst!(query, ("period", period))
    end
    response = HTTP.get(fmp.base_url * endpoint * symbol, query = query)
    data = JSON.parse(String(response.body))
    return data
end

"""
    financial_statements(fmp, symbol, period = "annual")

Returns a vector of financial statements by period for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- period::String: Either "annual" or "quarter".

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get all quarterly statements as reported for AAPL
data = financial_statements(fmp, "AAPL", period = "quarter")
```
"""
function financial_statements(fmp::FMP, symbol::String; period::String = "annual")
    endpoint = "api/v3/financial-statement-full-as-reported/"
    query::Vector{Tuple{String, Any}} = [("apikey", fmp.api_key)]
    if period == "quarter"
        pushfirst!(query, ("period", period))
    end
    response = HTTP.get(fmp.base_url * endpoint * symbol, query = query)
    data = JSON.parse(String(response.body))
    return data
end

"""
    financial_reports(fmp, symbol, year, period = "FY")

Returns a dictionary with the financial report for the specified symbol, year and period.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- year::Integer: The financial statement year.
- period::String: One of "FY", "Q1", "Q2", "Q3" or "Q4".

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the 10-K for AAPL in 2022
data = financial_reports(fmp, "AAPL", year = 2022, period = "FY")

# get the 10-Q for AAPL in Q4 of 2022
data = financial_reports(fmp, "AAPL",  year = 2022, period = "Q4")
```
"""
function financial_reports(fmp::FMP, symbol::String, year::Integer; period::String = "FY")
    endpoint = "api/v4/financial-reports-json/"
    query::Vector{Tuple{String, Any}} = [("symbol", symbol), ("year", year), ("period", period), ("apikey", fmp.api_key)]
    response = HTTP.get(fmp.base_url * endpoint, query = query)
    data = JSON.parse(String(response.body))
    return data
end

"""
    shares_float(fmp, symbol = "all")

Returns a vector of shares float statistics for one or all symbols. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol or "all" if not provided.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get shares float for AAPL
data = shares_float(fmp, "AAPL")
```
"""
function shares_float(fmp::FMP; symbol::String = "all")
    endpoint = "api/v4/shares_float/"
    query::Vector{Tuple{String, Any}} = [("apikey", fmp.api_key)]
    if period != "all"
        pushfirst!(query, ("symbol", symbol))
        symbol = "" # drop symbol since its a query instead
    end
    response = HTTP.get(fmp.base_url * endpoint * symbol, query = query)
    data = JSON.parse(String(response.body))
    return data
end

"""
    earnings_call_transcript(fmp, symbol, year = 0, quarter = 0)

Returns a vector of earnings call transcripts for a specified symbols. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol or "all" if not provided.
- year::Integer: The transcript year.
- quarter::Integer: One of 1, 2, 3, or 4.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get all transcripts for AAPL in 2022
data = earnings_call_transcript(fmp, "AAPL", year = 2022)
```
"""
function earnings_call_transcripts(fmp::FMP, symbol::String; year::Integer = 0, quarter::Integer = 0)
    endpoint = "api/v3/earnings_call_transcript/"
    query::Vector{Tuple{String, Any}} = [("apikey", fmp.api_key)]
    if year != 0 
        pushfirst!(query, ("year", year))
    end
    if quarter != 0
        pushfirst!(query, ("quarter", quarter))
    end
    response = HTTP.get(fmp.base_url * endpoint * symbol, query = query)
    data = JSON.parse(String(response.body))
    return data
end

"""
    sec_filings(fmp, symbol, type = nothing, page = 0)

Returns a vector of sec filings for a specified symbols. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol or "all" if not provided.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get all 10-K filings for AAPL on page 2
data = sec_filings(fmp, "AAPL", type = "10-K", page = 2)
```
"""
function sec_filings(fmp::FMP, symbol::String; type::String = "", page::Integer = 0)
    endpoint = "api/v4/sec_filings/"
    query::Vector{Tuple{String, Any}} = [("page", page), ("apikey", fmp.api_key)]
    if type != ""
        pushfirst!(query, ("type", type))
    end
    response = HTTP.get(fmp.base_url * endpoint * symbol, query = query)
    data = JSON.parse(String(response.body))
    return data
end