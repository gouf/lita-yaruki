require "spec_helper"

# In development environment, adjust redis host/port setting if you using docker or whatever
# Lita.configure do |config|
#   config.redis[:host] = 'localhost'
#   config.redis[:port] = '6379'
# end

describe Lita::Handlers::Yaruki, lita_handler: true do
  it { is_expected.to route('yaruki') }
  it { is_expected.to route('yaruki').to(:yaruki) }
  it 'retrieve message of "yaruki"' do
    send_message('yaruki')
    expect(replies.last).to match(/[0-9]{,3}.*/)
  end
end
