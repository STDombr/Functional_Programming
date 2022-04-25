import Algorithm

main :: IO ()
main = do
  print "A * x == b  where"

  let mA = [[1, -2, 1], [2, 1, -3], [4, -7, 1]] :: Matrix
  putStr "A="
  print mA

  let mb = [0, 5, -1] :: Vector
  putStr "b="
  print mb

  let x = gauss mA mb
  putStr "x="
  print x

  print (mapMatrix mA x)
  print mb