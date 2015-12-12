MRuby::Gem::Specification.new('emoji-cli') do |spec|
  spec.license = 'MIT'
  spec.author  = 'Mu-An Chiou'
  spec.summary = 'emoji-cli'
  spec.bins    = ['emoji-cli']

  spec.add_dependency 'mruby-print', :core => 'mruby-print'
  spec.add_dependency 'mruby-mtest', :mgem => 'mruby-mtest'
  spec.add_dependency 'mruby-string-ext'
  spec.add_dependency 'mruby-xquote', :github => 'mattn/mruby-xquote'
end
