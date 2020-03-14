def pet_shop_name(name)
  return @pet_shop[:name]
end

def total_cash(sum)
  return @pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(name, amount)
  amount_change = @pet_shop[:admin][:total_cash] + amount
  @pet_shop[:admin][:total_cash] = amount_change
  return amount_change
end

def pets_sold(sold_pets)
  return @pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, sold_pets)
  amount_sold = pet_shop[:admin][:pets_sold] + sold_pets
  pet_shop[:admin][:pets_sold] = amount_sold
  return amount_sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  total = []
    for pet in pet_shop[:pets]
      if pet[:breed] == breed
        total << pet
      end
    end
  return total
end

def find_pet_by_name(pet_shop, name)
    for pet in pet_shop[:pets]
      if pet[:name] == name
        return pet
      end
    end
    return nil
end

def remove_pet_by_name(pet_shop, name)
  for pet_name in pet_shop[:pets]
    if pet_name[:name] == name
      return pet_shop[:pets].delete(pet_name)
    end
  end
  return nil
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push (new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
  customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push (new_pet)
  customer[:pets].length
end
