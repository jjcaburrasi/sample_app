require 'json'
require 'rest-client'

class NewsController < ApplicationController

    def get_news
        url = "http://api.mediastack.com/v1/news?access_key=cf762488c3863d57410f231c14577d9e&languages=en&categories=-general"
        response = RestClient.get(url)
        news = JSON.parse(response)
        @data_news= news["data"]
    end
end