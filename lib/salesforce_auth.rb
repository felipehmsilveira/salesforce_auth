# frozen_string_literal: true

require_relative "salesforce_auth/version"
require 'net/http'
require 'net/https'

class Auth
  def getAccessToken(username, password, token, client_id, client_secret, url_instance)

    return 'username is null' if username.nil? || username.strip().empty?
    return 'password is null' if password.nil? || password.strip().empty?
    return 'token is null' if token.nil? || token.strip().empty?
    return 'client_id is null' if client_id.nil? || client_id.strip().empty?
    return 'client_secret is null' if client_secret.nil? || client_secret.strip().empty?
    return 'url_instance is null' if url_instance.nil? || url_instance.strip().empty?

    params =  {
      :grant_type   => "password",
      :username   => username,
      :password   => password+token,
      :client_id   => client_id,
      :client_secret => client_secret
    }

    url = URI.parse(url_instance)
    req = Net::HTTP::Post.new(url.request_uri)
    req.set_form_data(params)
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = (url.scheme == "https")
    response = http.request(req)

    if( response.is_a?( Net::HTTPSuccess ) )
        # your request was successful
        return response.body
    else
        # your request failed
        return response.body
    end
  end
end
