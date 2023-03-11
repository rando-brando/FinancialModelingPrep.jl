"""
    mutual_fund_portfolio_dates(fmp, symbol)
    mutual_fund_portfolio_dates(fmp, cik)

Returns the portfolio dates for the specified mutual fund.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `cik::String`: A CIK.

See [Historical-Mutual-Fund-Holdings-Available-Dates]\
(https://site.financialmodelingprep.com/developer/docs/#historical-mutual-fund-holdings-available-dates) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the portfolio dates for VTSAX
data = mutual_fund_portfolio_dates(fmp, "VTSAX")

# get the portfolio dates for VEXPX
data = mutual_fund_portfolio_dates(fmp, cik = "0000034066")
```
"""
function mutual_fund_portfolio_dates(fmp::FMP; symbol = nothing, cik = nothing)
    endpoint = "mutual-fund-holdings/portfolio-date"
    if isnothing(cik)
        url, query = Client.make_url_v4(fmp, endpoint; symbol)
    else
        url, query = Client.make_url_v4(fmp, endpoint; cik)
    end
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
mutual_fund_portfolio_dates(fmp::FMP, symbol::String) = mutual_fund_portfolio_dates(fmp; symbol)

"""
    mutual_fund_portfolio(fmp, symbol, params...)
    mutual_fund_portfolio(fmp, cik, params...)

Returns the portfolio for the specified mutual fund.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `cik::String`: A CIK.
- `params...`: Additional keyword query params.

See [Historical-Mutual-Fund-Holdings-Portfolio]\
(https://site.financialmodelingprep.com/developer/docs/#historical-mutual-fund-holdings-portfolio) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the portfolio for VTSAX at the end of 2021
data = mutual_fund_portfolio(fmp, "VTSAX", date = "2021-12-31")

# get the portfolio for VEXPX at the end of 2021
data = mutual_fund_portfolio(fmp, cik = "0000034066", date = "2021-12-31")
```
"""
function mutual_fund_portfolio(fmp::FMP; symbol = nothing, cik = nothing, params...)
    endpoint = "mutual-fund-holdings"
    if isnothing(cik)
        url, query = Client.make_url_v4(fmp, endpoint; symbol, params...)
    else
        url, query = Client.make_url_v4(fmp, endpoint; cik, params...)
    end
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
mutual_fund_portfolio(fmp::FMP, symbol::String; params...) = mutual_fund_portfolio(fmp; symbol, params...)

"""
    mutual_fund_search(fmp, name)

Returns all mutual funds matching the specified name.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `name::String`: An institution name.

See [Mutual-Fund-Holdings-Search]\
(https://site.financialmodelingprep.com/developer/docs/#Mutual-fund-holdings-search) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get all mutual funds from Vanguard
data = mutual_fund_search(fmp, name = "Vanguard")
```
"""
function mutual_fund_search(fmp::FMP; name::String)
    endpoint = "mutual-fund-holdings/name"
    url, query = Client.make_url_v4(fmp, endpoint; name)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
mutual_fund_search(fmp::FMP, name::String) = mutual_fund_search(fmp; name)

"""
    etf_portfolio_dates(fmp, symbol)
    etf_portfolio_dates(fmp, cik)

Returns the portfolio dates for the specified ETF.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `cik::String`: A CIK.

See [Historical-Mutual-Fund-Holdings-Available-Dates]\
(https://site.financialmodelingprep.com/developer/docs/#historical-mutual-fund-holdings-available-dates) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the portfolio dates for VOO
data = etf_portfolio_dates(fmp, "VOO")

# get the portfolio dates for DLR
data = etf_portfolio_dates(fmp, cik = "0000036405")
```
"""
function etf_portfolio_dates(fmp::FMP; symbol = nothing, cik = nothing)
    endpoint = "etf-holdings/portfolio-date"
    if isnothing(cik)
        url, query = Client.make_url_v4(fmp, endpoint; symbol)
    else
        url, query = Client.make_url_v4(fmp, endpoint; cik)
    end
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
etf_portfolio_dates(fmp::FMP, symbol::String) = etf_portfolio_dates(fmp; symbol)

"""
    etf_portfolio(fmp, symbol, params...)
    etf_portfolio(fmp, cik, params...)

Returns the portfolio for the specified ETF.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `cik::String`: A CIK.
- `params...`: Additional keyword query params.

See [Historical-Mutual-Fund-Holdings-Portfolio]\
(https://site.financialmodelingprep.com/developer/docs/#historical-mutual-fund-holdings-portfolio) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the portfolio for VOO at the end of 2021
data = etf_portfolio(fmp, "VOO", date = "2021-12-31")

# get the portfolio for DLR at the end of 2021
data = etf_portfolio(fmp, cik = "0000036405", date = "2021-12-31")
```
"""
function etf_portfolio(fmp::FMP; symbol = nothing, cik = nothing, params...)
    endpoint = "etf-holdings"
    if isnothing(cik)
        url, query = Client.make_url_v4(fmp, endpoint; symbol, params...)
    else
        url, query = Client.make_url_v4(fmp, endpoint; cik, params...)
    end
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
etf_portfolio(fmp::FMP, symbol::String; params...) = etf_portfolio(fmp; symbol, params...)
