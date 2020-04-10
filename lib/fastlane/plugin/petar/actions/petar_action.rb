require 'fastlane/action'
require_relative '../helper/petar_helper'

module Fastlane
  module Actions
    class PetarAction < Action
      def self.run(params)
        UI.message("Dunya you made my day! Thanks ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️")
        require "open-uri"

        File.open('pie.png', 'wb') do |fo|
            fo.write open("https://avatars1.githubusercontent.com/u/698335?s=460&u=c3252a6a0df8e53a449e09f28952492953daa38a&v=4").read 
        end
      end

      def self.description
        "Just following a tutorial!"
      end

      def self.authors
        ["Petar Anastasov"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "As i said i follow a tutorial!"
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "PETAR_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
