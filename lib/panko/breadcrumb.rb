module Panko
  module Breadcrumb
    def breadcrumb(*args)
      options = args.extract_options!
      url, title = args[0], args[1]
      crumb = {:url => url, :title => title}
      bc = breadcrumbs
      if bc.include?(crumb)
        self.breadcrumbs = bc[0, bc.index(crumb) + 1]
      else
        if options[:index] && (bc.length >= options[:index])
          bc = bc[0, options[:index]+1]
          bc[options[:index]] = crumb
        else
          bc.push(crumb)
        end
        bc.shift until bc.length <= 3
        self.breadcrumbs = bc
      end
    end

    def breadcrumbs
      get_breadcrumbs || []
    end

    def breadcrumbs=(crumbs)
      session[:breadcrumbs] = crumbs
    end

    def reset_breadcrumbs
      session[:breadcrumbs] = []
    end

    def get_breadcrumbs
      session[:breadcrumbs]
    end

  end
end