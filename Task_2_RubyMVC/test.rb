class Object
  def metaclass
    class << self; self; end
  end
end

class Main
  def Main.create_method(name, args)
    klass = self.to_s
    metaclass.instance_eval do
      define_method(name) { return "nice! from #{klass} with #{args.inspect}" }
    end
  end
end

class A < Main
  create_method :delete, :only => 7
end

A.delete  #=> "nice! from A with {:only=>7}"

class B < Main
  create_method :delete, :only => 8
end

B.delete  #=> "nice! from B with {:only=>8}"
A.delete  #=> "nice! from A with {:only=>7}"
