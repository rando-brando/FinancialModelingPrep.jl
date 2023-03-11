@testset "historical_employee_counts" begin
    @test_throws PermissionError historical_employee_counts(fmp, "AAPL")
end
