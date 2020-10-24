# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule Antic_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("Antic")
JLLWrappers.@generate_main_file("Antic", UUID("e21ec000-9f72-519e-ba6d-10061e575a27"))
end  # module Antic_jll
