class TodoList
  def initialize(x)
  @x = x
  end
  def get_items
  @x
  end
  def add_item(y)
  @x << y
  end
  def delete_item(z)
  @x.delete(z)
  end
  def get_item(index)
  @x[index]
  end

end