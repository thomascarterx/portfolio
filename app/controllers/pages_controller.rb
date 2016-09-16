class PagesController < ApplicationController
    def index
        @projects = Project.all
    end

    def about
    end

    def contact
    end

    def quote
    end

    def terms
    end

    def privacy
    end
end
