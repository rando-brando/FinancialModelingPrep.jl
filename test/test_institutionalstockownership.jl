@testset "institutional_positions" begin
    @test_throws PermissionError institutional_positions(fmp, "AAPL", includeCurrentQuarter = true)
end

@testset "institutional_ownership_percentages" begin
    @test_throws PermissionError institutional_ownership_percentages(fmp, "AAPL", date = "2021-09-30")
end

@testset "institutional_ownership_weightings" begin
    @test_throws PermissionError institutional_ownership_weightings(fmp, "AAPL", date = "2021-09-30")
end

@testset "institutional_ownership_feed" begin
    @test_throws PermissionError institutional_ownership_feed(fmp, page = 0)
end

@testset "institution_search" begin
    @test_throws PermissionError institution_search(fmp, name = "Berkshire%20Hathaway%20Inc")
end

@testset "institution_portfolio_dates" begin
    @test_throws PermissionError institution_portfolio_dates(fmp, cik = "0001067983")
end

@testset "institution_portfolio_summary" begin
    @test_throws PermissionError institution_portfolio_summary(fmp, cik = "0001067983")
end

@testset "institution_portfolio_industry_summary" begin
    @test_throws PermissionError institution_portfolio_industry_summary(fmp, cik = "0001067983", date = "2021-09-30")
end

@testset "institution_portfolio_composition" begin
    @test_throws PermissionError institution_portfolio_composition(fmp, cik = "0001067983", date = "2021-09-30")
end
