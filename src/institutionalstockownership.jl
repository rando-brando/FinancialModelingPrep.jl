"""
    institutional_positions(fmp, symbol, params...)

Returns a JSON table of institutional positions for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `params...`: Additional keyword query params.

See [Institutional-Stock-Ownership]\
(https://site.financialmodelingprep.com/developer/docs/#Institutional-Stock-Ownership) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the institutional positions for AAPL including the current quarter
data = institutional_positions(fmp, "AAPL", includeCurrentQuarter = true)
```
"""
function institutional_positions(fmp::FMP; symbol::String, params...)
    endpoint = "institutional-ownership/symbol-ownership"
    url, query = Client.make_url_v4(fmp, endpoint; symbol, params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
institutional_positions(fmp::FMP, symbol::String; params...) = institutional_positions(fmp; symbol, params...)

"""
    institutional_ownership_percentages(fmp, symbol, params...)

Returns a JSON table of institutional ownership percentages for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `params...`: Additional keyword query params.

See [Stock-Ownership-by-Holders]\
(https://site.financialmodelingprep.com/developer/docs/#Stock-Ownership-by-Holders) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the institutional ownership percentages for AAPL in Q3 of 2021
data = institutional_ownership_percentages(fmp, "AAPL", date = "2021-09-30")
```
"""
function institutional_ownership_percentages(fmp::FMP; symbol::String, params...)
    endpoint = "institutional-ownership/institutional-holders/symbol-ownership-percent"
    url, query = Client.make_url_v4(fmp, endpoint; symbol, params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
institutional_ownership_percentages(fmp::FMP, symbol::String; params...) = institutional_ownership_percentages(fmp; symbol, params...)

"""
    institutional_ownership_weightings(fmp, symbol, params...)

Returns a JSON table of institutional ownership weightings for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `params...`: Additional keyword query params.

See [Institutional-Stock-by-Shares-Held-and-Date]\
(https://site.financialmodelingprep.com/developer/docs/#Institutional-Ownership-by-Shares-Held-and-Date) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the institutional ownership weightings for AAPL in Q3 of 2021
data = institutional_ownership_weightings(fmp, "AAPL", date = "2021-09-30")
```
"""
function institutional_ownership_weightings(fmp::FMP; symbol::String, params...)
    endpoint = "institutional-ownership/institutional-holders/symbol-ownership"
    url, query = Client.make_url_v4(fmp, endpoint; symbol, params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
institutional_ownership_weightings(fmp::FMP, symbol::String; params...) = institutional_ownership_weightings(fmp; symbol, params...)

"""
    institutional_ownership_feed(fmp, params...)

Returns a JSON table of institutional ownership from the RSS feed.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [Institutional-Holder-Rss-Feed]\
(https://site.financialmodelingprep.com/developer/docs/#Institutional-Holder-Rss-Feed) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the first page of results from the RSS feed
data = institutional_ownership_feed(fmp, page = 0)
```
"""
function institutional_ownership_feed(fmp::FMP; params...)
    endpoint = "institutional-ownership/rss-feed"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    institution_search(fmp, name)

Returns a JSON table of all CIKs matching the specified institution name.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `name::String`: An institution name.

See [Institutional-Holders-Search]\
(https://site.financialmodelingprep.com/developer/docs/#Institutional-Holders-Search) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the CIKs for Berkshire Hathaway
data = institution_search(fmp, "Berkshire%20Hathaway%20Inc")
```
"""
function institution_search(fmp::FMP; name::String)
    endpoint = "institutional-ownership/name"
    url, query = Client.make_url_v4(fmp, endpoint; name)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
institution_search(fmp::FMP, name::String) = institution_search(fmp; name)

"""
    institution_portfolio_dates(fmp, cik)

Returns a JSON table of the portfolio dates for the specified institution.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `cik::String`: A CIK.

See [Institutional-Holders-Available-Date]\
(https://site.financialmodelingprep.com/developer/docs/#Institutional-Holders-Available-Date) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the portfolio dates for Berkshire Hathaway
data = institution_portfolio_dates(fmp, "0001067983")
```
"""
function institution_portfolio_dates(fmp::FMP; cik::String)
    endpoint = "institutional-ownership/portfolio-date"
    url, query = Client.make_url_v4(fmp, endpoint; cik)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
institution_portfolio_dates(fmp::FMP, cik::String) = institution_portfolio_dates(fmp; cik)

"""
    institution_portfolio_summary(fmp, cik)

Returns a JSON table of the portfolio summary for the specified institution.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `cik::String`: A CIK.

See [Institutional-Holdings-Portfolio-Positions-Summary]\
(https://site.financialmodelingprep.com/developer/docs/#Institutional-Holdings-Portfolio-Positions-Summary) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the portfolio summary for Berkshire Hathaway
data = institution_portfolio_summary(fmp, "0001067983")
```
"""
function institution_portfolio_summary(fmp::FMP; cik::String)
    endpoint = "institutional-ownership/portfolio-holdings-summary"
    url, query = Client.make_url_v4(fmp, endpoint; cik)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
institution_portfolio_summary(fmp::FMP, cik::String) = institution_portfolio_summary(fmp; cik)

"""
    institution_portfolio_industry_summary(fmp, cik, params...)

Returns a JSON table of the portfolio industry summary for the specified institution.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `cik::String`: A CIK.
- `params...`: Additional keyword query params.

See [Institutional-Holdings-Portfolio-Industry-Summary]\
(https://site.financialmodelingprep.com/developer/docs/#Institutional-Holdings-Portfolio-Industry-Summary) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the portfolio industry summary for Berkshire Hathaway in Q3 of 2021
data = institution_portfolio_industry_summary(fmp, "0001067983", date = "2021-09-30")
```
"""
function institution_portfolio_industry_summary(fmp::FMP; cik::String, params...)
    endpoint = "institutional-ownership/industry/portfolio-holdings-summary"
    url, query = Client.make_url_v4(fmp, endpoint; cik, params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
institution_portfolio_industry_summary(fmp::FMP, cik::String; params...) = institution_portfolio_industry_summary(fmp; cik, params...)

"""
    institution_portfolio_composition(fmp, cik, params...)

Returns a JSON table of the portfolio composition for the specified institution.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `cik::String`: A CIK.
- `params...`: Additional keyword query params.

See [Institutional-Holdings-Portfolio-Composition]\
(https://site.financialmodelingprep.com/developer/docs/#Institutional-Holdings-Portfolio-composition) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the portfolio composition for Berkshire Hathaway in Q3 of 2021
data = institution_portfolio_composition(fmp, "0001067983", date = "2021-09-30")
```
"""
function institution_portfolio_composition(fmp::FMP; cik::String, params...)
    endpoint = "institutional-ownership/industry/portfolio-holdings"
    url, query = Client.make_url_v4(fmp, endpoint; cik, params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
institution_portfolio_composition(fmp::FMP, cik::String; params...) = institution_portfolio_composition(fmp; cik, params...)
