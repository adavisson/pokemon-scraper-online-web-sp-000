class Pokemon
  
  def self.create_table
    sql = <<-SQL
      
    SQL
    
    DB[:conn].execute(sql)
  end
  
end
