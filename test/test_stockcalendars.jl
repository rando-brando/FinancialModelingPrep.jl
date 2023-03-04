@testset "earnings_calendar" begin
    @test !isempty(earnings_calendar(fmp, from = "2022-01-01", to = "2022-03-31")[1])
    @test !isempty(earnings_calendar(fmp, "AAPL", limit = 5)[1])
end

@testset "earnings_calendar_confirmed" begin
    @test !isempty(earnings_calendar_confirmed(fmp, from = "2022-01-01", to = "2022-03-31")[1])
end

@testset "ipo_calendar" begin
    @test !isempty(ipo_calendar(fmp, from = "2022-01-01", to = "2022-03-31")[1])
end

@testset "ipo_calendar_prospectus" begin
    @test !isempty(ipo_calendar_prospectus(fmp, from = "2022-01-01", to = "2022-03-31")[1])
end

@testset "ipo_calendar_confirmed" begin
    @test !isempty(ipo_calendar_confirmed(fmp, from = "2022-01-01", to = "2022-03-31")[1])
end

@testset "stock_split_calendar" begin
    @test !isempty(stock_split_calendar(fmp, from = "2022-01-01", to = "2022-03-31")[1])
end

@testset "dividend_calendar" begin
    @test !isempty(dividend_calendar(fmp, from = "2022-01-01", to = "2022-03-31")[1])
end

@testset "historical_dividends" begin
    @test !isempty(historical_dividends(fmp, "AAPL")[1])
end

@testset "economic_calendar" begin
    @test !isempty(economic_calendar(fmp, from = "2022-01-01", to = "2022-03-31")[1])
end