@testset "etf_holders" begin
    @test isa(etf_holders(fmp, "SPY"), JSONTable)
end

@testset "etf_summary" begin
    @test_throws PermissionError isa(etf_summary(fmp, "SPY"), JSONTable)
end

@testset "institutional_holders" begin
    @test_throws PermissionError isa(institutional_holders(fmp, "AAPL"), JSONTable)
end

@testset "mutual_fund_holders" begin
    @test_throws PermissionError isa(mutual_fund_holders(fmp, "AAPL"), JSONTable)
end

@testset "etf_sector_weightings" begin
    @test isa(etf_sector_weightings(fmp, "SPY"), JSONTable)
end

@testset "etf_country_weightings" begin
    @test isa(etf_country_weightings(fmp, "SPY"), JSONTable)
end

@testset "etf_exposure" begin
    @test_throws PermissionError isa(etf_exposure(fmp, "SPY"), JSONTable)
end

@testset "institutions_list" begin
    @test isa(institutions_list(fmp), JSONTable)
end

@testset "cik_search" begin
    @test isa(cik_search(fmp, "Berkshire"), JSONTable)
end

@testset "company_from_cik" begin
    @test isa(company_from_cik(fmp, cik = "0001067983"), JSONTable)
end

@testset "forms_13f" begin
    @test isa(forms_13f(fmp, cik = "0001067983", "2022-06-30"), JSONTable)
end

@testset "filing_dates" begin
    @test isa(filing_dates(fmp, cik = "0001067983"), JSONArray)
end

@testset "company_from_cusip" begin
    @test isa(company_from_cusip(fmp, cik = "000360206"), JSONTable)
end
