require 'qiita_nekosogi_stocker'
require 'thor'

module Qiita
  module NekosogiStocker
    class CLI < Thor
      class_option :help, type: :boolean, aliases: '-h', desc: 'help message.'
      class_option :version, type: :boolean, desc: 'version'
      class_option :debug, type: :boolean, aliases: '-d', desc: 'debug mode'

      desc 'stock [user_id]', "Stock specific user's all articles"
      def stock(user_id)
        setting_debug_mode
        stock_ltsvs = Qiita::NekosogiStocker.stock(user_id)
        puts stock_ltsvs
      rescue => e
        output_error_if_debug_mode(e)
        exit(false)
      end

      desc 'version', 'version'
      def version
        p Qiita::NekosogiStocker::VERSION
      end

      private

      def setting_debug_mode
        $DEBUG = options[:debug]
      end

      def output_error_if_debug_mode(e)
        return unless options[:debug]
        STDERR.puts(e.backtrace)
      end
    end
  end
end
