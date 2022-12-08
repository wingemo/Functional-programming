data Person = MkPerson String Int
  deriving Show

fred :: Person
fred = MkPerson "Fred" 90

-- getName returns the name of the person
getName :: Person -> String
getName (MkPerson name _) = name

-- getAge returns the age of the person
getAge :: Person -> Int
getAge (MkPerson _ age) = age

-- setName takes a person and returns a new person with the name changed
setName :: String -> Person -> Person
setName name p = MkPerson name (getAge p)

-- setAge does likewise for age
setAge :: Int -> Person -> Person
setAge age p = MkPerson (getName p) age
