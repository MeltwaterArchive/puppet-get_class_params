module Puppet::Parser::Functions
  newfunction(
  :get_class_params, :type => :rvalue,
  :doc => "Get class parameters, their values and return as hash") do |args|

  resourcex = self.find_defined_resource_type(args[0])
  resourcex = resourcex.to_data_hash

  return resourcex["parameters"]
  end 
end
