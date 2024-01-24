
# puts "What is your gender ?"
# puts "Choose in (M/F)."
# sex = gets.chomp
# puts (sex == "f" ? "Feminino" : "Masculino")
senha = []
letras = []
numeros = []
caracs = []
caps_letras = []


caracteres = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f','g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '@', '_', '-', '#']
 
# numero = caracteres[rand(0..9)]
# letra = caracteres[rand(10..35)]
# carac = caracteres[rand(62..65)]
# caps = caracteres[rand(36..61)]

(0..3).each do |num|
    numero = caracteres[rand(0..9)]
    while (numeros.include?(numero)) do
        numero = caracteres[rand(0..9)]
    end
    numeros.push(numero)
end
 (0..3).each do |let|
    letra = caracteres[rand(10..35)]
    while (letras.include?(letra)) do
             letra = caracteres[rand(10..35)]
    end
    letras.push(letra)
 end    
(0..3).each do |cap|
    caps = caracteres[rand(36..61)]
    while (caps_letras.include?(caps)) do
                 caps = caracteres[rand(36..61)]
    end             
    caps_letras.push(caps)
end    
(0..1).each do |car|
    carac = caracteres[rand(62..65)]
    while (caracs.include?(carac)) do
                 carac = caracteres[rand(62..65)]
    end             
    caracs.push(carac)
end    

senha = letras + numeros + caracs + caps_letras


# p caps_letras
# p letras 
# p numeros
# p caracs

# p senha 
puts senha.shuffle().join
