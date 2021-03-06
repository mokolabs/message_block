namespace :message_block do
  desc "Installs static files for the message_block gem"
  task :install do
    puts "Copying assets..."
    
    images_source = File.join(File.dirname(__FILE__), "..", "..", "assets", "images")
    stylesheets_source = File.join(File.dirname(__FILE__), "..", "..", "assets", "stylesheets", "message_block.css")
    
    images_target = Rails.root.join("public", "images", "message_block")
    stylesheets_target = Rails.root.join("public", "stylesheets", "message_block.css")
    
    unless File.exists?(images_target)
      FileUtils.cp_r(images_source, images_target)
      puts "  Copied Images"
    else
      puts "  Images appear to already be installed, not copying."
    end
    
    unless File.exists?(stylesheets_target)
      FileUtils.cp(stylesheets_source, stylesheets_target)
      puts "  Copied Stylesheet"
    else
      puts "  Stylesheet appears to already be installed, not copying"
    end
    
  end
end
