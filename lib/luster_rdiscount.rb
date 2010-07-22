module FinethreadRdiscount
  def to_output_as_rdiscount page=self.page
    vanilla_output = to_output_without_rdiscount(page)
    RDiscount.new(vanilla_output).to_html
  end

  def self.included kls
    kls.send :alias_method, :to_output_without_rdiscount, :to_output
    kls.send :alias_method, :to_output, :to_output_as_rdiscount
  end
end
