# FinancialModelingPrep

*Financial Modeling Prep API wrapper with Julia*

## Disclaimer
Data is provided by [Financial Modeling Prep](https://financialmodelingprep.com/developer/docs/) and requires a paid subscription to access some endpoints.

Not all endpoints may be covered by this package. Endpoints which are covered are listed in the sections below.

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
fmp = FMP(api_key = FMP_API_KEY)
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



## Stock Fundamentals
| Function | Endpoint(s) |
|----------|----------|
| symbols_with_financials | [Financial-Statements-List](https://site.financialmodelingprep.com/developer/docs#Financial-Statements-List) |
| income_statements | [Company-Financial-Statements](https://site.financialmodelingprep.com/developer/docs#Company-Financial-Statements) <br/>[Company-Financial-Statements-As-Reported](https://site.financialmodelingprep.com/developer/docs#Company-Financial-Statements-As-Reported) |
| balance_sheet_statements | [Company-Financial-Statements](https://site.financialmodelingprep.com/developer/docs#Company-Financial-Statements) <br/> [Company-Financial-Statements-As-Reported](https://site.financialmodelingprep.com/developer/docs#Company-Financial-Statements-As-Reported) |
| cash_flow_statements | [Company-Financial-Statements](https://site.financialmodelingprep.com/developer/docs#Company-Financial-Statements) <br/>[Company-Financial-Statements-As-Reported](https://site.financialmodelingprep.com/developer/docs#Company-Financial-Statements-As-Reported) |
| financial_statements | [Company-Financial-Statements-As-Reported](https://site.financialmodelingprep.com/developer/docs#Company-Financial-Statements-As-Reported) |
| financial_reports | [Annual-Reports-on-Form-10-K](https://site.financialmodelingprep.com/developer/docs#Annual-Reports-on-Form-10-K) <br/>[Quarterly-Earnings-Reports](https://site.financialmodelingprep.com/developer/docs/#Quarterly-Earnings-Reports) |
| revenue_segments | [Sales-Revenue-By-Segments](https://site.financialmodelingprep.com/developer/docs/#Sales-Revenue-By-Segments) <br/> [Revenue-Geographic-by-Segments](https://site.financialmodelingprep.com/developer/docs/#Revenue-Geographic-by-Segments)
| shares_float | [Shares-Float](https://site.financialmodelingprep.com/developer/docs/#Shares-Float) |
| earnings_call_transcripts | [Earnings-Call-Transcript](https://site.financialmodelingprep.com/developer/docs/#Earning-Call-Transcript) |
| sec_filings | [SEC-Filings](https://site.financialmodelingprep.com/developer/docs/#SEC-Filings) |
| company_notes | [Company-Notes-Due](https://site.financialmodelingprep.com/developer/docs/#Company-Notes-due) |

## Stock Fundamentals Analysis
| Function | Endpoint(s) |
|----------|----------|
| financial_ratios | [Company-Financial-Ratios](https://site.financialmodelingprep.com/developer/docs/#Company-Financial-Ratios) |
| financial_scores | [Stock-Financial-Scores](https://site.financialmodelingprep.com/developer/docs/#Stock-Financial-scores) |
| owners_earnings | [Stock-Financial-Scores](https://site.financialmodelingprep.com/developer/docs/#Stock-Financial-scores) |
| enterprise_values | [Company-Enterprise-Value](https://site.financialmodelingprep.com/developer/docs/#Company-Enterprise-Value) |
| income_statements_growth | [Financial-Statements-Growth](https://site.financialmodelingprep.com/developer/docs/#Financial-Statements-Growth) |
| balance_sheet_statements_growth | [Financial-Statements-Growth](https://site.financialmodelingprep.com/developer/docs/#Financial-Statements-Growth) |
| cash_flow_statements_growth | [Financial-Statements-Growth](https://site.financialmodelingprep.com/developer/docs/#Financial-Statements-Growth) |
| financial_statements_growth | [Company-Financial-Growth](https://site.financialmodelingprep.com/developer/docs/#Company-Financial-Growth) |
| key_metrics | [Company-Key-Metrics](https://site.financialmodelingprep.com/developer/docs/#Company-Key-Metrics) |
| company_rating | [Company-Rating](https://site.financialmodelingprep.com/developer/docs/#Company-Rating) |
| historical_ratings | [Company-Rating](https://site.financialmodelingprep.com/developer/docs/#Company-Rating) |
| discounted_cash_flows | [Company-Discounted-cash-flow-value](https://site.financialmodelingprep.com/developer/docs/#Company-Discounted-cash-flow-value) |
| historical_discounted_cash_flows | [Company-Discounted-cash-flow-value](https://site.financialmodelingprep.com/developer/docs/#Company-Discounted-cash-flow-value) |

## Institutional Stock Ownership
| Function | Endpoint(s) |
|----------|----------|

## ESG Score
| Function | Endpoint(s) |
|----------|----------|
| esg_scores | [ESG-Score](https://site.financialmodelingprep.com/developer/docs/#ESG-SCORE) |
| esg_ratings | [ESG-Ratings](https://site.financialmodelingprep.com/developer/docs/#Company-ESG-Risk-Ratings) |
| esg_score_benchmarks | [ESG-Benchmarking](https://site.financialmodelingprep.com/developer/docs/#ESG-Benchmarking-By-Sector-and-Year) |

## Private Companies Fundraising Data
| Function | Endpoint(s) |
|----------|----------|

## Price Target
| Function | Endpoint(s) |
|----------|----------|
| price_targets | [Price-Target](https://site.financialmodelingprep.com/developer/docs/#Price-Target)|
| price_targets_by_analyst | [Price-Target-by-Analyst-Name](https://site.financialmodelingprep.com/developer/docs/#Price-Target-By-Analyst-Name) |
| price_targets_by_company | [Price-Target-by-Analyst-Company](https://site.financialmodelingprep.com/developer/docs/#Price-Target-by-Analyst-Company) |
| price_targets_summary | [Price-Target-Summary](https://site.financialmodelingprep.com/developer/docs/#Price-target-Summary) |
| price_targets_consensus | [Price-Target-Consensus](https://site.financialmodelingprep.com/developer/docs/#Price-Target-Consensus) |
| price_targets_feed | [Price-Target-RSS-Feed](https://site.financialmodelingprep.com/developer/docs/#Price-Target-RSS-Feed) |

## Upgrades & Downgrades
| Function | Endpoint(s) |
|----------|----------|
| upgrades_and_downgrades | [Upgrades-&-Downgrades](https://site.financialmodelingprep.com/developer/docs/#Upgrades-&-Downgrades) |
| upgrades_and_downgrades_feed | [Upgrades-&-Downgrades-RSS-Feed](https://site.financialmodelingprep.com/developer/docs/#Upgrades-&-Downgrades-RSS-Feed) |
| upgrades_and_downgrades_consensus | [Upgrades-&-Downgrades-Consensus](https://site.financialmodelingprep.com/developer/docs/#Upgrades-&-Downgrades-Consensus) |
| upgrades_and_downgrades_by_company | [Upgrades-&-Downgrades-By-Company](https://site.financialmodelingprep.com/developer/docs/#Upgrades-&-Downgrades-By-Company) |

## Historical ETF and Mutual Fund Holdings
| Function | Endpoint(s) |
|----------|----------|

## Executive Compensation
| Function | Endpoint(s) |
|----------|----------|

## Individual Beneficial Ownership
| Function | Endpoint(s) |
|----------|----------|

## Stock Calendars
| Function | Endpoint(s) |
|----------|----------|

## Stock Look Up Tool
| Function | Endpoint(s) |
|----------|----------|

## Company Information
| Function | Endpoint(s) |
|----------|----------|
| company_profile | [Company-Profile](https://site.financialmodelingprep.com/developer/docs/#Company-Profile) |
| key_executives | [Key-Executives](https://site.financialmodelingprep.com/developer/docs/#Key-Executives) |
| company_outlook | [Company-Outlook](https://site.financialmodelingprep.com/developer/docs/#Company-Outlook) |
| stock_peers | [Stock-Peers](https://site.financialmodelingprep.com/developer/docs/#Stock-Peers) |
| nyse_schedule | [NYSE-Holidays-and-Trading-Hours](https://site.financialmodelingprep.com/developer/docs/#NYSE-Holidays-and-Trading-Hours) |
| delisted_companies | [Delisted-Companies](https://site.financialmodelingprep.com/developer/docs/#Delisted-Companies) |
| symbol_changes | [Symbol-Change](https://site.financialmodelingprep.com/developer/docs/#Symbol-Change) |
| company_information | [Stock-Peers](https://site.financialmodelingprep.com/developer/docs/#Stock-Peers) |

## Stock News
| Function | Endpoint(s) |
|----------|----------|

## Market Performance
| Function | Endpoint(s) |
|----------|----------|

## Advanced Data
| Function | Endpoint(s) |
|----------|----------|

## Stock Statistics
| Function | Endpoint(s) |
|----------|----------|
| social_sentiment | [Social-Sentiment](https://site.financialmodelingprep.com/developer/docs/#Social-Sentiment) |
| stock_grades | [Stock-Grade](https://site.financialmodelingprep.com/developer/docs/#Stock-Grade) |
| earnings_surprises | [Earnings-Surprises](https://site.financialmodelingprep.com/developer/docs/#Earnings-Surprises) |
| analyst_estimates | [Analyst-Estimates](https://site.financialmodelingprep.com/developer/docs/#Analyst-Estimates) |
| mergers_and_acquisitions_feed | [Mergers-and-Acquisitions](https://site.financialmodelingprep.com/developer/docs/#MERGER-AND-ACQUISITION) |
| mergers_and_acquisitions_search | [Mergers-and-Acquisitions](https://site.financialmodelingprep.com/developer/docs/#MERGER-AND-ACQUISITION) |


## Insider Trading
| Function | Endpoint(s) |
|----------|----------|

## Senate Trading
| Function | Endpoint(s) |
|----------|----------|

## Economics
| Function | Endpoint(s) |
|----------|----------|

## Stock Price
| Function | Endpoint(s) |
|----------|----------|

## Fund Holdings
| Function | Endpoint(s) |
|----------|----------|

## Stock List
| Function | Endpoint(s) |
|----------|----------|

## Bulk and Batch
| Function | Endpoint(s) |
|----------|----------|

## Market Indexes
| Function | Endpoint(s) |
|----------|----------|

## Euronext
| Function | Endpoint(s) |
|----------|----------|

## TSX
| Function | Endpoint(s) |
|----------|----------|

## Crypto, Forex, and Commodities
| Function | Endpoint(s) |
|----------|----------|