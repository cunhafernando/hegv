namespace :ramals do
  desc "This task will import posts from excel sheet and insert them in posts table"
  task import: :environment do
    sheet = Roo::Spreadsheet.open('./ramals.xlsx')

    (2..sheet.last_row).each do |row|
      record = sheet.row(row)
      ramal = Ramal.create(setor: record[0], telefone: record[1], email: record[2])
      puts ramal.setor
      puts ramal.telefone
      puts ramal.email
    end
  end

end
