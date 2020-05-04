class FindProducts
  attr_accessor :initial_scope

  def initialize(initial_scope)
    @initial_scope = initial_scope
  end

  def call(params)
    scoped = filter_by_price(initial_scope, params["from_price"], params["to_price"])
  end

  private def filter_by_price(scoped, from_price = nil, to_price = nil)
    from_price ? scoped.where('price > ?', from_price) : scoped
    to_price ? scoped.where('price < ?', to_price) : scoped
  end
end
