@testset "historical_employee_counts" begin
    @test_throws PermissionError isa(historical_employee_counts(fmp, "AAPL"), JSONTable)
end
