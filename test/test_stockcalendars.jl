@testset "earnings_calendar" begin
    @test_throws PermissionError earnings_calendar(fmp, from = "2022-01-01", to = "2022-03-31")
end

@testset "historical_earnings_calendar" begin
    @test_throws PermissionError historical_earnings_calendar(fmp, "AAPL", limit = 50)
end

@testset "earnings_calendar_confirmed" begin
    @test_throws PermissionError earnings_calendar_confirmed(fmp, from = "2022-01-01", to = "2022-03-31")
end

@testset "ipo_calendar" begin
    @test_throws PermissionError ipo_calendar(fmp, from = "2022-01-01", to = "2022-03-31")
end

@testset "ipo_calendar_prospectus" begin
    @test_throws PermissionError ipo_calendar_prospectus(fmp, from = "2022-01-01", to = "2022-03-31")
end

@testset "ipo_calendar_confirmed" begin
    @test_throws PermissionError ipo_calendar_confirmed(fmp, from = "2022-01-01", to = "2022-03-31")
end

@testset "stock_split_calendar" begin
    @test isa(stock_split_calendar(fmp, from = "2022-01-01", to = "2022-03-31"), JSONTable)
end

@testset "dividend_calendar" begin
    @test isa(dividend_calendar(fmp, from = "2022-01-01", to = "2022-03-31"), JSONTable)
end

@testset "historical_dividends" begin
    @test isa(historical_dividends(fmp, "AAPL"), JSONTable)
end

@testset "economic_calendar" begin
    @test_throws PermissionError economic_calendar(fmp, from = "2022-01-01", to = "2022-03-31")
end
