add_rules("mode.debug")

set_languages("c++20")

add_repositories("MrowrLib https://github.com/MrowrLib/Packages.git")
add_requires("_Log_", "spdlog")

target("global_macro_functions")
    set_kind("headeronly")
    add_headerfiles("include/(**.h)")
    add_includedirs("include", { public = true })

target("Example")
    set_kind("binary")
    add_files("Example.cpp")
    add_deps("global_macro_functions")
    add_packages("_Log_", "spdlog")
