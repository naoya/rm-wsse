# -*- coding: utf-8 -*-
require 'bundler/gem_tasks'
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

require 'guard/motion'
require 'rm-digest'

Motion::Project::App.setup do |app|
  app.name = 'spec'
  app.files += Dir.glob(File.join(app.project_dir, 'lib/rm-wsse/*.rb'))
end
