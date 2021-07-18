#!/usr/bin/env ruby

a = [1, 2, 3, 4, 5]
puts a[1, 3]
puts a.last # gets last number
puts a.first # gets first number

fruits = ['apple', 'orange', 'grape']
puts fruits.map.with_index { |fruits, i| "#{i}: #{fruits}"}
