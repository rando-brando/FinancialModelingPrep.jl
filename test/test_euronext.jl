@testset "available_euronext" begin
    @test !isempty(available_euronext(fmp))
end