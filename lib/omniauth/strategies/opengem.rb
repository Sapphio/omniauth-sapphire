require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Opengem < OmniAuth::Strategies::OAuth2

      option :name, 'opengem'

      option :client_options, {
        :site => 'https://accounts.opengem.org',
        :authorize_url => 'https://accounts.opengem.org/oauth/authenticate',
        :token_url => 'https://accounts.opengem.org/oauth/access_token'
      }

      uid { raw_info['id'] }

      info do
        {
          :nickname => raw_info['username'],
          :name => raw_info['name'],
          :image => raw_info['avatar_image']['url'],
          :type => raw_info['type'],
          :counts => raw_info['counts']
        }
      end

      extra do
        { :raw_info => raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get('/users/me').parsed
      end

    end
  end
end