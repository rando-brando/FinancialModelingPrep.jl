@testset "crowdfunding_offerings_feed" begin
    @test_throws PermissionError isa(crowdfunding_offerings_feed(fmp, page = 0), JSONTable)
end

@testset "crowdfunding_offerings_search" begin
    @test_throws PermissionError isa(crowdfunding_offerings_search(fmp, name = "Enotap"), JSONTable)
end

@testset "crowdfunding_offerings" begin
    @test_throws PermissionError isa(crowdfunding_offerings(fmp, cik = "0001067983"), JSONTable)
end

@testset "equity_offerings_feed" begin
    @test_throws PermissionError isa(equity_offerings_feed(fmp, page = 0), JSONTable)
end

@testset "equity_offerings_search" begin
    @test_throws PermissionError isa(equity_offerings_search(fmp, name = "Marinalife"), JSONTable)
end

@testset "equity_offerings" begin
    @test_throws PermissionError isa(equity_offerings(fmp, cik = "0001067983"), JSONTable)
end
