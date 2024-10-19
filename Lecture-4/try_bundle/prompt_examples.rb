require "tty-prompt"
require 'pry'


prompt = TTY::Prompt.new
binding.irb
prompt.ask("What is your name?", default: ENV["USER"])
prompt.yes?("Do you like Ruby?")
prompt.mask("What is your secret?")
prompt.select("Choose your destiny?", %w(Scorpion Kano Jax))

choices = %w(vodka beer wine whisky bourbon)
prompt.multi_select("Select drinks?", choices)
