# frozen_string_literal: true

# Make a blog web app
# 1. Import all the icaliers on startup
#
# * Put all your ruby class in models
# * Only declare and run your app in this file

require 'csv'
require 'erb'
require 'rack'
require 'octokit'
require 'github/markup'

# Your code starts here
module Users
  def self.from_organization
    client = Octokit::Client.new(access_token: '5649be03430107ab08e78da070cdc33b77692a0d')
    client.organizations.first.rels[:members].get.data
  end
end

class Icaliers
  def self.export_users_csv
    users = Users.from_organization

    CSV.open('users.csv', 'w') do |csv|
      csv << %w[Login Avatar Url]
      users.each do |user|
        csv << [user.login, user.avatar_url, user.html_url]
      end
    end
  end
end

class Page
  def render
    ERB.new(File.read('./views/icaliers.erb')).result(binding)
  end

  def content
    render do
      users = Users.from_organization

      icaliers = '<table>'

      users.each do |user|
        icaliers += '<tr>'
        icaliers += "<td><a href='#{user.html_url}'>#{user.login}</a></td>"
        icaliers += "<td><img src='#{user.avatar_url}' width=100 height=100/></td>"
        icaliers += '</tr>'
      end

      icaliers += '</table>'

      icaliers
    end
  end
end

webapp = lambda { |_env|
  ['200', { 'Content-Type' => 'text/html' }, [Page.new.content]]
}

Icaliers.export_users_csv

# Rack::Handler::WEBrick
# Webrick Server
Rack::Handler::WEBrick.run webapp

# Users.from_organization.inspect
# Your code ends here
