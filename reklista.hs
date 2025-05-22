--kwadrat lista rekurencyjnie

kwadrat x=x*x
kwadrat_lista::[Int]->[Int]
kwadrat_lista []=[]
kwadrat_lista (x:xs)=(kwadrat x):(kwadrat_lista xs)

--kwadrat_lista [2,4,6]
--[4,16,36]

mniejo1 x=x-1
mniejlista::[Int]->[Int]
mniejlista []=[]
mniejlista (h:t)=(mniejo1 h):(mniejlista t)

razy5 x=x*5
listarazy5::[Int]->[Int]
listarazy5 []=[]
listarazy5 (h:t)=(razy5 h):(listarazy5 t)

konkatenacja::[Int]->[Int]->[Int]
konkatenacja [] lista2 = lista2
konkatenacja (x:xs) lista2 = x : konkatenacja xs lista2

--map

razy_dwa x=2*x
lista_razy_dwa xs = map razy_dwa xs

--kwadrat_lista::[Int]->[Int]

--kwadrat x=x*x
--kwadrat_lista xs=map kwadrat xs

--komendy do hugs
--[2 * x | x <- [1..5]]
--[x+y|x<-[1..4],y<-[1..x]]=[2,3,4,4,5,6,5,6,7,8]
--[x*y|x<-[5,4..2],y<-[1..x]]=[5,12,15,20,25,4,8,12,16,3,6,9,2,4]

lista_mniejszao1::[Int]->[Int]
lista_mmiejszao1 xs = [x-1|x<-xs]
