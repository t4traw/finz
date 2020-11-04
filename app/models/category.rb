class Category < ActiveHash::Base
  include ActiveHash::Associations

  self.data = [
    { id: 1, name: "タックル" },
  ]
end
