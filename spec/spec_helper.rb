require('pg')
require('rspec')
require('stop')
require('train')
require('station')

DB = PG.connect ({:dbname = 'train_system'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM stop *;")
    DB.exec("DELETE FROM train *;")
    DB.exec("DELETE FROM station *;")
  end
end
