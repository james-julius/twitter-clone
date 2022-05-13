class PagesController < ApplicationController
    skip_before_action :authenticate_user!
    
    @does_not_require_auth = true
    
    
    def home
        @posts = Post.all
    end

    def landing
        if current_user
            redirect_to home_index_path
        end
    end
end
