doOperations :: Bool -> Bool -> Bool -> String -> Bool
doOperations bool1 bool2 bool3 ope
	| ope == "AND" = bool1 && bool2 && bool3
	| ope == "OR" = bool1 || bool2 || bool3

main = do
	x <- getLine
	y <- getLine
	z <- getLine
	k <- getLine
	let bool1 = read x
	let bool2 = read y
	let bool3 = read z
	putStrLn (show(doOperations bool1 bool2 bool3 k))
