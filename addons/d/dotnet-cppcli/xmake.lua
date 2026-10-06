package("dotnet-cppcli")
    set_kind("addon")
    set_homepage("https://github.com/microdee/xmake.dotnet-cppcli")
    set_description("A simple addon for compiling C++/CLI targeting CoreCLR or in English .NET 5+.")
    set_license("MIT")

    add_urls("https://github.com/microdee/xmake.dotnet-cppcli/archive/refs/tags/$(version).tar.gz",
             "https://github.com/microdee/xmake.dotnet-cppcli.git")
    add_versions("v1.0.0", "13439ae461f0e988be4251afac27696afc66dd3cc5bfe34c61dd7eb3018e9dc9")

    on_test(function (package)
        assert(package:has_addon({
            rules   = "cppcli",
            modules = "cppcli"
        }))
    end)
