require('pg')
require('rspec')
require('stop')
require('train')
require('station')

DB = PG.connect ({:dbname => 'train_system_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM station *;")
    DB.exec("DELETE FROM train *;")
    DB.exec("DELETE FROM stop *;")

  end
end
