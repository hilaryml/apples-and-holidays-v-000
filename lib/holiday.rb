require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
      holiday_hash[:winter].each{|holiday, supplies| supplies << supply}
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season].store(holiday_name, supply_array)
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

#turns season symbol into string and capitalizes
#turns holiday symbols into strings and splits holiday names into two separate words and puts them in an array then capitalizes them
#indents holiday, turns it into a string, turns supply array into string
  holiday_hash.each {|season, holiday| 
    puts "#{season.to_s.capitalize!}:"  
    holiday.each {|holiday, supplies| 
        puts "  #{holiday.to_s.split("_").each {|word| word.capitalize!}.join(" ")}: #{supplies.join(", ")}"
    }
  }
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  #plan: make empty array for bbq holidays, iterate over holiday_hash and shovel correct holidays in
  holidays_with_bbq_array = []
  holiday_hash.each {|season, holiday| 
    holiday.each {|holiday, supplies|
      if supplies.include?("BBQ")
        holidays_with_bbq_array << holiday
      end
    }
  }
  holidays_with_bbq_array
end







