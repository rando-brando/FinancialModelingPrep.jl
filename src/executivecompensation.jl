"""
    executive_compensation(fmp, symbol)

Returns a JSON table of executive compensation for the specified symbol.

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
    endpoint = "governance/excecutive_compensation"
    url, query = Client.make_url_v4(fmp, endpoint, symbol = symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
executive_compensation(fmp::FMP, symbol::String) = executive_compensation(fmp; symbol)

"""
    executive_compensation_benchmark(fmp, year)

Returns a JSON table of executive compensation for the specified year.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `year::Integer`: A calendar year.

See [Executive-Compensation]\
(https://site.financialmodelingprep.com/developer/docs/#Executive-Compensation) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the excecutive compensation benchmark for 2020
data = executive_compensation_benchmark(fmp, 2020)
```
"""
function executive_compensation_benchmark(fmp::FMP; year::Integer)
    endpoint = "excecutive-compensation-benchmark"
    url, query = Client.make_url_v4(fmp, endpoint, year = year)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
executive_compensation_benchmark(fmp::FMP, year::Integer) = executive_compensation_benchmark(fmp; year)
