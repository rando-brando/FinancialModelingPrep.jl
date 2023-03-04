# FinancialModelingPrep

[![Build Status](https://github.com/rando-brando/FinancialModelingPrep/workflows/CI/badge.svg)](https://github.com/rando-brando/FinancialModelingPrep/actions?query=workflow%3ACI)
[![Documentation Status](https://github.com/rando-brando/FinancialModelingPrep/workflows/Docs/badge.svg)](https://github.com/rando-brando/FinancialModelingPrep/actions?query=workflow%3ADocs)
[![codecov](https://codecov.io/gh/rando-brando/FinancialModelingPrep/branch/main/graph/badge.svg)](https://codecov.io/gh/rando-brando/FinancialModelingPrep)

[![](https://img.shields.io/badge/docs-stable-blue.svg)](https://rando-brando.github.io/FinancialModelingPrep/stable)
[![](https://img.shields.io/badge/docs-latest-blue.svg)](https://rando-brando.github.io/FinancialModelingPrep/dev)
[![Star on GitHub](https://img.shields.io/github/stars/rando-brando/FinancialModelingPrep.svg?style=social)](https://github.com/rando-brando/FinancialModelingPrep/stargazers)

*Financial Modeling Prep API wrapper with Julia*

## Disclaimer
Data is provided by [Financial Modeling Prep](https://financialmodelingprep.com/developer/docs/) and requires a paid subscription to access some endpoints.

Only endpoints available with a starter plan have been implemented. Function to endpoint mappings are provided below.

## Installation
``` julia
pkg> add FinancialModelingPrep
```

## Getting Started

``` julia
using FinancialModelingPrep
```
``` julia
# load your API key
FMP_API_KEY = ENV["FMP_API_KEY"]

# create a new FMP API instance
fmp = FMP(apikey = FMP_API_KEY)
```
``` julia
# pass API instance to any endpoint method
data = income_statements(fmp, "AAPL")
```
``` julia
using DataFrames

# load the response data into a data frame
df = DataFrame(data)
```
``` julia
# sample data frame output 
df[1:5, 1:4]
5×4 DataFrame
 Row │ incomeTaxExpense  reportedCurrency  incomeBeforeTaxRatio  depreciationAndAmortization 
     │ Int64             String            Float64               Int64                       
─────┼───────────────────────────────────────────────────────────────────────────────────────
   1 │      19300000000  USD                           0.30204                   11104000000
   2 │      14527000000  USD                           0.298529                  11284000000
   3 │       9680000000  USD                           0.244398                  11056000000
   4 │      10481000000  USD                           0.252666                  12547000000
   5 │      13372000000  USD                           0.274489                  10903000000
```

## Price Quotes
| Function | Endpoint(s) |
|----------|-------------|
| price_quote </br> price_quotes | [Stock-Quote](https://site.financialmodelingprep.com/developer/docs/#Stock-Price) </br> [Index-Quote](https://site.financialmodelingprep.com/developer/docs/#Most-of-the-majors-indexes-(Dow-Jones,-Nasdaq,-S&P-500)) </br> [Euronext-Quote](https://site.financialmodelingprep.com/developer/docs/#Most-of-the-EuroNext) </br>[TSX-Quote](https://site.financialmodelingprep.com/developer/docs/#Most-of-the-TSX) </br> [Crypto-Quote](https://site.financialmodelingprep.com/developer/docs/#Cryptocurrencies) <br> [Forex-Quote](https://site.financialmodelingprep.com/developer/docs/#Forex-(FX)) </br> [Commodity-Quote](https://site.financialmodelingprep.com/developer/docs/#Most-of-the-Major-Commodities-(Gold,-Silver,-Oil)) |
| historical_price_quote | [Historical-Stock-Quote](https://site.financialmodelingprep.com/developer/docs/#Stock-Historical-Price) </br> [Historical-Index-Quote](https://site.financialmodelingprep.com/developer/docs/#Historical-stock-index-prices) </br> [Historical-Euronext-Quote](https://site.financialmodelingprep.com/developer/docs/#Historical-EuroNext-prices) </br> [Historical-TSX-Quote](https://site.financialmodelingprep.com/developer/docs/#Historical-TSX-prices) </br> [Historical-Cryptocurrencies-Quote](https://site.financialmodelingprep.com/developer/docs/#Historical-Cryptocurrencies-Price) </br> [Historical-Forex-Quote](https://site.financialmodelingprep.com/developer/docs/#Historical-Forex-Price) </br> [Historical-Commodities-Quote](https://site.financialmodelingprep.com/developer/docs/#Historical-commodities-prices) |


## Stock Fundamentals
| Function | Endpoint(s) |
|----------|-------------|
| symbols_with_financials | [Financial-Statements-List](https://site.financialmodelingprep.com/developer/docs#Financial-Statements-List) |
| income_statements | [Income-Statements](https://site.financialmodelingprep.com/developer/docs#Company-Financial-Statements) <br/>[Income-Statements-As-Reported](https://site.financialmodelingprep.com/developer/docs#Company-Financial-Statements-As-Reported) |
| balance_sheet_statements | [Balance-Sheet-Statements](https://site.financialmodelingprep.com/developer/docs#Company-Financial-Statements) <br/> [Balance-Sheet-Statements-As-Reported](https://site.financialmodelingprep.com/developer/docs#Company-Financial-Statements-As-Reported) |
| cash_flow_statements | [Cash-Flow-Statements](https://site.financialmodelingprep.com/developer/docs#Company-Financial-Statements) <br/>[Cash-Flow-Statements-As-Reported](https://site.financialmodelingprep.com/developer/docs#Company-Financial-Statements-As-Reported) |
| financial_statements | [Full-Financial-Statements-As-Reported](https://site.financialmodelingprep.com/developer/docs#Company-Financial-Statements-As-Reported) |
| financial_reports | [Annual-Reports-on-Form-10-K](https://site.financialmodelingprep.com/developer/docs#Annual-Reports-on-Form-10-K) <br/>[Quarterly-Earnings-Reports](https://site.financialmodelingprep.com/developer/docs/#Quarterly-Earnings-Reports) |
| revenue_segments | [Sales-Revenue-By-Segments](https://site.financialmodelingprep.com/developer/docs/#Sales-Revenue-By-Segments) <br/> [Revenue-Geographic-by-Segments](https://site.financialmodelingprep.com/developer/docs/#Revenue-Geographic-by-Segments)
| shares_float | [Shares-Float](https://site.financialmodelingprep.com/developer/docs/#Shares-Float) |
| earnings_call_transcripts | [Earnings-Call-Transcript](https://site.financialmodelingprep.com/developer/docs/#Earning-Call-Transcript) |
| sec_filings | [SEC-Filings](https://site.financialmodelingprep.com/developer/docs/#SEC-Filings) |
| company_notes | [Company-Notes-Due](https://site.financialmodelingprep.com/developer/docs/#Company-Notes-due) |

## Stock Fundamentals Analysis
| Function | Endpoint(s) |
|----------|-------------|
| financial_ratios | [Financial-Ratios](https://site.financialmodelingprep.com/developer/docs/#Company-Financial-Ratios) |
| financial_scores | [Financial-Scores](https://site.financialmodelingprep.com/developer/docs/#Stock-Financial-scores) |
| owners_earnings | [Owners-Earnings](https://site.financialmodelingprep.com/developer/docs/#Stock-Financial-scores) |
| enterprise_values | [Enterprise-Value](https://site.financialmodelingprep.com/developer/docs/#Company-Enterprise-Value) |
| income_statements_growth | [Income-Statements-Growth](https://site.financialmodelingprep.com/developer/docs/#Financial-Statements-Growth) |
| balance_sheet_statements_growth | [Balance-Sheet-Statements-Growth](https://site.financialmodelingprep.com/developer/docs/#Financial-Statements-Growth) |
| cash_flow_statements_growth | [Cash-Flow-Statements-Growth](https://site.financialmodelingprep.com/developer/docs/#Financial-Statements-Growth) |
| financial_statements_growth | [Financial-Statements-Growth](https://site.financialmodelingprep.com/developer/docs/#Company-Financial-Growth) |
| key_metrics | [Key-Metrics](https://site.financialmodelingprep.com/developer/docs/#Company-Key-Metrics) |
| company_rating | [Company-Rating](https://site.financialmodelingprep.com/developer/docs/#Company-Rating) |
| historical_ratings | [Historical-Ratings](https://site.financialmodelingprep.com/developer/docs/#Company-Rating) |
| discounted_cash_flows | [Discounted-Cash-Flow](https://site.financialmodelingprep.com/developer/docs/#Company-Discounted-cash-flow-value) |
| historical_discounted_cash_flows | [Historical-Discounted-Cash-Flow](https://site.financialmodelingprep.com/developer/docs/#Company-Discounted-cash-flow-value) |

## Institutional Stock Ownership
*Skipped: Stock ownership endpoints require an enterprise plan.*

## ESG Score
| Function | Endpoint(s) |
|----------|-------------|
| esg_scores | [ESG-Score](https://site.financialmodelingprep.com/developer/docs/#ESG-SCORE) |
| esg_ratings | [ESG-Ratings](https://site.financialmodelingprep.com/developer/docs/#Company-ESG-Risk-Ratings) |
| esg_score_benchmarks | [ESG-Benchmarking](https://site.financialmodelingprep.com/developer/docs/#ESG-Benchmarking-By-Sector-and-Year) |

## Private Companies Fundraising Data
*Skipped.*

## Price Target
| Function | Endpoint(s) |
|----------|-------------|
| price_targets | [Price-Target](https://site.financialmodelingprep.com/developer/docs/#Price-Target)|
| price_targets_by_analyst | [Price-Target-by-Analyst-Name](https://site.financialmodelingprep.com/developer/docs/#Price-Target-By-Analyst-Name) |
| price_targets_by_company | [Price-Target-by-Analyst-Company](https://site.financialmodelingprep.com/developer/docs/#Price-Target-by-Analyst-Company) |
| price_targets_summary | [Price-Target-Summary](https://site.financialmodelingprep.com/developer/docs/#Price-target-Summary) |
| price_targets_consensus | [Price-Target-Consensus](https://site.financialmodelingprep.com/developer/docs/#Price-Target-Consensus) |
| price_targets_feed | [Price-Target-RSS-Feed](https://site.financialmodelingprep.com/developer/docs/#Price-Target-RSS-Feed) |

## Upgrades & Downgrades
| Function | Endpoint(s) |
|----------|-------------|
| upgrades_and_downgrades | [Upgrades-&-Downgrades](https://site.financialmodelingprep.com/developer/docs/#Upgrades-&-Downgrades) |
| upgrades_and_downgrades_feed | [Upgrades-&-Downgrades-RSS-Feed](https://site.financialmodelingprep.com/developer/docs/#Upgrades-&-Downgrades-RSS-Feed) |
| upgrades_and_downgrades_consensus | [Upgrades-&-Downgrades-Consensus](https://site.financialmodelingprep.com/developer/docs/#Upgrades-&-Downgrades-Consensus) |
| upgrades_and_downgrades_by_company | [Upgrades-&-Downgrades-by-Company](https://site.financialmodelingprep.com/developer/docs/#Upgrades-&-Downgrades-By-Company) |

## Historical ETF and Mutual Fund Holdings
*Skipped: Fund holdings endpoints require a professional plan.*

## Executive Compensation
*Skipped: Fund holdings endpoints require a professional plan.*

## Individual Beneficial Ownership
*Skipped: Fund holdings endpoints require a professional plan.*

## Stock Calendars
| Function | Endpoint(s) |
|----------|-------------|
| earnings_calendar | [Earnings-Calendar](https://site.financialmodelingprep.com/developer/docs/#Earnings-Calendar) |
| earnings_calendar_confirmed | [Earnings-Calendar-Confirmed](https://site.financialmodelingprep.com/developer/docs/#Earnings-Calendar-Confirmed) |
| ipo_calendar | [IPO-Calendar](https://site.financialmodelingprep.com/developer/docs/#IPO-Calendar) |
| ipo_calendar_with_prospectus | [IPO-Calendar-with-Prospectus](https://site.financialmodelingprep.com/developer/docs/#IPO-calendar-with-prospectus) |
| ipo_calendar_confirmed | [IPO-Calendar-Confirmed](https://site.financialmodelingprep.com/developer/docs/#IPO-calendar-Confirmed) |
| stock_split_calendar | [Stock-Split-Calendar](https://site.financialmodelingprep.com/developer/docs/#Stock-Split-Calendar) |
| dividend_calendar | [Dividend-Calendar](https://site.financialmodelingprep.com/developer/docs/#Dividend-Calendar) |
| historical_dividends | [Historical-Dividends](https://site.financialmodelingprep.com/developer/docs/#Historical-Dividends) |
| economic_calendar | [Economic-Calendar](https://site.financialmodelingprep.com/developer/docs/#Economic-Calendar) |


## Stock Look Up Tool
| Function | Endpoint(s) |
|----------|-------------|
| search_symbol | [Symbol-Search](https://site.financialmodelingprep.com/developer/docs/#Ticker-Search) |
| search_name | [Name-Search](https://site.financialmodelingprep.com/developer/docs/#Ticker-Search) |
| stock_screener | [Stock-Screener](https://site.financialmodelingprep.com/developer/docs/#Stock-Screener) |

## Company Information
| Function | Endpoint(s) |
|----------|-------------|
| company_profile | [Company-Profile](https://site.financialmodelingprep.com/developer/docs/#Company-Profile) |
| key_executives | [Key-Executives](https://site.financialmodelingprep.com/developer/docs/#Key-Executives) |
| company_outlook | [Company-Outlook](https://site.financialmodelingprep.com/developer/docs/#Company-Outlook) |
| stock_peers | [Stock-Peers](https://site.financialmodelingprep.com/developer/docs/#Stock-Peers) |
| nyse_schedule | [NYSE-Schedule](https://site.financialmodelingprep.com/developer/docs/#NYSE-Holidays-and-Trading-Hours) |
| delisted_companies | [Delisted-Companies](https://site.financialmodelingprep.com/developer/docs/#Delisted-Companies) |
| symbol_changes | [Symbol-Change](https://site.financialmodelingprep.com/developer/docs/#Symbol-Change) |
| company_information | [Stock-Peers](https://site.financialmodelingprep.com/developer/docs/#Stock-Peers) |

## Stock News
| Function | Endpoint(s) |
|----------|-------------|
| fmp_articles | [FMP-Articles](https://site.financialmodelingprep.com/developer/docs/#FMP-Articles) |
| stock_news | [Stock-News](https://site.financialmodelingprep.com/developer/docs/#Stock-News) |
| stock_news_sentiment_feed | [Stock-Sentiment](https://site.financialmodelingprep.com/developer/docs/#Stock-News) |
| crypto_news | [Crypto-News](https://site.financialmodelingprep.com/developer/docs/#Crypto-news) |
| forex_news | [Forex-News](https://site.financialmodelingprep.com/developer/docs/#Forex-news) |
| general_news | [General-News](https://site.financialmodelingprep.com/developer/docs/#General-news) |
| press_releases | [Press-Releases](https://site.financialmodelingprep.com/developer/docs/#Press-Releases) |

## Market Performance
| Function | Endpoint(s) |
|----------|-------------|
| sector_pe_ratios | [Sectors-PE-Ratio](https://site.financialmodelingprep.com/developer/docs/#Sectors-PE-Ratio) |
| industry_pe_ratios | [Industries-PE-Ratio](https://site.financialmodelingprep.com/developer/docs/#Industries-PE-Ratio) |
| sector_performances | [Sectors-Performance](https://site.financialmodelingprep.com/developer/docs/#Stock-Market-Sectors-Performance) |
| historical_sector_performances | [Sectors-Performance](https://site.financialmodelingprep.com/developer/docs/#Stock-Market-Sectors-Performance) |
| gainers | [Most-Gainer](https://site.financialmodelingprep.com/developer/docs/#Most-Gainer-Stock-Companies) |
| losers | [Most-Loser](https://site.financialmodelingprep.com/developer/docs/#Most-Loser-Stock-Companies) |
| most_active | [Most-Active](https://site.financialmodelingprep.com/developer/docs/#Most-Active-Stock-Companies) |

## Advanced Data
*Skipped:*

## Stock Statistics
| Function | Endpoint(s) |
|----------|-------------|
| social_sentiment | [Social-Sentiment](https://site.financialmodelingprep.com/developer/docs/#Social-Sentiment) |
| stock_grades | [Stock-Grade](https://site.financialmodelingprep.com/developer/docs/#Stock-Grade) |
| earnings_surprises | [Earnings-Surprises](https://site.financialmodelingprep.com/developer/docs/#Earnings-Surprises) |
| analyst_estimates | [Analyst-Estimates](https://site.financialmodelingprep.com/developer/docs/#Analyst-Estimates) |
| mergers_and_acquisitions_feed | [Mergers-and-Acquisitions-RSS-Feed](https://site.financialmodelingprep.com/developer/docs/#MERGER-AND-ACQUISITION) |
| mergers_and_acquisitions_search | [Mergers-and-Acquisitions](https://site.financialmodelingprep.com/developer/docs/#MERGER-AND-ACQUISITION) |


## Insider Trading
| Function | Endpoint(s) |
|----------|-------------|
| insider_trading_types | [Insider-Trading](https://site.financialmodelingprep.com/developer/docs/#Stock-Insider-Trading) |
| insider_trades | [Insider-Trading](https://site.financialmodelingprep.com/developer/docs/#Stock-Insider-Trading) |
| insider_trades_feed | [Insider-Trading-RSS-Feed](https://site.financialmodelingprep.com/developer/docs/#Insider-Trading-RSS-Feed) |
| cik_list | [CIK-Mapper](https://site.financialmodelingprep.com/developer/docs/#Stock-Insider-Trading) |
| cik_from_name | [CIK-Mapper](https://site.financialmodelingprep.com/developer/docs/#Stock-Insider-Trading) |
| cik_from_symbol | [CIK-Mapper](https://site.financialmodelingprep.com/developer/docs/#Stock-Insider-Trading) |
| insider_roster | [Insider-Roster](https://site.financialmodelingprep.com/developer/docs/#Stock-Insider-Trading) |
| insider_roster_statistics | [Insider-Roster-Statistics](https://site.financialmodelingprep.com/developer/docs/#Stock-Insider-Trading) |
| fails_to_deliver | [Fails-to-Deliver](https://site.financialmodelingprep.com/developer/docs/#Fail-to-deliver) |

## Senate Trading
| Function | Endpoint(s) |
|----------|-------------|
| senate_trades | [Senate-Trading](https://site.financialmodelingprep.com/developer/docs/#Senate-trading) |
| senate_trades_feed | [Senate-Trading-RSS-Feed](https://site.financialmodelingprep.com/developer/docs/#Senate-trading) |
| senate_disclosures | [Senate-Disclosure](https://site.financialmodelingprep.com/developer/docs/#Senate-disclosure) |
| senate_disclosures_feed | [Senate-Disclosure-RSS-Feed](https://site.financialmodelingprep.com/developer/docs/#Senate-disclosure) |

## Economics
| Function | Endpoint(s) |
|----------|-------------|
| market_risk_premium | [Market-Risk-Premium](https://site.financialmodelingprep.com/developer/docs/#Market-Risk-Premium) |
| treasury_rates | [Treasury-Rates](https://site.financialmodelingprep.com/developer/docs/#Treasury-Rates) |
| economic_indicator | [Economic-Indicator](https://site.financialmodelingprep.com/developer/docs/#Economic-Indicator) |

## Stock Price
| Function | Endpoint(s) |
|----------|-------------|
| otc_quote | [OTC-Quote](https://site.financialmodelingprep.com/developer/docs/#Company-Quote) |
| price_change | [Price-Change](https://site.financialmodelingprep.com/developer/docs/#Stock-price-change) |
| historical_splits | [Historical-Stock-Splits](https://site.financialmodelingprep.com/developer/docs/#Historical-Stock-Splits) |
| survivorship_bias | [Survivorship-Bias](https://site.financialmodelingprep.com/developer/docs/#Survivorship-Bias-Free-EOD) |
| technical_indicators | [Daily-Indicators](https://site.financialmodelingprep.com/developer/docs/#Daily-Indicators) </br> [Intraday-Indicators](https://site.financialmodelingprep.com/developer/docs/#Intraday-Indicators) |


## Fund Holdings
| Function | Endpoint(s) |
|----------|-------------|
| etf_holders | [ETF-Holders](https://site.financialmodelingprep.com/developer/docs/#ETF-Holders) |
| etf_summary | [ETF-Info](https://site.financialmodelingprep.com/developer/docs/#ETF-Expense-ratio) |
| institutional_holders | [Institutional-Holders](https://site.financialmodelingprep.com/developer/docs/#Institutional-Holders) |
| mutual_fund_holders | [Mutual-Fund-Holders](https://site.financialmodelingprep.com/developer/docs/#Mutual-Fund-Holders) |
| etf_sector_weightings | [ETF-Sector-Weightings](https://site.financialmodelingprep.com/developer/docs/#ETF-Sector-Weightings) |
| etf_country_weightings | [ETF-Country-Weightings](https://site.financialmodelingprep.com/developer/docs/#ETF-Country-Weightings) |
| etf_exposure | [ETF-Stock-Exposure](https://site.financialmodelingprep.com/developer/docs/#ETF-Stock-Exposure) |
| institutions_list | [Institutions-List](https://site.financialmodelingprep.com/developer/docs/#Form-13F) |
| cik_search | [Form-13F-Search](https://site.financialmodelingprep.com/developer/docs/#Form-13F) |
| company_from_cik | [CIK-Mapper](https://site.financialmodelingprep.com/developer/docs/#Form-13F) |
| forms_13f | [Form-13F](https://site.financialmodelingprep.com/developer/docs/#Form-13F) |
| filing_dates | [Form-13F-Filing-Dates](https://site.financialmodelingprep.com/developer/docs/#Form-13F) |
| company_from_cusip | [Cusip-Mapper](https://site.financialmodelingprep.com/developer/docs/#Form-13F) |

## Stock List
| Function | Endpoint(s) |
|----------|-------------|
| available_symbols | [Symbols-List](https://site.financialmodelingprep.com/developer/docs/#Symbols-List) |
| tradeable_symbols | [Tradeable-Symbols-List](https://site.financialmodelingprep.com/developer/docs/#Tradable-Symbols-List) |
| etf_symbols | [ETF-Symbols](https://site.financialmodelingprep.com/developer/docs/#ETF-List) |

## Bulk and Batch
*Skipped: Fund holdings endpoints require a professional plan.*

## Market Indexes
| Function | Endpoint(s) |
|----------|-------------|
| available_indexes | [Available-Indexes](https://site.financialmodelingprep.com/developer/docs/#Historical-stock-index-prices) |
| sp500_companies | [List-of-S&P-500-Companies](https://site.financialmodelingprep.com/developer/docs/#List-of-S&P-500-companies) </br> [Historical-S&P-500-Companies](https://site.financialmodelingprep.com/developer/docs/#Historical-S&P-500) |
| nasdaq_companies | [List-of-Nasdaq-100-Companies](https://site.financialmodelingprep.com/developer/docs/#List-of-Nasdaq-100-companies) |
| dowjones_companies | [List-of-Dow-Jones-Companies](https://site.financialmodelingprep.com/developer/docs/#List-of-Dow-Jones-companies) </br> [Historical-Dow-Jones-Companies](https://site.financialmodelingprep.com/developer/docs/#Historical-Dow-Jones) |

## Euronext
| Function | Endpoint(s) |
|----------|-------------|
| available_euronext | [Euronext-List](https://site.financialmodelingprep.com/developer/docs/#Most-of-the-EuroNext) |

## TSX
| Function | Endpoint(s) |
|----------|-------------|
| available_tsx | [TSX-List](https://site.financialmodelingprep.com/developer/docs/#Most-of-the-TSX) |

## Crypto, Forex, and Commodities
| Function | Endpoint(s) |
|----------|-------------|
| available_cryptocurrencies | [Cryptocurrencies-List](https://site.financialmodelingprep.com/developer/docs/#Historical-Cryptocurrencies-Price) |
| available_forex_pairs | [Forex-Pairs-List](https://site.financialmodelingprep.com/developer/docs/#Forex-(FX)) |
| exchange_rates | [Crypto-Quote](https://site.financialmodelingprep.com/developer/docs/#Cryptocurrencies) |
| available_commodities | [Commodities-List](https://site.financialmodelingprep.com/developer/docs/#Most-of-the-Major-Commodities-(Gold,-Silver,-Oil)) |