# frozen_string_literal: true

# Create a website that displays:
# 1. The projects from lesson 3, mimic the output
#
# Create a website that displays:

load 'exercise_3.rb'
require 'rack'
require 'erb'

class Page
  
  def render
    ERB.new(File.read('layout.erb')).result(binding)
  end

  def content
    render do
      # Esto es lo que sale en la pagina
      obtain_text
    end
  end

  def obtain_text
    shuffler = Shuffler.new

    shuffler.assign_projects

    text = ''

    shuffler.members.each do |member|
      text += "<hr><b>###Projects of #{member.name} ###</b><br>"
      member.projects.each do |project|
        text += "<b>== #{project.name} ==</b><br>"
        text += "Lead name: #{project.lead.name} <br>"
        text += "Members: <br>"
        project.members.each do |member|
          text += "<li>#{member.name} with #{member.role} role</li>"
        end
      end
    end

    text
  end
end

webapp = lambda { |_env|
  ['200', { 'Content-Type' => 'text/html' }, [Page.new.content]]
}

# Rack::Handler::WEBrick
# Webrick Server
Rack::Handler::WEBrick.run webapp
