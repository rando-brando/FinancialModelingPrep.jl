"""
    esg_scores(fmp, symbol)

Returns a JSON table with the ESG scores for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.

See [ESG-Score]\
(https://site.financialmodelingprep.com/developer/docs/#ESG-SCORE) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the esg scores for AAPL
data = esg_scores(fmp, "AAPL")
```
"""
function esg_scores(fmp::FMP; symbol::String)
    endpoint = "esg-environmental-social-governance-data"
    url, query = Client.make_url_v4(fmp, endpoint; symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
esg_scores(fmp::FMP, symbol::String) = esg_scores(fmp; symbol)

"""
    esg_ratings(fmp, symbol)

Returns a JSON table with the ESG ratings for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.

See [ESG-Ratings]\
(https://site.financialmodelingprep.com/developer/docs/#Company-ESG-Risk-Ratings) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the esg ratings for AAPL
data = esg_ratings(fmp, "AAPL")
```
"""
function esg_ratings(fmp::FMP; symbol::String)
    endpoint = "esg-environmental-social-governance-data-ratings"
    url, query = Client.make_url_v4(fmp, endpoint; symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
esg_ratings(fmp::FMP, symbol::String) = esg_ratings(fmp; symbol)

"""
    esg_score_benchmarks(fmp, year)

Returns a JSON table with the ESG score benchmarks for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `year::Integer`: A calendar year.

See [ESG-Benchmarking]\
(https://site.financialmodelingprep.com/developer/docs/#ESG-Benchmarking-By-Sector-and-Year) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the esg score benchmarks for 2023
data = esg_score_benchmarks(fmp, year = 2023)
```
"""
function esg_score_benchmarks(fmp::FMP; year::Integer)
    endpoint = "esg-environmental-social-governance-sector-benchmark"
    url, query = Client.make_url_v4(fmp, endpoint; year)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
esg_score_benchmarks(fmp::FMP, year::Integer) = esg_score_benchmarks(fmp; year)
