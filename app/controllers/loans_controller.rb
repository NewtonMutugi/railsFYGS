class LoansController < ApplicationController
    def index
        @member = Member.find(params[:member_id])
        @months_contributed = @member.contributions.size

       
    end
    def show
        
    end

    def new
        
    end

    def create
        
    end
end
