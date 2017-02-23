task :clear_db => :environment do 
	MasterCategory.delete_all
	Course.delete_all
	Category.delete_all
end