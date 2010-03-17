config.gem 'rdiscount'

ActionController::Dispatcher.to_prepare :luster_rdiscount do
  if PageBlock.respond_to?(:add_markup_behavior)
    PageBlock.add_markup_behavior LusterRdiscount
  end
end
