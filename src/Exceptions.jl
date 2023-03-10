module Exceptions

struct PermissionError <: Exception
    message::String
end

end # module Exceptions
