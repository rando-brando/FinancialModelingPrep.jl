@testset "etf_holders" begin
    @test_throws PermissionError etf_holders(fmp, "SPY")
end

@testset "etf_summary" begin
    @test_throws PermissionError etf_summary(fmp, "SPY")
end

@testset "institutional_holders" begin
    @test_throws PermissionError institutional_holders(fmp, "AAPL")
end

@testset "mutual_fund_holders" begin
    @test_throws PermissionError mutual_fund_holders(fmp, "AAPL")
end

@testset "etf_sector_weightings" begin
    @test_throws PermissionError etf_sector_weightings(fmp, "SPY")
end

@testset "etf_country_weightings" begin
    @test_throws PermissionError etf_country_weightings(fmp, "SPY")
end

@testset "etf_exposure" begin
    @test_throws PermissionError etf_exposure(fmp, "SPY")
end

@testset "institutions_list" begin
    @test isa(institutions_list(fmp), JSONTable)
end

@testset "cik_search" begin
    @test_throws PermissionError cik_search(fmp, "Berkshire")
end

@testset "company_from_cik" begin
    @test_throws PermissionError company_from_cik(fmp, cik = "0001067983")
end

@testset "forms_13f" begin
    @test_throws PermissionError forms_13f(fmp, cik = "0001067983", date = "2022-06-30")
end

@testset "filing_dates" begin
    @test_throws PermissionError filing_dates(fmp, cik = "0001067983")
end

@testset "company_from_cusip" begin
    @test_throws PermissionError company_from_cusip(fmp, cusip = "000360206")
end
