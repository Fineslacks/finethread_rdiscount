ActiveSupport.on_load(:after_initialize) do
  if PageBlock.respond_to?(:add_markup_behavior)
    PageBlock.add_markup_behavior FinethreadRdiscount
  end
end
