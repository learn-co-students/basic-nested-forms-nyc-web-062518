class Address < ActiveRecord::Base
  belongs_to :person

  def address_attributes=(address)
    self.address = Address.find_or_create_by(name: address.name)
    self.address.update(address)
  end
end
