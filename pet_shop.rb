def pet_shop_name(shop)
  return shop[:name]
end

###########################

def total_cash(shop)
  return shop[:admin][:total_cash]
end

##############################

def add_or_remove_cash(shop, amount)
  new_total_cash = shop[:admin][:total_cash] += amount
  return new_total_cash
end

################################

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

#####################################

def increase_pets_sold(shop, amount_sold)
  total_sold = shop[:admin][:pets_sold] += amount_sold
  return total_sold
end

####################################

def stock_count(shop)
  return shop[:pets].length
end

######################################

def pets_by_breed(shop, breed)
  pets = []

    for pet in shop[:pets]
      if
        pet[:breed] == breed
        pets.push(pet[:breed])
      end
    end

  return pets
end

####################################

def find_pet_by_name(shop, name)

  for pet in shop[:pets]
    if
      pet[:name] == name
      return pet
    end
  end

  return
end

##############################################

def remove_pet_by_name(shop, name)

  for pet in shop[:pets]
    if
      pet[:name] == name
      shop[:pets].delete(pet)
    end
  end

  return
end

################################################

def add_pet_to_stock(shop, name)
  shop[:pets].push name
end

##################################################

def customer_cash(customer)
  return customer[:cash]
end

#################################################

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

###############################################

def customer_pet_count(customer)
  return customer[:pets].length
end

################################################

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

###################################################

def customer_can_afford_pet (customer, pet)

  if
    customer[:cash] >= pet[:price]
    return true
  else
    return false
  end

end

################################################

def sell_pet_to_customer(shop, pet, customer)

  if pet.nil?
    return

  elsif customer[:cash] < pet[:price]
    return

  else

    add_pet_to_customer(customer, pet)
    increase_pets_sold(shop, 1)
    remove_customer_cash(customer, pet[:price])
    add_or_remove_cash(shop, pet[:price])

  end
end













#
