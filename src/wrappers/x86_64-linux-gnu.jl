# Autogenerated wrapper script for Antic_jll for x86_64-linux-gnu
export libantic

using FLINT_jll
using GMP_jll
using MPFR_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libantic`
const libantic_splitpath = ["lib", "libantic.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libantic_path = ""

# libantic-specific global declaration
# This will be filled out by __init__()
libantic_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libantic = "libantic.so.0"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Antic")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (FLINT_jll.PATH_list, GMP_jll.PATH_list, MPFR_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (FLINT_jll.LIBPATH_list, GMP_jll.LIBPATH_list, MPFR_jll.LIBPATH_list,))

    global libantic_path = normpath(joinpath(artifact_dir, libantic_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libantic_handle = dlopen(libantic_path)
    push!(LIBPATH_list, dirname(libantic_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

