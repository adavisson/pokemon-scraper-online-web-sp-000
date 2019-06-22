class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
  def initialize (id:, name:, type:, db:)
    @name = name
    @type = type
    @db = db
  end
  
  def save
    sql = <<-SQL
      INSERT INTO pokemon (name, type) VALUES (?, ?)
    SQL
    
    @db.execute(sql)
    
    @id = @db.execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end
  
end
