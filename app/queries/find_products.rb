class FindProducts
  attr_accessor :initial_scope

  def initialize(initial_scope)
    @initial_scope = initial_scope
  end

  def call(params)
    scoped = filter_by_price(initial_scope, params["from_price"], params["to_price"])
    puts(params["category_id"])
    scoped = filter_by_category(scoped, params["category_id"])
  end

  private def filter_by_price(scoped, from_price = nil, to_price = nil)
    from_price ? scoped.where('price > ?', from_price) : scoped
    to_price ? scoped.where('price < ?', to_price) : scoped
  end

  private def filter_by_category(scoped, category_id = nil)
    category_id ? scoped.where(category_id: category_id) : scoped
  end
end
