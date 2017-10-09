require "lita"
require 'slack-ruby-client'
require 'shindan'
require 'yaruki/yaruki'

Lita.load_locales Dir[File.expand_path(
  File.join("..", "..", "locales", "*.yml"), __FILE__
)]

require "lita/handlers/yaruki"

Lita::Handlers::Yaruki.template_root File.expand_path(
  File.join("..", "..", "templates"),
 __FILE__
)
