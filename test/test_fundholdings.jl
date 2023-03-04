@testset "etf_holders" begin
    @test !isempty(etf_holders(fmp, "SPY")[1])
end

@testset "etf_summary" begin
    @test !isempty(etf_summary(fmp, "SPY")[1])
end

@testset "institutional_holders" begin
    @test !isempty(institutional_holders(fmp, "AAPL")[1])
end

@testset "mutual_fund_holders" begin
    @test !isempty(mutual_fund_holders(fmp, "AAPL")[1])
end

@testset "etf_sector_weightings" begin
    @test !isempty(etf_sector_weightings(fmp, "SPY")[1])
end

@testset "etf_country_weightings" begin
    @test !isempty(etf_country_weightings(fmp, "SPY")[1])
end

@testset "etf_exposure" begin
    @test !isempty(etf_exposure(fmp, "SPY")[1])
end

@testset "institutions_list" begin
    @test !isempty(institutions_list(fmp)[1])
end

@testset "cik_search" begin
    @test !isempty(cik_search(fmp, "Berkshire")[1])
end

@testset "company_from_cik" begin
    @test !isempty(company_from_cik(fmp, "0001067983")[1])
end

@testset "forms_13f" begin
    @test !isempty(forms_13f(fmp, "0001067983", "2022-06-30")[1])
end

@testset "filing_dates" begin
    @test !isempty(filing_dates(fmp, "0001067983")[1])
end

@testset "company_from_cusip" begin
    @test !isempty(company_from_cusip(fmp, "000360206")[1])
end