# frozen_string_literal: true

require_relative 'lib/itsuka/version'

Gem::Specification.new do |spec|
  spec.name = 'itsuka'
  spec.version = Itsuka::VERSION
  spec.authors = ['junohm410']
  spec.email = ['junohm410@gmail.com']

  spec.summary = 'A Ruby gem to parse natural Japanese date expressions into Date objects.'
  spec.description = <<-DESC
  'Itsuka converts natural Japanese date expressions,
  such as "今日" (today), "明日" (tomorrow), or "3日後" (in 3 days),
  into Ruby Date objects.'
  DESC

  spec.homepage = 'https://github.com/junohm410/itsuka'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.1.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/junohm410/itsuka'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 1.21'
end
