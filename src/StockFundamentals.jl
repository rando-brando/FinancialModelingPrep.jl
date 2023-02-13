"""
    symbols_with_financials(fmp)

Returns a vector of symbols which have financial statements. Each element is a string.
"""
function symbols_with_financials(fmp::FMP, symbol::String)
    query = [("apikey", fmp.api_key)]
    response = HTTP.get(fmp.base_url * "api/v3/financial-statement-symbol-lists", query = query)
    data = JSON.parse(String(response.body))
    return data
end

"""
    symbols_with_financials(fmp, symbol, period = "annual", limit = 30)

Returns a vector of financial statements by period for the specified symbol. Each element is a dictionary.

# Examples
``` julia
# create the API instance
fmp = FMP()

# get income statments by ticker symbol
data = income_statements(fmp, "AAPL")

# get income statements by CIK symbol
data = income_statements(fmp, "0001318605")
```
"""
function income_statements(fmp::FMP, symbol::String,  period::String = "annual", limit::Integer = 30)
    query = [("apikey", fmp.api_key)]
    response = HTTP.get(fmp.base_url * "api/v3/income-statement/" * symbol, query = query)
    data = JSON.parse(String(response.body))
    return data
end