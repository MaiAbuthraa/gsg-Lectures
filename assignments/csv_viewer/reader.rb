require 'csv'
require 'console_table'

class Reader
  attr_reader :file_path

  def initialize(file_path)
    @file_path = file_path
  end

  def call
    ConsoleTable.define(csv.headers) do |table|
      csv.to_a.drop(1).each do |row|
        table << row
      end
    end
  end

  def csv
    @csv ||= CSV.parse(File.read(file_path), headers: true)
  end
end

