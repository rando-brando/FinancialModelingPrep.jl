using FinancialModelingPrep
using Test
import DotEnv

# load the envrionment variables
DotEnv.config("../.env")

# load the API key
FMP_API_KEY = ENV["FMP_API_KEY"]

# create a new FMP API instance
fmp = FMP(api_key = FMP_API_KEY)

include("test_pricequotes.jl")
include("test_stockfundamentals.jl")
include("test_stockfundamentalsanalysis.jl")
include("test_esgscores.jl")
include("test_pricetarget.jl")
include("test_upgradesdowngrades.jl")
include("test_stockcalendars.jl")
include("test_stockscreener.jl")
include("test_companyinformation.jl")
include("test_stocknews.jl")
include("test_marketperformance.jl")
#include("test_stockstatistics.jl")
#include("test_insidertrading.jl")
#include("test_senatetrading.jl")
#include("test_economics.jl")
#include("test_stockprice.jl")
#include("test_fundholdings.jl")
#include("test_stocklist.jl")
#include("test_marketindexes.jl")
#include("test_euronext.jl")
#include("test_tsx.jl")
#include("test_cryptoforexcommodities.jl")