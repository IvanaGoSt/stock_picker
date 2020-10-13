working_arr = [17,3,6,9,15,8,6,1,10]
def stock_picker(arr)
  # make array of all combinations of days
  sub_elements = arr.combination(2).to_a
  # make arr of substitutions
  arr_of_subs = []
  sub_elements.each { |x| arr_of_subs << x[1]-x[0]}
  # pick the index of the highest substitutions
  index_of_max_substitution = arr_of_subs.index(arr_of_subs.max)
  # return indices in the original array
  sub_indices = [arr.index(sub_elements[index_of_max_substitution][0]), arr.index(sub_elements[index_of_max_substitution][1])]
  p sub_indices
end
stock_picker(working_arr)
stock_picker([2, 3, 10, 6, 4, 8, 1])
stock_picker([7, 9, 5, 6, 3, 2])
