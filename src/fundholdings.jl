"""
    etf_holders(fmp, symbol)

Returns the etf holders of a specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: An etf symbol.

See [ETF-Holders](https://site.financialmodelingprep.com/developer/docs/#ETF-Holders) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the etf holders for SPY
data = etf_holders(fmp, "SPY")
```
"""
function etf_holders(fmp::FMP, symbol::String)
    endpoint = "etf-holder/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    etf_summary(fmp, symbol)

Returns the etf summary for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.

See [ETF-Info](https://site.financialmodelingprep.com/developer/docs/#ETF-Expense-ratio) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the etf summary for SPY
data = etf_summary(fmp, "SPY")
```
"""
function etf_summary(fmp::FMP, symbol::String)
    endpoint = "etf-info"
    url, query = Client.make_url_v4(fmp, endpoint, symbol = symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    institutional_holders(fmp, symbol)

Returns the institutional holders of a specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.

See [Institutional-Holders](https://site.financialmodelingprep.com/developer/docs/#Institutional-Holders) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the institutional holders of AAPL
data = institutional_holders(fmp, "AAPL")
```
"""
function institutional_holders(fmp::FMP, symbol::String)
    endpoint = "institutional-holder/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    mutual_fund_holders(fmp, symbol)

Returns the mutual fund holders of a specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.

See [Mutual-Fund-Holders](https://site.financialmodelingprep.com/developer/docs/#Mutual-Fund-Holders) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the mutual fund holders of AAPL
data = mutual_fund_holders(fmp, "AAPL")
```
"""
function mutual_fund_holders(fmp::FMP, symbol::String)
    endpoint = "mutual-fund-holder/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    etf_sector_weightings(fmp, symbol)

Returns the sector weightings of a specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: An etf symbol.

See [ETF-Sector-Weightings](https://site.financialmodelingprep.com/developer/docs/#ETF-Sector-Weightings) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the sector weightings of SPY
data = etf_sector_weightings(fmp, "SPY")
```
"""
function etf_sector_weightings(fmp::FMP, symbol::String)
    endpoint = "etf-sector-weightings/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    etf_country_weightings(fmp, symbol)

Returns the country weightings of a specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: An etf symbol.

See [ETF-Country-Weightings](https://site.financialmodelingprep.com/developer/docs/#ETF-Country-Weightings) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the country weightings of SPY
data = etf_country_weightings(fmp, "SPY")
```
"""
function etf_country_weightings(fmp::FMP, symbol::String)
    endpoint = "etf-country-weightings/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    etf_exposure(fmp, symbol)

Returns the etf exposure for a specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.

See [ETF-Stock-Exposure](https://site.financialmodelingprep.com/developer/docs/#ETF-Stock-Exposure) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the etf exposure for AAPL
data = etf_exposure(fmp, "AAPL")
```
"""
function etf_exposure(fmp::FMP, symbol::String)
    endpoint = "etf-stock-exposure/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    institutions_list(fmp)

Returns a list of all companies by CIK. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.

See [Institutions-List](https://site.financialmodelingprep.com/developer/docs/#Form-13F) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get all institutions
data = institutions_list(fmp)
```
"""
function institutions_list(fmp::FMP)
    endpoint = "cik_list"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    cik_search(fmp, name)

Returns a list of all company CIKs matching the specified name. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- name::String: A complete or partial institutional investment manager name.

See [Form-13F-Search](https://site.financialmodelingprep.com/developer/docs/#Form-13F) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get all CIKs matching "Berkshire"
data = cik_search(fmp, "Berkshire")
```
"""
function cik_search(fmp::FMP, name::String)
    endpoint = "cik-search/$(name)"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    company_from_cik(fmp, cik)

Returns a list of all company names matching the specified CIK. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- cik::String: A CIK.

See [CIK-Mapper](https://site.financialmodelingprep.com/developer/docs/#Form-13F) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the company name matching the CIK
data = company_from_cik(fmp, "0001067983")
```
"""
function company_from_cik(fmp::FMP, cik::String)
    endpoint = "cik/$(cik)"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    forms_13f(fmp, cik, date)

Returns a list of all form 13F filing matching the specified CIK and date. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- cik::String: A CIK.
- date::String: A yyyy-mm-dd formatted date string.

See [Form-13F](https://site.financialmodelingprep.com/developer/docs/#Form-13F) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get all form 13F form for the CIK on June 30, 2022.
data = forms_13f(fmp, "0001067983", "2022-06-30")
```
"""
function forms_13f(fmp::FMP, cik::String, date::String)
    endpoint = "form-thirteen/$(cik)"
    url, query = Client.make_url_v3(fmp, endpoint, date = date)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    filing_dates(fmp, cik)

Returns a list of all form 13F filing dates matching the specified CIK. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- cik::String: A CIK.

See [Form-13F-Filing-Dates](https://site.financialmodelingprep.com/developer/docs/#Form-13F) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get all form 13F filing dates matching the CIK
data = filing_dates(fmp, "0001067983")
```
"""
function filing_dates(fmp::FMP, cik::String)
    endpoint = "form-thirteen-date/$(cik)"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    company_from_cusip(fmp, cusip)

Returns a list of all companies matching the specified cusip. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- cusip::String: A cusip.

See [Cusip-Mapper](https://site.financialmodelingprep.com/developer/docs/#Form-13F) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get all companies matching the cusip
data = company_from_cusip(fmp, "000360206")
```
"""
function company_from_cusip(fmp::FMP, cusip::String)
    endpoint = "cusip/$(cusip)"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end