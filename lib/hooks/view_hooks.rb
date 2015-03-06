module IssueRepoHistoryMerge
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_issues_sidebar_queries_bottom,
              :partial => "issues/details"
  end
end
