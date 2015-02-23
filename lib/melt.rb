require "melt/melt"

if RUBY_PLATFORM =~ /java/
  class Object
    def melt
      require 'jruby'
      org.zizkovrb.melt.MeltService.new.basicLoad(JRuby.runtime)
      Melt::Down.new.execute(self)
    end
  end
end
