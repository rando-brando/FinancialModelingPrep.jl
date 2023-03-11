@testset "historical_employee_counts" begin
    @test isa(historical_employee_counts(fmp, "AAPL"), JSONTable)
end
