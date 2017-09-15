class Definition
  @@definitions = []
  attr_accessor = :definition
  attr_reader = :id

  def initialize(definition)
    @definition = definition
    @id = @@definitions.length + 1
  end
  def definition
    @definition
  end

  def self.all
    @@definitions
  end
  # def save
  #   @@definitions.push(self)
  # end
  # def self.clear()
  #   @@definitions = []
  # end
  # def self.find(id)
  #   item_id = id.to_i()
  #   @@definitions.each do |item|
  #     if item.id == item_id
  #       return item
  #     end
  #   end
  # end

end
