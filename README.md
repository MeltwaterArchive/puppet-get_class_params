get_class_params
================

This Puppet function accepts a class name as argument and will retrieve the class names parameters and their values. Note that this only retrieves a the class definition parameters, not the parameters of an instance of the class.

An example of a use case is to generate a script that can handle all the parameters of an application managed by Puppet and use those variables to override the application configuration at runtime. This works out nicely with Docker, where you'd build a container using Puppet, but on deploying it to different environments you'd like to alter several parameters without rebuilding the container.

Usage
-----

```
class_param_hash = get_class_params("myapp")
```

Support
-------

Please log tickets and issues at our [Projects site](http://github.com/meltwater/puppet-get_class_params)
