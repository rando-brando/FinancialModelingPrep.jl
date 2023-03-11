module Exceptions

"""
    PermissionError(message)

Throws a permission error.
"""
struct PermissionError <: Exception
    message::String
end

end # module Exceptions
