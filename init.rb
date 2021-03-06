require_dependency 'hooks/view_hooks'
require_dependency 'repo_merge_issues_controller_patch'

Redmine::Plugin.register :issue_repo_history_merge do
  name 'Issue Repo History Merge'
  author 'Kevin Neuenfeldt'
  description 'This plugin changes the issue view so that revisions and history comments will be merged in a chronological order.'
  version '0.0.2'
  url 'https://github.com/raafael911/issue_repo_history_merge'
  author_url ''
end
