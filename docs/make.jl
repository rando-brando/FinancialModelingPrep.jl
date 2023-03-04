using Documenter
using FinancialModelingPrep

makedocs(
    sitename = "FinancialModelingPrep",
    authors = "rando-brando",
    format = Documenter.HTML(),
    modules = [FinancialModelingPrep],
    pages = [
        "Introduction" => "index.md",
        "Client" => "client.md",
        "Endpoints" => Any[
            "Price Quotes" => "pricequotes.md",
            "Stock Fundamentals" => "stockfundamentals.md",
            "Stock Fundamentals Analysis" => "stockfundamentalsanalysis.md",
            "ESG Score" => "esgscore.md",
            "Price Target" => "pricetarget.md",
            "Upgrades & Downgrades" => "upgradesdowngrades.md",
            "Stock Calendars" => "stockcalendars.md",
            "Stock Screener" => "stockscreener.md",
            "Company Information" => "companyinformation.md",
            "Stock News" => "stocknews.md",
            "Market Performance" => "marketperformance.md",
            "Stock Statistics" => "stockstatistics.md",
            "Insider Trading" => "insidertrading.md",
            "Senate Trading" => "senatetrading.md",
            "Economics" => "economics.md",
            "Stock Price" => "stockprice.md",
            "Fund Holdings" => "fundholdings.md",
            "Stock List" => "stocklist.md",
            "Market Indexes" => "marketindexes.md",
            "Euronext" => "euronext.md",
            "TSX" => "tsx.md",
            "Crypto & Forex & Commodities" => "cryptoforexcommodities.md"
        ]
    ]
)

deploydocs(
    repo = "github.com/rando-brando/FinancialModelingPrep.jl"
)
