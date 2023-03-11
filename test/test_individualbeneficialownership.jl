@testset "beneficial_ownership" begin
    @test_throws PermissionError beneficial_ownership(fmp, "AAPL")
end
