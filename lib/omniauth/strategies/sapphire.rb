require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Sapphire < OmniAuth::Strategies::OAuth2

      option :name, 'sapphire'

      option :client_options, {
        :site => 'https://accounts.sapphire.moe',
        :authorize_url => 'https://accounts.sapphire.moe/oauth/authenticate',
        :token_url => 'https://accounts.sapphire.moe/oauth/access_token'
      }

      uid { raw_info['id'] }

      info do
        {
          :nickname => raw_info['username'],
          :name => raw_info['name'],
          :email => raw_info['email'],
          :mail => raw_info['email'],
          :description => raw_info['description'],
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
