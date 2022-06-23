class Ramal < ApplicationRecord

    require 'csv'

    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            Ramal.create! row.to_hash
            t.string :setor
            t.string :telefone
            t.string :email
            t.string :department
        end
    end
end
