fixUpDuplicates :: [Int] -> [Int]
fixUpDuplicates [] = []
fixUpDuplicates [a] = [a]
fixUpDuplicates (x:array) = x:(fixUpDuplicates $ filter (/=x) array)

main = do
	x <- getLine
	y <- getLine
	let array1 = read x
	let array2 = read y
	let arraySum = array1 ++ array2
	print (fixUpDuplicates arraySum) 
