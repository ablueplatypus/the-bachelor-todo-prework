require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |names|
    names.each do |key, value|
      if value = "Winner"
        full_name = names["name"]
        return full_name.split(' ')[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
data.each do |seasons, array|
  array.each do |contestant|
    contestant.each do |key, value|
      if value == occupation
        return contestant["name"]
      end
    end
  end
 end
end

def count_contestants_by_hometown(data, hometown)
count = 0
data.each do |seasons, arrays|
  arrays.each do |contestants|
    contestants.each do |key, value|
      if value == hometown
        count += 1
      end
    end
  end
end
return count
end

def get_occupation(data, hometown)
data.each do |seasons, arrays|
  arrays.each do |contestants|
    contestants.each do |key, value|
      if value == hometown
        return contestants["occupation"]
      end
    end
  end
end
end

def get_average_age_for_season(data, season)
  ages = []
  data[season].each do |contestants|
      contestants.each do |key, value|
        if key == "age"
          ages.push(value.to_i)
        end
      end
    end
    sum = 0
    ages.each do |numbers|
      sum = sum + numbers
    end
sum
end
