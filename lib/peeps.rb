require 'pg'

class Peeps

  def self.all
    connection = PG.connect(dbname: 'chitter_manager')
    result = connection.exec("SELECT * FROM chitter;")
    result.map { |bookmark| bookmark['peep'] }
  end
  
end