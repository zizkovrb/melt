# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "melt"
  spec.version       = "0.3"
  spec.authors       = ["Josef Šimánek"]
  spec.email         = ["josef.simanek@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  end

  spec.summary       = %q{There is no way to unfreeze a frozen object. Really?}
  spec.description   = %q{Have you ever heard about icebergs or icicles? What about melting?}
  spec.homepage      = "https://github.com/zizkovrb/melt"
  spec.license       = "MIT"

  spec.files         = Dir.glob("ext/**/*.{c,h,java,rb}") + Dir.glob("lib/**/*.rb")
  spec.require_paths = ["lib"]

  if RUBY_PLATFORM =~ /java/
    spec.platform = "java"
    spec.files << "lib/melt/melt.jar"
  else
    spec.extensions    = ["ext/melt/extconf.rb"]
  end

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "minitest"
end
