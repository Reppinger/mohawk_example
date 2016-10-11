require 'mohawk'

Before do
 Mohawk.start
end

After do
  Mohawk.stop
end