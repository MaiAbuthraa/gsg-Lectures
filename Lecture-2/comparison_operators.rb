def return_nil_value
  puts "* return_nil_value"
  return nil
end

def return_false_value
  puts "* return_false_value"
  return false
end

def return_true_value
  puts "* return_true_value"
  return true
end

puts "Using ||"
puts "return_nil_value || return_false_value || return_true_value"
puts return_nil_value || return_false_value || return_true_value

puts "return_true_value || return_nil_value || return_false_value"
puts return_true_value || return_nil_value || return_false_value

puts "return_false_value || return_true_value || return_nil_value"
puts return_false_value || return_true_value || return_nil_value

puts "return_false_value || return_false_value || return_nil_value"
puts return_false_value || return_false_value || return_nil_value

puts "return_false_value || return_false_value"
puts return_false_value || return_false_value

puts "Using &&"

puts "return_nil_value && return_false_value && return_true_value"
puts return_nil_value && return_false_value && return_true_value

puts "return_true_value && return_nil_value && return_false_value"
puts return_true_value && return_nil_value && return_false_value

puts "return_true_value && return_true_value && return_true_value"
puts return_true_value && return_true_value && return_true_value

puts "return_false_value && return_true_value && return_nil_value"
puts return_false_value && return_true_value && return_nil_value

puts "return_false_value && return_false_value && return_nil_value"
puts return_false_value && return_false_value && return_nil_value

