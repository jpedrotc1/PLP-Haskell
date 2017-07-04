indexSearcher :: [Int] -> Int -> Int

indexSearcher (a:array) index 
	|index == 1 = a
	|otherwise = indexSearcher array (index-1)


main = do
	y <- getLine
	x <- getLine
	let array = read y
	let index = read x
	putStrLn (show(indexSearcher array index))
