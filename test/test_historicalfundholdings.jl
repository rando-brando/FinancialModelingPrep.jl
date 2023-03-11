@testset "mutual_fund_portfolio_dates" begin
    @test_throws PermissionError mutual_fund_portfolio_dates(fmp, "VTSAX")
    @test_throws PermissionError mutual_fund_portfolio_dates(fmp, cik = "0000034066")
end

@testset "mutual_fund_portfolio" begin
    @test_throws PermissionError mutual_fund_portfolio(fmp, "VTSAX", date = "2021-12-31")
    @test_throws PermissionError mutual_fund_portfolio(fmp, cik = "0000034066", date = "2021-12-31")
end

@testset "mutual_fund_search" begin
    @test_throws PermissionError mutual_fund_search(fmp, name = "Vanguard")
end

@testset "etf_portfolio_dates" begin
    @test_throws PermissionError etf_portfolio_dates(fmp, "VOO")
    @test_throws PermissionError etf_portfolio_dates(fmp, cik = "0000036405")
end

@testset "etf_portfolio" begin
    @test_throws PermissionError etf_portfolio(fmp, "VOO", date = "2021-12-31")
    @test_throws PermissionError etf_portfolio(fmp, cik = "0000036405", date = "2021-12-31")
end
