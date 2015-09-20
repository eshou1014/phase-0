# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  found_words = Array.new
  source.each { |word|
  word = word.to_s
  if (word.include? thing_to_find)
    found_words.push(word)
  end
  }
  return found_words
end

def my_hash_finding_method(source, thing_to_find)
  found_pets = Array.new
  source.each_pair { |name, val|
    if(val == thing_to_find)
      found_pets.push(name)
    end
  }
  return found_pets
end


# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, things_to_modify)
  n = things_to_modify
  source.map!{ |i| i.kind_of?(Integer) ? (i + n) : i }

end


def my_hash_modification_method!(source, thing_to_modify)
  n = thing_to_modify
  if n > 0
    source.each { |k, v| source[k] = v + n}
  end
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  i_want_pets.sort_by {|x| x.to_s}
end

def my_hash_sorting_method(source)
   my_family_pets_ages.sort_by {|k, v| v}
end

# Identify and describe the Ruby method(s) you implemented.
# I used the method sort_by to sort the arrays and hashes.
# sort_by works because it sorts the data structure by whatever code block is inside, so for example, for the pet's ages, you input a key and value inside the code block and then sort it by the value.
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if { |item| item.to_s.include?(thing_to_delete) }
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if { |key, value| key == thing_to_delete }
end


# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
 source.partition{|item| item.kind_of?(Fixnum)}
end
p my_array_splitting_method(i_want_pets)



def my_hash_splitting_method(hash, age)
  young_pets = hash.select {|k,v| v <= age}
  old_pets = hash.select {|k,v| v > age}
  final_array = Array.new
  final_array.push(young_pets.to_a)
  final_array.push(old_pets.to_a)
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# I used the method sort_by to sort the arrays and hashes.
# sort_by works because it sorts the data structure by whatever code block is inside, so for example, for the pet's ages, you input a key and value inside the code block and then sort it by the value.



# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#I learned how the sort_by works in arrays and hashes. They both work similarly but in arrays you have to convert the output to a string.
#
#
#