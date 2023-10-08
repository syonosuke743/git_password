#!/bin/user/

echo "パスワードマネージャーにようこそ！"
echo "サービス名を入力してください："
# service.name変数に代入
read service_name

echo "ユーザー名を入力してください："
# username変数に代入
read username

echo "パスワードを入力してください："
# password変数に代入
read -s password

#ユーザーのパスワードをpass.txtに標準出力のリダイレクトアペンドモードで最後の行に追記
echo "$service_name:$username:$password" >> pass.txt

#入力完了したら
echo "Thank you!"

