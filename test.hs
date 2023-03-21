import System.IO

placar :: Int -> IO ()
placar pontos = do
  putStr "Digite uma tecla: "
  hFlush stdout
  tecla <- getChar
  let novosPontos = if tecla == 't' then pontos + 1 else pontos
  putStrLn $ "Pontuação: " ++ show novosPontos
  placar novosPontos

main :: IO ()
main = placar 0