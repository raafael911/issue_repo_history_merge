module IssueRepoHistoryMerge
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_issues_sidebar_issues_bottom,
              :partial => "issues/toggle_visibility_checkbox"
  end
end
