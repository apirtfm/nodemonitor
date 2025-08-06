echo "Сохранение настроек ufw..."
mkdir updtmp
cp /etc/ufw/user.rules ./updtmp
echo "Настройки сохранены, выполнение скрипта..."
bash <(curl -Ls https://raw.githubusercontent.com/eGamesAPI/remnawave-reverse-proxy/refs/heads/main/install_remnawave.sh)
ufw status
echo "Восстановление настроек ufw..."
cp updtmp/user.rules /etc/ufw/user.rules
rm updtmp -r
echo "Перезагрузка ufw..."
ufw reload
echo "Настройки сохранены!"
