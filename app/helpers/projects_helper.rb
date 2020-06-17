module ProjectsHelper
  def member_signed_in_and_owns_project?(project_id)
    member_signed_in? && current_member.projects.exists?(id:  project_id)
  end
end
