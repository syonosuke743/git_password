#!/bin/bash
while true
do
  echo "パスワードマネージャーにようこそ！"
  echo "次の選択肢から入力してください（Add Password/Get Password/Exit)："
  # ユーザーの入力をchoice変数に代入
  read choice
  # caseでchoiceの値に応じて処理
 case $choice in 
    "Add Password")
      read -p "サービス名を入力してください：" service_name
      read -p "ユーザー名を入力してください：" username
      read -s -p "パスワードを入力してください：" password
      # 入力情報をpass.txtに標準出力のリダイレクトアペンドモードで最後の行に追記
      echo "$service_name:$username:$password" >> pass.txt
      echo "パスワードの追加に成功しました"
      ;;
    "Get Password")
      read -p "サービス名を入力してください：" service_name
      # service_nameに対応するpasswordをpass.txtから持ってくる。grepで検索、cutで横に分割し-dで項目数で指定
      password=$(grep "$service_name:" pass.txt | cut -d: -f3)
      # パスワードが保存されてない場合
      if [ -z "$password" ]; then
        echo "そのサービスは登録されてません"
      # パスワードが保存されていた場合
      else
        echo "サービス名：$service_name"
        echo "ユーザー名：$(grep "$service_name:" pass.txt | cut -d: -f2)"
        echo "パスワード：$password"
      fi
      ;;
    "Exit")
      echo "Thank you!"
      exit
      ;;
    "*")
      echo "入力を間違えています。Add Password/Get Password/Exit から入力してください。"
      ;;
  esac
done