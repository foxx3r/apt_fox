#!/bin/bash
cp -r ./apt.sh /usr/bin/foxman
echo ' mmmmmm
 #       mmm   m   m  mmmmm   mmm   m mm
 #mmmmm #" "#   #m#   # # #  "   #  #"  #
 #      #   #   m#m   # # #  m"""#  #   #
 #      "#m#"  m" "m  # # #  "mm"#  #   # '
echo "agora voce pode executar este programa apenas digitando 'Foxman'!!!"
echo "Telegram: @Foxxer_SA"
echo "Se inscreve la '@AcervoHackerBR'!!!"
echo "GitHub: foxx3r"
sleep 1
while true
do
echo "--------------------------------------------"
echo "[1] ATUALIZAR REPOSITORIOS                 |"
echo "[2] ATUALIZAR PACOTES                      |"
echo "[3] INSTALAR UM PACOTE                     |"
echo "[4] REMOVER UM PACOTE                      |"
echo "[5] PESQUISAR POR UM PACOTE                |"
echo "[6] AUTOREMOVER PACOTES DESNECESSARIOS     |"
echo "--------------------------------------------"
read -p "Selecione uma opcao -> " fox
if [ $fox == 1 ]
then
    sudo apt update > /dev/null
    echo "repositorios atualizados com sucesso!"
elif [ $fox == 2 ]
then
    sudo apt upgrade -y > /dev/null
    echo "pacotes atualizados com sucesso!"
elif [ $fox == 3 ]
then
    read -p "Qual pacote deseja instalar? -> " fux
    sudo apt install $fux -y > /dev/null
    echo "pacote instalado com sucesso!"
elif [ $fox == 4 ]
then
    read -p "Qual pacote voce deseja remover? -> " fix
    sudo apt purge $fix -y > /dev/null
    echo "pacote removido com sucesso!"
elif [ $fox == 5 ]
then
    read -p "Qual pacote deseja procurar? -> " fax
    echo "Pressione a tecla Q para sair"
    sleep 2
    apt-cache search $fax | less
elif [ $fox == 6 ]
then
    sudo apt autoremove -y > /dev/null
fi
done
