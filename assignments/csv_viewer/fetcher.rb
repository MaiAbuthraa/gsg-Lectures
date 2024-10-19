class Fetcher
  PATHS = 'data/**/*.csv'

  def call
    Dir.glob(PATHS).select { |e| File.file? e }
  end
end

