# frozen_string_literal: true

# Create a website that displays:
# 1. All the members from Icalia at Github
# Notes:
# * You can use the github gem
# * Request with RestClient
# * Make as many classes as you need
require 'erb'
require 'rack'
require 'github'
require 'github/markup'
require 'rest-client'
require 'octokit'

module Users
  def self.from_organization
  client = Octokit::Client.new(:access_token => '6bf5eda5d13ae3f0e0864ff94185d3354509fabe')
  client.organizations.first.rels[:members].get.data
  end
end

class Page
  def render
    ERB.new(File.read('layout.erb')).result(binding)
  end

  def content
    render do
      GitHub::Markup.render('site.md', User.text)
    end
  end
end

class User
  def self.text
    list = ""
    Users.from_organization.each do |user|
      list += "*  #{user.login}\n"
    end
    list
  end
end

webapp = lambda { |_env|
  ['200', { 'Content-Type' => 'text/html' }, [Page.new.content]]
}

# Rack::Handler::WEBrick
# Webrick Server
Rack::Handler::WEBrick.run webapp
