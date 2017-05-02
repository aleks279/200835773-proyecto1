RSpec.configure do |config|
  
  config.backtrace_exclusion_patterns = [
      /gems/
  ]
  
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

   config.around(:each) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end
end
