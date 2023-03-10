"""
    mutual_fund_portfolio_dates(fmp, symbol)
    mutual_fund_portfolio_dates(fmp, cik)

Returns a JSON table of the portfolio dates for the specified mutual fund.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- cik::String: A CIK.

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
function mutual_fund_portfolio_dates(fmp::FMP; cik::String)
    endpoint = "mutual-fund-holdings/portfolio-date"
    url, query = Client.make_url_v4(fmp, endpoint, cik = cik)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
function mutual_fund_portfolio_dates(fmp::FMP; symbol::String)
    endpoint = "mutual-fund-holdings/portfolio-date"
    url, query = Client.make_url_v4(fmp, endpoint, symbol = symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
mutual_fund_portfolio_dates(fmp::FMP, symbol::String) = mutual_fund_portfolio_dates(fmp, symbol = symbol)

"""
    mutual_fund_portfolio(fmp, symbol, params...)
    mutual_fund_portfolio(fmp, cik, params...)

Returns a JSON table of the portfolio for the specified mutual fund.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- cik::String: A CIK.
- params...: Additional keyword query params.

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
function mutual_fund_portfolio(fmp::FMP; cik::String, params...)
    endpoint = "mutual-fund-holdings"
    url, query = Client.make_url_v4(fmp, endpoint; cik = cik, params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
function mutual_fund_portfolio(fmp::FMP; symbol::String, params...)
    endpoint = "mutual-fund-holdings"
    url, query = Client.make_url_v4(fmp, endpoint; symbol = symbol, params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
mutual_fund_portfolio(fmp::FMP, symbol::String; params...) = mutual_fund_portfolio(fmp, symbol = symbol, params...)

"""
    mutual_fund_search(fmp, name)

Returns a JSON table of all mutual funds matching the specified name.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- name::String: An institution name.

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
function mutual_fund_search(fmp::FMP, name::String)
    endpoint = "mutual-fund-holdings/name"
    url, query = Client.make_url_v4(fmp, endpoint, name = name)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    etf_portfolio_dates(fmp, symbol)
    etf_portfolio_dates(fmp, cik)

Returns a JSON table of the portfolio dates for the specified ETF.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- cik::String: A CIK.

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
function etf_portfolio_dates(fmp::FMP; cik::String)
    endpoint = "etf-holdings/portfolio-date"
    url, query = Client.make_url_v4(fmp, endpoint, cik = cik)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
function etf_portfolio_dates(fmp::FMP; symbol::String)
    endpoint = "etf-holdings/portfolio-date"
    url, query = Client.make_url_v4(fmp, endpoint, symbol = symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
etf_portfolio_dates(fmp::FMP, symbol::String) = etf_portfolio_dates(fmp, symbol = symbol)

"""
    etf_portfolio(fmp, symbol, params...)
    etf_portfolio(fmp, cik, params...)

Returns a JSON table of the portfolio for the specified ETF.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- cik::String: A CIK.
- params...: Additional keyword query params.

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
function etf_portfolio(fmp::FMP; cik::String, params...)
    endpoint = "etf-holdings"
    url, query = Client.make_url_v4(fmp, endpoint; cik = cik, params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
function etf_portfolio(fmp::FMP; symbol::String, params...)
    endpoint = "etf-holdings"
    url, query = Client.make_url_v4(fmp, endpoint; symbol = symbol, params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
etf_portfolio(fmp::FMP, symbol::String; params...) = etf_portfolio(fmp, symbol = symbol, params...)
