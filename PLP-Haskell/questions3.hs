isPrime :: Int -> Bool
isPrime number = null [ x | x <- [2..number - 1], number `mod`x  == 0]
primoCasado :: Int -> Int -> String
primoCasado x y
	| isPrime x && isPrime y = "\"PRIMO CASADO!\""
	| isPrime x && not (isPrime y) = "\"PRIMO!\""
	| not (isPrime x) = "\"NAO PRIMO!\""

main = do
	x <- getLine
	let number = read x
	putStrLn (primoCasado number (number+2)) 
