module Functions where

-- Teste se Febre (37.8)
hasFeverUm :: Float -> Bool
hasFeverUm temp = temp > 37.8

-- Retorna pessoas com Febre
hasFever :: [Float] -> [Float]
hasFever temp = filter hasFeverUm temp

-- Retorna pessoas com Febre 
hasFever' :: [Float] -> [Float]
hasFever' = filter (\x -> hasFeverUm x)

-- Adicionar li /li
htmlItem :: String -> String
htmlItem text = "<li>" ++ text ++ "</li>"

-- Recebe Strings e devolve com as marcas <li> e <\li>
itemize :: [String] -> [String]
itemize = map (\x -> htmlItem x )

-- Testa se é maior
isBigCircle :: Float -> Float -> Bool
isBigCircle y x = x^2 * pi > y

-- Faz o filtro pra saber se é maior
bigCircles :: Float -> [Float] -> [Float]
bigCircles = (\y x -> (filter) (isBigCircle y) x )