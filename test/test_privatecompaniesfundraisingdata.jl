@testset "crowdfunding_offerings_feed" begin
    @test_throws PermissionError crowdfunding_offerings_feed(fmp, page = 0)
end

@testset "crowdfunding_offerings_search" begin
    @test_throws PermissionError crowdfunding_offerings_search(fmp, name = "Enotap")
end

@testset "crowdfunding_offerings" begin
    @test_throws PermissionError crowdfunding_offerings(fmp, cik = "0001067983")
end

@testset "equity_offerings_feed" begin
    @test_throws PermissionError equity_offerings_feed(fmp, page = 0)
end

@testset "equity_offerings_search" begin
    @test_throws PermissionError equity_offerings_search(fmp, name = "Marinalife")
end

@testset "equity_offerings" begin
    @test_throws PermissionError equity_offerings(fmp, cik = "0001067983")
end
