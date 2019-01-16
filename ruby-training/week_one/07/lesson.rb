# Rack and Basic Web Server HTTP
# Go to console and:
# gem intall rack
# Resources:
# http://rack.github.io/

# A super simple implementation of a Ruby server based on Rack
require 'rack'

#app = Proc.new do |env|
    #['200', {'Content-Type' => 'text/html'}, ['A barebones rack app.']]
#end

#Rack::Handler::WEBrick.run app

require 'erb'
require 'github/markup'

class Page
  def render
    ERB.new(File.read('layout.erb')).result(binding)
  end

  def content
    render do
      GitHub::Markup.render('site.md', File.read('site.md'))
    end
  end

end

webapp = -> (env) {
  ['200', {'Content-Type' => 'text/html'}, [ Page.new.content ] ]
}

# Rack::Handler::WEBrick
# Webrick Server
Rack::Handler::WEBrick.run webapp
