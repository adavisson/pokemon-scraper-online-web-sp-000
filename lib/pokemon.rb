class Pokemon
  
  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS pokemon (
        id INTEGER PRIMARY KEY,
        name TEXT,
        type TEXT
      )
    SQL
    
    DB[:conn].execute(sql)
  end
  
end
