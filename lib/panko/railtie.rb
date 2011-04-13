class Railtie < ::Rails::Railtie
  initializer "panko.initialize_breadcrumbs" do
    ::ActionController::Base.send(:include, Panko::Breadcrumb)
    ::ActionController::Base.helper_method(:breadcrumbs)
  end
end