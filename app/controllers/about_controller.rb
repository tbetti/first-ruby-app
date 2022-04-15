# Class name needs to match name of file
class AboutController < ApplicationController
    def index
        # doesn't need to do anything because it inherits from ApplicationController
        # by default it will look for views/about/index.html.erb
    end
end
