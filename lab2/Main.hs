import Algorithm

main :: IO ()
main = do
  print "A * x == b  where"

  let mA = [[3, 2, -5], [2, -1, 3], [1, 2, -1]] :: Matrix
  putStr "A="
  print mA

  let mb = [-1,13, 9] :: Vector
  putStr "b="
  print mb

  let x = gauss mA mb
  putStr "x="
  print x

  print (mapMatrix mA x)
  print mb
  
mapMatrix :: Matrix -> Vector -> Vector
mapMatrix rows v = [ sum (zipWith (*) row v) | row <- rows ]
