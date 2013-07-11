require 'rm-digest'

unless defined?(Motion::Project::Config)
  raise "This file must be requried within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), 'rm-wsse/*.rb')).each do |file|
    app.files.unshift(file)
  end
end

require 'rm-wsse/version'

class RmWsse
end
