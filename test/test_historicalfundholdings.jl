@testset "mutual_fund_portfolio_dates" begin
    @test_throws PermissionError isa(mutual_fund_portfolio_dates(fmp, "VTSAX"), JSONTable)
    @test_throws PermissionError isa(mutual_fund_portfolio_dates(fmp, cik = "0000034066"), JSONTable)
end

@testset "mutual_fund_portfolio" begin
    @test_throws PermissionError isa(mutual_fund_portfolio(fmp, "VTSAX", date = "2021-12-31"), JSONTable)
    @test_throws PermissionError isa(mutual_fund_portfolio(fmp, cik = "0000034066", date = "2021-12-31"), JSONTable)
end

@testset "mutual_fund_search" begin
    @test_throws PermissionError isa(mutual_fund_search(fmp, name = "Vanguard"), JSONTable)
end

@testset "etf_portfolio_dates" begin
    @test_throws PermissionError isa(etf_portfolio_dates(fmp, "VOO"), JSONTable)
    @test_throws PermissionError isa(etf_portfolio_dates(fmp, cik = "0000036405"), JSONTable)
end

@testset "etf_portfolio" begin
    @test_throws PermissionError isa(etf_portfolio(fmp, "VOO", date = "2021-12-31"), JSONTable)
    @test_throws PermissionError isa(etf_portfolio(fmp, cik = "0000036405", date = "2021-12-31"), JSONTable)
end
