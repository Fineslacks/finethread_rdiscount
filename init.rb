config.gem 'rdiscount'

ActionController::Dispatcher.to_perpare :luster_rdiscount do
  Page.add_markup_engine_type LusterRdiscount
end
