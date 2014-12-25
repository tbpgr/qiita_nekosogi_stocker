# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'qiita_nekosogi_stocker/version'

Gem::Specification.new do |spec|
  spec.name          = "qiita_nekosogi_stocker"
  spec.version       = Qiita::NekosogiStocker::VERSION
  spec.authors       = ["tbpgr"]
  spec.email         = ["tbpgr@tbpgr.jp"]
  spec.summary       = %q{Qiita::NekosogiStocker stocks specific user's all articles..}
  spec.description   = %q{Qiita::NekosogiStocker stocks specific user's all articles..}
  spec.homepage      = "https://github.com/tbpgr/qiita_nekosogi_stocker"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "qiita"
  spec.add_runtime_dependency "dotenv"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
