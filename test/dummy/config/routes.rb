Rails.application.routes.draw do
  mount Lalo::ItemPicker::Engine => "/orders"
end
