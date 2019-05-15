import System.Random

aleatorio n = randomRIO(0,n)

escribir :: String -> IO()
escribir m = do putStr m
                putStr "\n"

getInt :: IO Int
getInt = do line <- getLine
            return (read line :: Int) 

funcion :: Int -> Int
funcion x = x + 1

comparar :: Int -> Int-> IO()
comparar x y
    = do if x == y then escribir "Han empatado"
         else
	   if x < y then (do escribir "Ha Ganado el jugador 1")
	   else ( do escribir "Ha Ganado el jugador 2")
	
juego :: IO()
juego = do
	   x <- randomRIO(1,6)
           y <- randomRIO(1,6)
	   comparar x y
