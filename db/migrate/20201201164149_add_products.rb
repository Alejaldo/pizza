class AddProducts < ActiveRecord::Migration[6.0]
  def change
    Product.create ({
      :title => 'Margarita', 
      :description => 'This is classic italian pizza', 
      :price => 9, 
      :size => 30, 
      :is_spicy => false, 
      :is_veg => false, 
      :is_best_offer => false, 
      :path_to_image => '/images/margarita.jpg'
    })

    Product.create ({
      :title => 'Pepperoni', 
      :description => 'This is old spicy italian pizza', 
      :price => 11, 
      :size => 30, 
      :is_spicy => true, 
      :is_veg => false, 
      :is_best_offer => false, 
      :path_to_image => '/images/pepperoni.jpg'
    })

    Product.create ({
      :title => 'Vegetarian', 
      :description => 'This is vegan pizza', 
      :price => 7, 
      :size => 30, 
      :is_spicy => false, 
      :is_veg => true, 
      :is_best_offer => true, 
      :path_to_image => '/images/vegan.jpg'
    })
  end
end
