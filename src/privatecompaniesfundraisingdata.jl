"""
    crowdfunding_offerings_feed(fmp, params...)

Returns crowdfunding offerings from the RSS feed.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [Crowdfunding-Offerings-Rss-Feed]\
(https://site.financialmodelingprep.com/developer/docs/#Crowdfunding-Offerings-Rss-feed) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the first page of results from the RSS feed
data = crowdfunding_offerings_feed(fmp, page = 0)
```
"""
function crowdfunding_offerings_feed(fmp::FMP; params...)
    endpoint = "crowdfunding-offerings-rss-feed"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    crowdfunding_offerings_search(fmp, name)

Returns crowfunding offering dates for the specified name.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `name::String`: A company name.

See [Crowdfunding-Offerings-Company-Search]\
(https://site.financialmodelingprep.com/developer/docs/#Crowdfunding-Offerings-Company-Search) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the crowdfunding offering dates for Enotap
data = crowdfunding_offerings_search(fmp, name = "Enotap")
```
"""
function crowdfunding_offerings_search(fmp::FMP; name::String)
    endpoint = "crowdfunding-offerings/search"
    url, query = Client.make_url_v4(fmp, endpoint; name)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
crowdfunding_offerings_search(fmp::FMP, name::String) = crowdfunding_offerings_search(fmp; name)

"""
    crowdfunding_offerings(fmp, cik)

Returns the crowdfunding offerings for the specified CIK.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `cik::String`: A CIK.

See [Crowdfunding-Offerings-by-CIK]\
(https://site.financialmodelingprep.com/developer/docs/#Crowdfunding-Offerings-by-CIK) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the crowdfundings offerings for OYO Fitness
data = crowdfunding_offerings(fmp, cik = "0001916078")
```
"""
function crowdfunding_offerings(fmp::FMP; cik::String)
    endpoint = "crowdfunding-offerings"
    url, query = Client.make_url_v4(fmp, endpoint; cik)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
crowdfunding_offerings(fmp::FMP, cik::String) = crowdfunding_offerings(fmp; cik)

"""
    equity_offerings_feed(fmp, params...)

Returns equity offerings from the RSS feed.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [Equity-Offerings-Fundraising-Rss-feed]\
(https://site.financialmodelingprep.com/developer/docs/#Equity-offerings-Fundraising-Rss-feed) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the first page of results from the RSS feed
data = equity_offerings_feed(fmp, page = 0)
```
"""
function equity_offerings_feed(fmp::FMP; params...)
    endpoint = "fundraising-rss-feed"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    equity_offerings_search(fmp, name)

Returns equity offering dates for the specified name.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `name::String`: A company name.

See [Equity-Offerings-Fundraising-Company-Search]\
(https://site.financialmodelingprep.com/developer/docs/#Equity-offerings-Fundraising-Company-Search) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the equity offering dates for Marinalife
data = equity_offerings_search(fmp, name = "Marinalife")
```
"""
function equity_offerings_search(fmp::FMP; name::String)
    endpoint = "fundraising/search"
    url, query = Client.make_url_v4(fmp, endpoint; name)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
equity_offerings_search(fmp::FMP, name::String) = equity_offerings_search(fmp; name)

"""
    equity_offerings(fmp, cik)

Returns the crowdfunding offerings for the specified CIK.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `cik::String`: A CIK.

See [Equity-Offerings-Fundraising-by-CIK]\
(https://site.financialmodelingprep.com/developer/docs/#Equity-offerings-Fundraising-by-CIK) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the equity offerings for Marinalife
data = equity_offerings(fmp, cik = "0001870523")
```
"""
function equity_offerings(fmp::FMP; cik::String)
    endpoint = "fundraising"
    url, query = Client.make_url_v4(fmp, endpoint, cik = cik)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
equity_offerings(fmp::FMP, cik::String) = equity_offerings(fmp; cik)
