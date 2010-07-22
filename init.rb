config.gem 'rdiscount'

ActionController::Dispatcher.to_prepare :finethread_rdiscount do
  if PageBlock.respond_to?(:add_markup_behavior)
    PageBlock.add_markup_behavior FinethreadRdiscount
  end
end
