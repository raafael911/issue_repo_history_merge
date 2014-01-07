require_dependency 'issues_controller'

module IssuesControllerPatch  
  
  def self.included(base)
    base.extend(ClassMethods)
    
    base.send(:include, InstanceMethods)
    
    base.class_eval do
      unloadable
      before_filter :authorize, :except => [:toggle_revisions]
    end
    
  end
  
  module ClassMethods
    
  end
  
  module InstanceMethods
    
    def toggle_revisions 
      session[:show_revisions] = params[:show_revisions]
        
      respond_to do |format|
        format.js { render nothing: true }
      end
      
    end
    
  end
  
  IssuesController.send(:include, IssuesControllerPatch)
  
end