class CarrierwaveMigrator
  
  class << self
    
    def portfolio
      require File.expand_path 'config/environment'

      Portfolio.where('portfolio_image_file_name IS NOT NULL').each do |p|
        p.image = File.open(Rails.root.join('public', 'system', 'images', p.id.to_s, 'original', p.image_file_name))
        p.save
      end  
    end

  end

end
