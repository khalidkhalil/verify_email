    ####################################New Enhanced Code ##############################
    compare_list = {"15" => 0.75,"25" => 0.775,"50" => 0.8,"75" => 0.825,"100" => 0.85,"200" => 0.875,"400" => 0.9 ,"600" => 0.925}
    @new_compare = 0
    @other_compare = 0
    compare_list.each do |key, value|
        if brand.rating = high
            @other_compare = 1.1

        elsif brand.rating = low
            @other_compare = 0.9
        else 

            @other_compare = 1

        end
        if price_reference < key.to_i 
            @new_compare = value
        else 
            @new_compare = 0.95

        end
        
    end
      price_suggestion = (price_reference - product_database.shipping_cost * @new_compare) * @other_compare
      price_original = price_suggestion
  #####################################Old Code############################################################
  if brand.rating = high
    if price_reference < 15
      price_suggestion = (price_reference - product_database.shipping_cost * 0.75) * 1.1
      price_original = price_suggestion
    elsif price_reference < 25
      price_suggestion = (price_reference - product_database.shipping_cost * 0.775) * 1.1
      price_original = price_suggestion
    elsif price_reference < 50
      price_suggestion = (price_reference - product_database.shipping_cost * 0.8) * 1.1
      price_original = price_suggestion
    elsif price_reference < 75
      price_suggestion = (price_reference - product_database.shipping_cost * 0.825) * 1.1
      price_original = price_suggestion
    elsif price_reference < 100
      price_suggestion = (price_reference - product_database.shipping_cost * 0.85) * 1.1
      price_original = price_suggestion
    elsif price_reference < 200
      price_suggestion = (price_reference - product_database.shipping_cost * 0.875) * 1.1
      price_original = price_suggestion
    elsif price_reference < 400
      price_suggestion = (price_reference - product_database.shipping_cost * 0.9) * 1.1
      price_original = price_suggestion
    elsif price_reference < 600
      price_suggestion = (price_reference - product_database.shipping_cost * 0.925) * 1.1
      price_original = price_suggestion
    else
      price_suggestion = (price_reference - product_database.shipping_cost * 0.95) * 1.1
      price_original = price_suggestion
  elsif brand.rating = low
    if price_reference < 15
      price_suggestion = (price_reference - product_database.shipping_cost * 0.75) * 0.9
      price_original = price_suggestion
    elsif price_reference < 25
      price_suggestion = (price_reference - product_database.shipping_cost * 0.775) * 0.9
      price_original = price_suggestion
    elsif price_reference < 50
      price_suggestion = (price_reference - product_database.shipping_cost * 0.8) * 0.9
      price_original = price_suggestion
    elsif price_reference < 75
      price_suggestion = (price_reference - product_database.shipping_cost * 0.825) * 0.9
      price_original = price_suggestion
    elsif price_reference < 100
      price_suggestion = (price_reference - product_database.shipping_cost * 0.85) * 0.9
      price_original = price_suggestion
    elsif price_reference < 200
      price_suggestion = (price_reference - product_database.shipping_cost * 0.875) * 0.9
      price_original = price_suggestion
    elsif price_reference < 400
      price_suggestion = (price_reference - product_database.shipping_cost * 0.9) * 0.9
      price_original = price_suggestion
    elsif price_reference < 600
      price_suggestion = (price_reference - product_database.shipping_cost * 0.925) * 0.9
      price_original = price_suggestion
    else
      price_suggestion = (price_reference - product_database.shipping_cost * 0.95) * 0.9
      price_original = price_suggestion
  else
    if price_reference < 15
      price_suggestion = (price_reference - product_database.shipping_cost * 0.75) * 1
      price_original = price_suggestion
    elsif price_reference < 25
      price_suggestion = (price_reference - product_database.shipping_cost * 0.775) * 1
      price_original = price_suggestion
    elsif price_reference < 50
      price_suggestion = (price_reference - product_database.shipping_cost * 0.8) * 1
      price_original = price_suggestion
    elsif price_reference < 75
      price_suggestion = (price_reference - product_database.shipping_cost * 0.825) * 1
      price_original = price_suggestion
    elsif price_reference < 100
      price_suggestion = (price_reference - product_database.shipping_cost * 0.85) * 1
      price_original = price_suggestion
    elsif price_reference < 200
      price_suggestion = (price_reference - product_database.shipping_cost * 0.875) * 1
      price_original = price_suggestion
    elsif price_reference < 400
      price_suggestion = (price_reference - product_database.shipping_cost * 0.9) * 1
      price_original = price_suggestion
    elsif price_reference < 600
      price_suggestion = (price_reference - product_database.shipping_cost * 0.925) * 1
      price_original = price_suggestion
    else
      price_suggestion = (price_reference - product_database.shipping_cost * 0.95) * 1
      price_original = price_suggestion
  end