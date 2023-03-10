"""
    _mutual_fund_portfolio_dates(fmp::FMP; params...)

This is a hidden function that is used internally by `mutual_fund_portfolio_dates`.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

Note: This function is not intended to be called directly by end users.
"""
function _mutual_fund_portfolio_dates(fmp::FMP; params...)
    endpoint = "mutual-fund-holdings/portfolio-date"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    mutual_fund_portfolio_dates(fmp, symbol)
    mutual_fund_portfolio_dates(fmp, cik)

Returns a JSON table of the portfolio dates for the specified mutual fund.

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
mutual_fund_portfolio_dates(fmp::FMP, symbol::String) = _mutual_fund_portfolio_dates(fmp; symbol)
mutual_fund_portfolio_dates(fmp::FMP; symbol::String) = _mutual_fund_portfolio_dates(fmp; symbol)
mutual_fund_portfolio_dates(fmp::FMP; cik::String) = _mutual_fund_portfolio_dates(fmp; cik)

"""
    _mutual_fund_portfolio(fmp::FMP; params...)

This is a hidden function that is used internally by `mutual_fund_portfolio_`.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

Note: This function is not intended to be called directly by end users.
"""
function _mutual_fund_portfolio(fmp::FMP; params...)
    endpoint = "mutual-fund-holdings"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    mutual_fund_portfolio(fmp, symbol, params...)
    mutual_fund_portfolio(fmp, cik, params...)

Returns a JSON table of the portfolio for the specified mutual fund.

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
mutual_fund_portfolio(fmp::FMP, symbol::String; params...) = _mutual_fund_portfolio(fmp; symbol, params...)
mutual_fund_portfolio(fmp::FMP; symbol::String, params...) = _mutual_fund_portfolio(fmp; symbol, params...)
mutual_fund_portfolio(fmp::FMP; cik::String, params...) = _mutual_fund_portfolio(fmp; cik, params...)

"""
    mutual_fund_search(fmp, name)

Returns a JSON table of all mutual funds matching the specified name.

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
data = mutual_fund_search(fmp, "Vanguard")
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
    _etf_portfolio_dates(fmp::FMP; params...)

This is a hidden function that is used internally by `etf_portfolio_dates`.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

Note: This function is not intended to be called directly by end users.
"""
function _etf_portfolio_dates(fmp::FMP; params...)
    endpoint = "etf-holdings/portfolio-date"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    etf_portfolio_dates(fmp, symbol)
    etf_portfolio_dates(fmp, cik)

Returns a JSON table of the portfolio dates for the specified ETF.

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
etf_portfolio_dates(fmp::FMP, symbol::String) = _etf_portfolio_dates(fmp; symbol)
etf_portfolio_dates(fmp::FMP; symbol::String) = _etf_portfolio_dates(fmp; symbol)
etf_portfolio_dates(fmp::FMP; cik::String) = _etf_portfolio_dates(fmp; cik)

"""
    _etf_portfolio(fmp::FMP; params...)

This is a hidden function that is used internally by `etf_portfolio`.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

Note: This function is not intended to be called directly by end users.
"""
function _etf_portfolio(fmp::FMP; params...)
    endpoint = "etf-holdings"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    etf_portfolio(fmp, symbol, params...)
    etf_portfolio(fmp, cik, params...)

Returns a JSON table of the portfolio for the specified ETF.

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
etf_portfolio(fmp::FMP, symbol::String; params...) = _etf_portfolio(fmp; symbol, params...)
etf_portfolio(fmp::FMP; symbol::String; params...) = _etf_portfolio(fmp; symbol, params...)
etf_portfolio(fmp::FMP; cik::String; params...) = _etf_portfolio(fmp; cik, params...)
