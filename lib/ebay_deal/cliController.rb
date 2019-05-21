#this is my cli controller
class EbayDeal::Controlller
    def call
        list_items
        menu
        goodbye
    end
     def list_items
        puts "Take an item on ebay:"
        @items = EbayDeal::Deal.today
        @items.each.with_index(1) do |item, indexx|
            puts "#{indexx}.#{item.name}-#{item.price}-#{item.availability}" 
        end
        # binding.pry
     end
     
     def menu
        
        input = nil
        while input != "exit"
            puts "Select your item and get more detail on it or type list to see the items again or  type exit to continue:"
        input = gets.strip.downcase 

        count_it = EbayDeal::Deal.today.size 
        if input.to_i > 0 && input.to_i <= count_it
            
        new_item= @items[input.to_i-1]
            puts "#{new_item.name}-#{new_item.price}-#{new_item.availability}" 
        elsif input == "list"
            list_items
        else
            puts "Not sure what you want, type list or exit"
        end 
    end 
     end

     def goodbye 
        puts "See you tomorrow for more  deals!!"
     end
     
     
    end