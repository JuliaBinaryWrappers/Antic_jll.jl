# Autogenerated wrapper script for Antic_jll for armv7l-linux-gnueabihf
export libantic

using FLINT_jll
using GMP_jll
using MPFR_jll
JLLWrappers.@generate_wrapper_header("Antic")
JLLWrappers.@declare_library_product(libantic, "libantic.so.0")
function __init__()
    JLLWrappers.@generate_init_header(FLINT_jll, GMP_jll, MPFR_jll)
    JLLWrappers.@init_library_product(
        libantic,
        "lib/libantic.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
