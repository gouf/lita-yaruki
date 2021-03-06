module Lita
  module Handlers
    class Yaruki < Handler
      # insert handler code here

      route(/yaruki/, :yaruki)

      def yaruki(response)
        user_name = find_user_name(response.user&.id) rescue 'Jhon Doe'
        ::Yaruki.ga(user_name).lines do |line|
          response.reply(line)
        end
      end

      def find_user_name(user_id)
        ::Slack.configure do |config|
          config.token = ENV['SLACK_API_TOKEN']
        end

        client = ::Slack::Web::Client.new
        user_info = client.users_info(user: user_id)
        user_info.dig(:user, :name)
      end

      Lita.register_handler(self)
    end
  end
end
