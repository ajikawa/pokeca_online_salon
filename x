
[1mFrom:[0m /home/ec2-user/environment/pokeca-online-salon/app/controllers/boards_controller.rb @ line 15 BoardsController#create:

    [1;34m13[0m: [32mdef[0m [1;34mcreate[0m
    [1;34m14[0m:   binding.pry
 => [1;34m15[0m:   board = [1;34;4mBoard[0m.new(board_params)
    [1;34m16[0m:   [32mif[0m board.save
    [1;34m17[0m:     flash[[33m:notice[0m] = [31m[1;31m"[0m[31m「#{board.title}[0m[31m」のスレッドを作成しました[1;31m"[0m[31m[0m
    [1;34m18[0m:     redirect_to board
    [1;34m19[0m:   [32melse[0m
    [1;34m20[0m:     redirect_to [33m:back[0m, [35mflash[0m: {
    [1;34m21[0m:       [35mboard[0m: board,
    [1;34m22[0m:       [35merror_messages[0m: board.errors.full_messages
    [1;34m23[0m:     }
    [1;34m24[0m:   [32mend[0m
    [1;34m25[0m: [32mend[0m

