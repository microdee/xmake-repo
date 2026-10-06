package("rats-utils")
    set_kind("addon")
    set_homepage("https://github.com/microdee/xmake.rats-utils")
    set_description("Commonly usable very generic utilities for other xmake addons.")
    set_license("MIT")

    add_urls("https://github.com/microdee/xmake.rats-utils/archive/refs/tags/$(version).tar.gz",
             "https://github.com/microdee/xmake.rats-utils.git")
    add_versions("v1.0.0", "82c8dfe3844fc4768dd4c8df126087de4677a9815ffa36b02a1f1b146b4d55e4")

    on_test(function (package)
        assert(package:has_addon({
            rules   = "rsteps",
            modules = {"rpath", "rsteps", "rtable"}
        }))
    end)
