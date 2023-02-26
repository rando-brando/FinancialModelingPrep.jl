"""
    symbols_with_financials(fmp)

Returns a vector of symbols which have financial statements. Each element is a string.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.

See [Financial-Statements-List](https://site.financialmodelingprep.com/developer/docs#Financial-Statements-List) for more details.  
"""
function symbols_with_financials(fmp::FMP)::Vector{String}
    endpoint = "financial-statement-symbol-lists"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    income_statements(fmp, symbol, reported = false, params...)

Returns a vector of income statements for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- reported::Bool: Return the reported or normalized statements.
- params...: Additional keyword query params.

See [Income-Statements](https://site.financialmodelingprep.com/developer/docs#Company-Financial-Statements) for more details.  
See [Income-Statements-As-Reported](https://site.financialmodelingprep.com/developer/docs#Company-Financial-Statements-As-Reported) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 10 quarterly statments for AAPL
data = income_statements(fmp, "AAPL", period = "quarter", limit = 10)

# get the last 5 annual statements as reported for AAPL
data = income_statements(fmp, "AAPL", reported = true, limit = 5)
```
"""
function income_statements(fmp::FMP, symbol::String; reported::Bool = false, params...)::Vector{Any}
    endpoint = (reported ? "income-statement-as-reported" : "income-statement") * "/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data 
end

"""
    balance_sheet_statements(fmp, symbol, reported = false, params...)

Returns a vector of balance sheet statements for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- reported::Bool: Return the reported or normalized statements.
- params...: Additional keyword query params.

See [Balance-Sheet-Statements](https://site.financialmodelingprep.com/developer/docs#Company-Financial-Statements) for more details.  
See [Balance-Sheet-Statements-As-Reported](https://site.financialmodelingprep.com/developer/docs#Company-Financial-Statements-As-Reported) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 10 quarterly statments for AAPL
data = balance_sheet_statements(fmp, "AAPL", period = "quarter", limit = 10)

# get the last 5 annual statements as reported for AAPL
data = balance_sheet_statements(fmp, "AAPL", reported = true, limit = 5)
```
"""
function balance_sheet_statements(fmp::FMP, symbol::String; reported::Bool = false, params...)::Vector{Any}
    endpoint = (reported ? "balance-sheet-statement-as-reported" : "balance-sheet-statement") * "/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    cash_flow_statements(fmp, symbol, reported = false, params...)

Returns a vector of cash flow statements for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- reported::Bool: Return the reported or normalized statements.
- params...: Additional keyword query params.

See [Cash-Flow-Statements](https://site.financialmodelingprep.com/developer/docs#Company-Financial-Statements) for more details.  
See [Cash-Flow-Statements-As-Reported](https://site.financialmodelingprep.com/developer/docs#Company-Financial-Statements-As-Reported) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 10 quarterly statments for AAPL
data = cash_flow_statements(fmp, "AAPL", period = "quarter", limit = 10)

# get the last 5 annual statements as reported for AAPL
data = cash_flow_statements(fmp, "AAPL", reported = true, limit = 5)
```
"""
function cash_flow_statements(fmp::FMP, symbol::String; reported::Bool = false, params...)::Vector{Any}
    endpoint = (reported ? "cash-flow-statement-as-reported" : "cash-flow-statement") * "/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    financial_statements(fmp, symbol, params...)

Returns a vector of financial statements as reported for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- params...: Additional keyword query params.

See [Full-Financial-Statements-As-Reported](https://site.financialmodelingprep.com/developer/docs#Company-Financial-Statements-As-Reported) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get all quarterly statements as reported for AAPL
data = financial_statements(fmp, "AAPL", period = "quarter")
```
"""
function financial_statements(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "financial-statement-full-as-reported/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    financial_reports(fmp, symbol, year, period = "FY")

Returns a vector with the financial report for the specified symbol, year and period. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- year::Integer: A calendar year.
- period::String: One of "FY", "Q1", "Q2", "Q3" or "Q4".

See [Annual-Reports-on-Form-10-K](https://site.financialmodelingprep.com/developer/docs#Annual-Reports-on-Form-10-K) for more details.
See [Quarterly-Earnings-Reports](https://site.financialmodelingprep.com/developer/docs/#Quarterly-Earnings-Reports) for more details.

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
function financial_reports(fmp::FMP, symbol::String, year::Integer; period::String = "FY")::Vector{Any}
    endpoint = "financial-reports-json"
    url, query = Client.make_url_v4(fmp, endpoint, symbol = symbol, year = year, period = period)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    revenue_segments(fmp, symbol, segment = REVENUE_SEGMENTS.product, params...)

Returns a dictionary with the revenue segments for the specified symbol.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- segment::String: A `REVENUE_SEGMENTS` option.
- params...: Additional keyword query params.

See [Sales-Revenue-By-Segments](https://site.financialmodelingprep.com/developer/docs/#Sales-Revenue-By-Segments) for more details.
See [Revenue-Geographic-by-Segments](https://site.financialmodelingprep.com/developer/docs/#Revenue-Geographic-by-Segments) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get all quarterly product revenue segments for AAPL
data = revenue_segments(fmp, "AAPL", segment = REVENUE_SEGMENTS.product, period = "quarter")
```
"""
function revenue_segments(fmp::FMP, symbol::String; segment::String = REVENUE_SEGMENTS.product, params...)::Vector{Any}
    if !(segment in REVENUE_SEGMENTS)
        error("Invalid segment value. Allowed values are $(REVENUE_SEGMENTS). Modify REVENUE_SEGMENTS to override behavior.")
    end
    endpoint = "revenue-$(segment)-segmentation"
    url, query = Client.make_url_v4(fmp, endpoint; symbol = symbol, params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    shares_float(fmp, symbol = "all")

Returns a vector of shares float statistics for one or all symbols. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol or all symbols if not provided.

See [Shares-Float](https://site.financialmodelingprep.com/developer/docs/#Shares-Float) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get shares float for all symbols
data = shares_float(fmp)

# get shares float for AAPL
data = shares_float(fmp, "AAPL")
```
"""
function shares_float(fmp::FMP; symbol::String = "all")::Vector{Any}
    endpoint = "shares_float"
    if symbol == "all"
        url, query = Client.make_url_v4(fmp, endpoint * "/$(symbol)")
    else
        url, query = Client.make_url_v4(fmp, endpoint, symbol = symbol)
    end 
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    earnings_call_transcript(fmp, symbol)

Returns a vector of earnings call transcripts for a specified symbols. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol or "all" if not provided.
- params...: Additional keyword query params.

See [Earnings-Call-Transcript](https://site.financialmodelingprep.com/developer/docs/#Earning-Call-Transcript) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get all transcripts for AAPL in 2022
data = earnings_call_transcript(fmp, "AAPL", year = 2022)
```
"""
function earnings_call_transcripts(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "earnings_call_transcript/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
    sec_filings(fmp, symbol)

Returns a vector of sec filings for a specified symbols. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol or "all" if not provided.
- params...: Additional keyword query params.

See [SEC-Filings](https://site.financialmodelingprep.com/developer/docs/#SEC-Filings) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get all 10-K filings for AAPL on page 2
data = sec_filings(fmp, "AAPL", type = "10-K", page = 2)
```
"""
function sec_filings(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "sec_filings/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end

"""
company_notes(fmp, symbol)

Returns a vector of notes due for a specified symbols. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.

See [Company-Notes-Due](https://site.financialmodelingprep.com/developer/docs/#Company-Notes-due) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get all notes due for AAPL
data = company_notes(fmp, "AAPL")
```
"""
function company_notes(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "company-notes"
    url, query = Client.make_url_v4(fmp, endpoint, symbol = symbol, params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_response(response)
    return data
end