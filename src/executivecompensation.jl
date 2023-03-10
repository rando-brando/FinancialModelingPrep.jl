"""
    executive_compensation(fmp, symbol)

Returns executive compensation for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.

See [Executive-Compensation]\
(https://site.financialmodelingprep.com/developer/docs/#Executive-Compensation) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the excecutive compensation for AAPL
data = executive_compensation(fmp, "AAPL")
```
"""
function executive_compensation(fmp::FMP; symbol::String)
    endpoint = "governance/executive_compensation"
    url, query = Client.make_url_v4(fmp, endpoint, symbol = symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
executive_compensation(fmp::FMP, symbol::String) = executive_compensation(fmp; symbol)

"""
executive_compensation_benchmarks(fmp, year)

Returns executive compensation benchmarks for the specified year.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `year::Integer`: A calendar year.

See [Executive-Compensation]\
(https://site.financialmodelingprep.com/developer/docs/#Executive-Compensation) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the excecutive compensation benchmarks for 2020
data = executive_compensation_benchmarks(fmp, year = 2020)
```
"""
function executive_compensation_benchmarks(fmp::FMP; year::Integer)
    endpoint = "executive-compensation-benchmark"
    url, query = Client.make_url_v4(fmp, endpoint, year = year)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
executive_compensation_benchmarks(fmp::FMP, year::Integer) = executive_compensation_benchmarks(fmp; year)
