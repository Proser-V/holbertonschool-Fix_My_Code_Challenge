###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
  # skip if not integer
  next unless arg =~ /^-?\d+$/

  i_arg = arg.to_i

  # trouver la position d’insertion
  inserted = false
  result.each_with_index do |val, idx|
    if i_arg < val
      result.insert(idx, i_arg)
      inserted = true
      break
    end
  end

  # si pas inséré, on le met à la fin
  result << i_arg unless inserted
end

puts result
