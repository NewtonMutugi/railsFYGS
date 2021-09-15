class LoansController < ApplicationController
    def index
        @member = Member.find(params[:member_id])
        @months_contributed = @member.contributions.size

       
    end
    def show
        
    end

    def new
       @member = Member.find(params[:member_id]) 
    end

    def create
        
    end
end
