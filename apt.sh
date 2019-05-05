#!/bin/bash
#INTERPRETADOR QUE SERÁ UTILIZASO

export LANG=C.UTF-8
cp -r ./apt.sh /usr/bin/foxman #COPIANDO O ARQUIVO PARA OS BINARIOS PARA QUE VOCE POSSA EXECUTA-LO

echo ' mmmmmm
 #       mmm   m   m  mmmmm   mmm   m mm
 #mmmmm #" "#   #m#   # # #  "   #  #"  #
 #      #   #   m#m   # # #  m"""#  #   #
 #      "#m#"  m" "m  # # #  "mm"#  #   # '
echo 'agora você pode executar este programa apenas digitando "foxman"!!!'
echo "Telegram: @Foxxer_SA"
echo "Se inscreve lá '@AcervoHackerBR'!!!"
echo "GitHub: foxx3r"
sleep 1 #ESPERAR 1 SEGUNDO

while true #LOOP INFINITO ENQUANTO A CONDIÇÃO FOR TRUE, WHILE = ENQUANTO
do

echo "--------------------------------------------"
echo "[1] ATUALIZAR REPOSITÓRIOS                 |"
echo "[2] ATUALIZAR PACOTES                      |"
echo "[3] INSTALAR UM PACOTE                     |"
echo "[4] REMOVER UM PACOTE                      |"
echo "[5] PESQUISAR POR UM PACOTE                |"
echo "[6] AUTO-REMOVER PACOTES DESNECESSÁRIOS    |"
echo "--------------------------------------------"
read -p "Selecione uma opção -> " fox #PEÇA PARA O USUÁRIO DIGITAR UM VALOR, ESTE VALOR SERÁ ARMAZENADO DENTRO DA VARIÁVEL $fox

#SE
if [ $fox == 1 ] #SE A VARIÁVEL fox for IGUAL Á 1 EXECUTE O BLOCO DE COMANDOS ABAIXO
then
    echo "atualizando..."
    sudo apt update > /dev/null 
    echo "repositórios atualizados com sucesso!"

elif [ $fox == 2 ]
then
    echo "atualizando..."
    sudo apt upgrade -y > /dev/null
    echo "pacotes atualizados com sucesso!"

elif [ $fox == 3 ]
then
    read -p "Qual pacote você deseja instalar? -> " fux
    echo "instalando..."
    sudo apt install $fux -y > /dev/null
    echo "pacote instalado com sucesso!"

elif [ $fox == 4 ]
then
    read -p "Qual pacote você deseja remover? -> " fix
    echo "removendo pacote..."
    sudo apt purge $fix -y > /dev/null
    echo "pacote removido com sucesso!"

elif [ $fox == 5 ]
then
    read -p "Qual pacote você deseja procurar? -> " fax
    echo "Pressione a tecla Q para sair"
    sleep 2
    apt-cache search $fax | less

elif [ $fox == 6 ]
then
    echo "removendo pacotes..."
    sudo apt autoremove -y > /dev/null
    echo "pacotes desnecessários removidos com sucesso!"
fi
done
