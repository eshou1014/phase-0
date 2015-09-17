# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
# def my_array_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
# def my_array_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

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
# def my_array_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

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
#
#
#
#