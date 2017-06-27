perfectCaller :: Int -> Bool
perfectCaller number = perfectNumber number 1 0
perfectNumber :: Int -> Int -> Int -> Bool
perfectNumber number incre total
		  | (number `mod` incre) == 0 && (incre < number) = perfectNumber number (incre+1) 			  (total+incre)
		  | (total == number) && (incre >= number) = True
		  | (incre > number) = False
		  | otherwise = perfectNumber number (incre + 1) total

main = do
	x <- getLine
	let number = read x
	putStrLn (show(perfectCaller number)) 
