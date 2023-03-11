@testset "beneficial_ownership" begin
    @test_throws PermissionError isa(beneficial_ownership(fmp, "AAPL"), JSONTable)
end
