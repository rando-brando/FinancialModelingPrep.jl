"""
    historical_employee_counts(fmp, symbol)

Returns historical employee counts for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.

See [Historical-Number-of-Employees]\
(https://site.financialmodelingprep.com/developer/docs/#Historical-Number-of-Employees) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the historical employee counts for AAPL
data = historical_employee_counts(fmp, "AAPL")
```
"""
function historical_employee_counts(fmp::FMP; symbol::String)
    endpoint = "historical/employee_count"
    url, query = Client.make_url_v4(fmp, endpoint; symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
historical_employee_counts(fmp::FMP, symbol::String) = historical_employee_counts(fmp; symbol)
