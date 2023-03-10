@testset "earnings_calendar" begin
    @test isa(earnings_calendar(fmp, from = "2022-01-01", to = "2022-03-31"), JSONTable)
    @test isa(earnings_calendar(fmp, "AAPL", limit = 5), JSONTable)
end

@testset "earnings_calendar_confirmed" begin
    @test isa(earnings_calendar_confirmed(fmp, from = "2022-01-01", to = "2022-03-31"), JSONTable)
end

@testset "ipo_calendar" begin
    @test isa(ipo_calendar(fmp, from = "2022-01-01", to = "2022-03-31"), JSONTable)
end

@testset "ipo_calendar_prospectus" begin
    @test isa(ipo_calendar_prospectus(fmp, from = "2022-01-01", to = "2022-03-31"), JSONTable)
end

@testset "ipo_calendar_confirmed" begin
    @test isa(ipo_calendar_confirmed(fmp, from = "2022-01-01", to = "2022-03-31"), JSONTable)
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
    @test isa(economic_calendar(fmp, from = "2022-01-01", to = "2022-03-31"), JSONTable)
end