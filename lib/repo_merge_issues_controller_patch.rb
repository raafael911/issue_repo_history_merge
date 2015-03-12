require_dependency 'issues_controller'

module IssuesControllerPatch  
  
  def self.included(base)
    base.extend(ClassMethods)
    
    base.send(:include, InstanceMethods)
    
    base.class_eval do
      unloadable
      before_filter :authorize, :except => [:index, :toggle_revisions, :toggle_relations]
    end
    
  end
  
  module ClassMethods
    
  end
  
  module InstanceMethods
    
    def toggle_relations
      session[:show_relations] = !session[:show_relations]
        
      respond_to do |format|
        format.js { render nothing: true }
      end
    end
    
    def toggle_revisions 
      session[:show_revisions] = !session[:show_revisions]
        
      respond_to do |format|
        format.js { render nothing: true }
      end      
    end
    
  end
  
  IssuesController.send(:include, IssuesControllerPatch)
  
end
