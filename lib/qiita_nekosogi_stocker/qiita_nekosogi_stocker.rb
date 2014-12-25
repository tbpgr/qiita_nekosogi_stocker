require 'qiita'
require 'dotenv'

module Qiita
  module NekosogiStocker
    PAGE_UNIT = 100
    class << self
      def stock(user_id, debug_not_stock = false)
        Dotenv.load
        client = Qiita::Client.new(access_token: ENV['access_token'])
        page = 1
        ltsvs = []
        loop {
          response = client.list_user_items(user_id, per_page: PAGE_UNIT, page: page)
          response.body.each do |item|
            next if stock?(client, item['id'])
            client.stock_item(item['id']) unless debug_not_stock
            ltsvs = append_ltsvs(ltsvs, item)
          end
          page += 1
          break unless response.next_page_url
        }
        return '' if ltsvs.size == 0
        ltsvs.map { |e|"title: #{e[:title]}	url: #{e[:url]}" }.join("\n")
      end

      private

      def stock?(client, item_id)
        response = client.get_item_stock(item_id)
        response.status == 204
      end

      def append_ltsvs(ltsvs, item)
        ltsv = {}
        ltsv[:id] = item['id']
        ltsv[:title] = item['title']
        ltsv[:url] = item['url']
        ltsvs << ltsv
        ltsvs
      end
    end
  end
end
