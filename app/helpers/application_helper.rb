module ApplicationHelper
    def active_class(path)
        if request.path == path
          return 'active'
        else
          return ''
        end
    end

    def flash_class(level)
      case level
        when 'notice' then "alert alert-info"
        when 'success' then "alert alert-success"
        when 'error' then "alert alert-danger"
        when 'alert' then "alert alert-warning"
      end
    end
  
end
