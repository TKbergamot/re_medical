# Re:medical

## サイト概要

    - 患者様が全国の病院の医師からのセカンドオピニオンを受けれるサイト

### サイトテーマ

    - 全ての患者様に選ぶ自由を。

### テーマを選んだ理由

    - 来診される患者様が近場の病院以外でもセカンドオピニオンを受け、納得して医療を受けれるようにしたい。

### ターゲットユーザ

    - 来院される患者様、またはご家族の方。

### 主な利用シーン

    - 患者様がセカンドオピニオンを希望した時や、医師が判断した時など。

### 追記

    - 他のオンライン診療サイトを違う点
        - 通常のセカンドオピニオン外来は患者様が先に依頼する病院を選ぶ形だが、このサイトでは先に複数の病院からの簡易な診療計画を聞き、その中で自分が選んだ病院と詳しい情報を得るためのコンタクトをとることができるような設計となっている。

    - 患者様側フロー
        - 会員登録をする。（紹介元病院や紹介状などはまだ不要。）
        - 投稿する。（ここで紹介状等自身の病状に関する資料を添付する（投稿は全体に見えるが資料は医師側にしか見えない状態にする））※投稿を医師側にしか見えなくすることも可能。
        - 複数の病院からのフィードバックをもらい、気になった病院と直接コンタクトをとる。

    - 病院側フロー
        - 会員（医師）登録をする。（医師登録番号、登録年月日なども必要。（管理者が確認して承認））
        - 病院登録をする。（医師登録とどちらを先にするか検討中）
        - 患者様が投稿された病状を見てオピニオンを出す。
        - 患者様からのコンタクトに対して詳しい診療計画、方針を提案する。
        - セカンドオピニオンの役割としてはここで終了だが、さらに必要で在れば直接受診してもらう形になるが、このサイトの範疇を超えてしまうので患者様と病院側で直接やり取りしてもらう形に変更する。

        - その他にももし病院側で必要と感じたら病院対病院での意見も交換できるようなシステムも含む。


    - 全ては患者様が納得のいく形で治療を受けて頂くことに帰結するので、病院側のセカンドオピニオンに対する理解ある対応や、利益だけでなく患者様の回復を最優先に願う気持ちが肝要となる。そのためには難しい病状の患者様に対しては病院同士で相互に意見を出し合うことによってより良い治療計画を出すことなど、病院間・医療法人間を超えた真の連携が必要になるかと思われる。


    - 以上の点から全て自己のサイトに誘導する形をとる他のサイトを参考にするというのはほぼ不可能に近い。

### 課題

    - 医師登録するにあたって管理者が直接確認して承認する形をとるが、もっとスムーズに登録できる方法を探す。
    - セカンドオピニオン自体は診療ではなく意見なので法的には問題ないが、実運用するにあたって保険で負担されないセカンドオピニオンを複数の病院でするのに対しての費用面での問題をどう解決するか（ポートフォリオ段階では無料で対応する）。
    - 患者様の投稿を他のユーザーも見れるようにしたいと考えていたが、患者様それぞれ病状に対するバックボーンなどが違うので参考になりづらいと思い病院側から以外見れないようにすることも検討中。

## 設計書

    - テーブル設計書
        - https://docs.google.com/spreadsheets/d/1seKrgDkZnx8hNorRECNVUzoCJ4w8_XbkT62ykcK496g/edit?usp=sharing

    - ワイヤーフレーム
        - https://drive.google.com/file/d/1tgN3Zp-AucZibe14R2QLSMybQ4THndxO/view?usp=sharing

    - ER図
        - https://drive.google.com/file/d/1J_PKSHTV0twl-b2jUnv1wZ63dFncmOkv/view?usp=sharing

    - アプリケーション詳細設計
        - https://docs.google.com/spreadsheets/d/1QIJFU4ST-jugQv7CA49oTX-xBRqAzsrBxv0XOsQqxI8/edit?usp=sharing

### 機能一覧

    - https://docs.google.com/spreadsheets/d/1r2RnuaQ4GE1ohMG_LZdFukPFguCZQfv5UEEejXgR_Gg/edit?usp=sharing
