#! /usr/bin/env ruby
require_relative '../lib/ethiojobs.rb'

def print(ejobs)
  ejobs.current_page.each do |job|
    puts '***************************************************'
    puts job[:title]
    puts job[:link]
    puts job[:company]
    puts job[:company_link]
    puts job[:work_place]
    puts job[:level]
    puts job[:date]
    puts job[:detail]
    puts '***************************************************'
  end
  prompt(ejobs)
end

def next_step(inp, ejobs)
  case inp
  when '#'
    ejobs.next_page
    print(ejobs)
  else
    exit(1)
  end
end

def prompt(ejobs)
  puts 'If you want to see next page enter 1 \n if you want to exit enter any key'
  inp = gets.chomp
  next_step(inp, ejobs)
end

ejobs = EthioJobs.new
print(ejobs)
