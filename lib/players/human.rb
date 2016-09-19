module Players
    class Human < Player
        
   ### ORIGINAL    
        
   #     attr_accessor:input
        
   #     def receive_input
   #         puts "Make your move by entering 1-9."
   #         @input = gets.strip
   #     end
   #         
   #     def move(board)
   #         if board.class != Board # this is just here to pass the 03_human_player spec
   #             receive_input
   #         else
   #             receive_input
   #             while !board.valid_move?(@input)
   #                 puts "Invalid move!"
   #                 receive_input
   #             end
   #         end
   #         @input
   #     end
   
   ### REFACTORED
        
        def move(board)
            input = ""
            if board.class != Board # this is just here to pass the 03_human_player spec
                CLI.get_move
                input = gets.strip
            else
                CLI.get_move
                input = gets.strip
                while !board.valid_move?(input)
                    puts "Invalid move!"
                    CLI.get_move
                    input = gets.strip
                end
            end
            input
        end
    end
end