data Article = Article String Int deriving (Show)

a1 = Article "Hello ^^" 99

aprint:: Article -> String
aprint (Article name value) = name  ++ ": " ++ show value