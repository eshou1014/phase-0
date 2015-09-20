#Pseudocode
=begin
1. Create an array that will hold the cohort
2. Split the cohort into 3 objects inside one array.
3. Print the new arrays
=end

cohort = ["Shunqian Luo (Nathan)", "Caroline A.", "Kim Allen", "Jenna Andersen", "Pamela Antonow", "Jupiter Baudot", "Laura C.", "Ovi Calvo", "Awilda Cantres", "Celeste Carter", "Mike Cerrone", "Eunice Choi", "Un Choi", "Eric Shou"]

cohort.each_slice(3) {|a| p a}
