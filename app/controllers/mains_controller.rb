class MainsController < ApplicationController
    def main
        @notifications = CollegeNotification.all.order(created_at: :desc)
    end   
end