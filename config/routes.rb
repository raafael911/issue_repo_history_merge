# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get '/issue/toggle_revisions', :to => 'issues#toggle_revisions'
get '/issue/toggle_relations', :to => 'issues#toggle_relations'
