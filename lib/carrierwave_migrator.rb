class CarrierwaveMigrator
  
  class << self
    
    def portfolio
      require File.expand_path 'config/environment'
      Portfolio.where('portfolio_image_file_name IS NOT NULL').each do |p|
        p.image = File.open(Rails.root.join('public', 'system', 'images', p.id.to_s, 'original', p.portfolio_image_file_name))
        p.save
      end  
    end
    
    def portfolio_item
      require File.expand_path 'config/environment'
      PortfolioItem.where('portfolio_item_image_file_name IS NOT NULL').each do |p|
        p.image = File.open(Rails.root.join('public', 'system', 'portfolio_item_images', p.id.to_s, 'original', p.portfolio_item_image_file_name))
        p.save
      end  
    end

  end

end
