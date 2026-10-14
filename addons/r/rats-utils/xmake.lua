package("rats-utils")
    set_kind("addon")
    set_homepage("https://github.com/microdee/xmake.rats-utils")
    set_description("Commonly usable very generic utilities for other xmake addons.")
    set_license("MIT")

    add_urls(
        "https://github.com/microdee/xmake.rats-utils/archive/refs/tags/$(version).tar.gz",
        "https://github.com/microdee/xmake.rats-utils.git"
    )
    add_versions("v1.0.2", "9b66aafb357a3ea17a553e87e3d1b3923a557413e331a7a803781f379ed92095")

    on_test(function (package)
        assert(package:has_addon({
            rules   = "rsteps",
            modules = {"rpath", "rsteps", "rtable"}
        }))
    end)
