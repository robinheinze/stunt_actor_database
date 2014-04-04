class CreateSearches < ActiveRecord::Migration
  def self.up
    ActiveRecord::Base.connection.execute <<-SQL
    CREATE VIEW searches AS
      SELECT  authors.id AS searchable_id, authors.name AS term,
              CAST ('Author' AS varchar) AS searchable_type
      FROM authors
      UNION
      SELECT  books.id AS searchable_id, books.title AS term,
              CAST ('Book' AS varchar) AS searchable_type
      FROM books
    SQL
  end

  def self.down
    ActiveRecord::Base.connection.execute <<-SQL
      DROP VIEW searches
    SQL
  end
end
