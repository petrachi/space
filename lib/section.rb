class Section
  attr_reader :name

  def initialize name:;
    @name = name
  end

  def to_label
    name.titleize
  end

  def path view
    view.root_url(subdomain: @name)
  end
end
