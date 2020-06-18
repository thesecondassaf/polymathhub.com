class CommentsController < ApplicationController

    def create
      if (member_signed_in?)
        @discussion = Discussion.find(params[:discussion_id])
        @comment = @discussion.comments.create(member_id: current_member.id, discussion_id: @discussion.id, content: comment_params[:content], comment_type: 'default')
      end
      redirect_to project_discussion_path(@discussion.project, @discussion)
    end

    private
    def comment_params
      params.require(:comment).permit(:content)
    end
end
