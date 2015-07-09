namespace :db do
  desc "TODO"
  task backup: :environment do
    system "mysqldump --opt --user=root --password rose userdetails> xyz.sql"
  end

  desc "TODO"
  task restore: :environment do
    system "mysqldump --user=root --password  < xyz.sql"
  end

end
