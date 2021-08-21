class ContributionsController < ApplicationController
    def new
        @member = Member.find(params[:member_id])
        @contribution = @member.contributions.create()
    end
    def create
        @member = Member.find(params[:member_id])
        @contribution = @member.contributions.create(contribution_params)

        if @contribution.save
            redirect_to member_path(@member)
        else
            render :new
        end

    end
    
    def show
        @member = Member.find(params[:id])
    end
    private
    def contribution_params
        params.require(:contribution).permit(:contribution,:date_of_payment)
    end
end
