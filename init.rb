config.gem 'rdiscount'

ActionController::Dispatcher.to_prepare :luster_rdiscount do
  PageBlock.add_markup_engine_type LusterRdiscount
end
