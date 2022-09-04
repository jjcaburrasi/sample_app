class SearchController < ApplicationController
    before_action :downcase
    before_action :logged_in_user

    def search_user
    @find_users=User.find_users(@search)
    end

    def search_micropost
    @find_microposts=Micropost.find_microposts(@search)
    end

    private

        def downcase
            @search = params[:content].downcase
            p @search
        end

end
