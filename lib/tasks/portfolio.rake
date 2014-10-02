namespace :portfolio do

    task reprocess: :environment do
      Portfolio.all.each do |i|
        begin
          i.image.cache_stored_file!
          i.image.retrieve_from_cache!(i.image.cache_name)
          i.image.recreate_versions!
          i.save!
        rescue => e
          puts "ERROR: Portfolio: #{i.id} -> #{e.to_s}"
        end
      end
      PortfolioItem.all.each do |i|
        begin
          i.image.cache_stored_file!
          i.image.retrieve_from_cache!(i.image.cache_name)
          i.image.recreate_versions!
          i.save!
        rescue => e
          puts "ERROR: PortfolioItem: #{i.id} -> #{e.to_s}"
        end
      end
    end

end
