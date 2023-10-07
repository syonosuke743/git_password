#!/bin/user/

echo "パスワードマネージャーにようこそ！"
echo "サービス名を入力してください："
# service.name変数に代入
read service.name

echo "ユーザー名を入力してください："
# username変数に代入
read username

echo "パスワードを入力してください："
# password変数に代入
read password
#入力完了したら
echo "Thank you!"

#ユーザーのパスワードをpass.txtに書き込む
