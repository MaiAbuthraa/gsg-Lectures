require "tty-prompt"
require "./fetcher.rb"
require "./reader.rb"

class FileManager
  PATHS = 'data/**/*.csv'

  def call
    while (selected_option = options) != 'quit'
      Reader.new(selected_option).call
    end
  end

  def options
    prompt.select("Choose one of these CSV file?", fetcher.call + ['quit'])
  end

  def fetcher
    @csv_files ||= Fetcher.new
  end

  def prompt
    @prompt ||= TTY::Prompt.new
  end
end

