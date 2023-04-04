- [1. 論文執筆用 BiBTeX エントリ](#1-論文執筆用-bibtex-エントリ)
  - [1.1. ファイル](#11-ファイル)
    - [1.1.1. BibTeX エントリの書き方](#111-bibtex-エントリの書き方)
  - [1.2. 探し方](#12-探し方)
    - [1.2.1. CVPR, ICCV, WACV](#121-cvpr-iccv-wacv)
    - [1.2.2. arXiv](#122-arxiv)
    - [1.2.3. IEEE 論文の場合](#123-ieee-論文の場合)
    - [1.2.4. Springer 論文の場合](#124-springer-論文の場合)
    - [1.2.5. DBLP](#125-dblp)
    - [1.2.6. ACM digital library](#126-acm-digital-library)
    - [1.2.7. NIPS, NeurIPS の場合](#127-nips-neurips-の場合)
    - [1.2.8. BMVC の場合](#128-bmvc-の場合)
    - [1.2.9. web の記事](#129-web-の記事)
    - [1.2.10. github リポジトリ](#1210-github-リポジトリ)
    - [1.2.11 AAAI](#1211-aaai)
    - [1.2.12 ICMLなど（PMLR）](#1212-icmlなどpmlr)
    - [1.2.13 ICLRなど（openreview）](#1213-iclrなどopenreview)

# 1. 論文執筆用 BiBTeX エントリ

研究室での論文執筆において共通で必要となりそうな bibtex エントリです．

## 1.1. ファイル

- lab-paper.bib：研究室で発表した論文
- \*\*\*.bib：その他論文

論文に取り込むときには`build/all.bib`を使ってください．

- GitHub Actionsで，push時に`cat *.bib > build/all.bib`で生成している．
- アクセストークンを使っているので，有効期限が切れたら設定し直す
  - 個人設定のSettings->Developer settings->Personal access tokensでtoken生成
  - リポジトリのSettings->Secrets and variables->Actionsでtokenをsecretsとして登録

### 1.1.1. BibTeX エントリの書き方

- 以下をアンダースコアでつなげる
  - First author の family name（Smith, Kobayashi など）
  - 発表学会名・雑誌名（CVPR, ICCV, IJCV, PAMI, arXiv など）
  - 年
  - 手法などの名前（検索できるように）
- 例
  - kay_arXiv2017_kinetics400
  - Jhuang_ICCV2013_JHMDB21

## 1.2. 探し方

- できるかぎり，既存のものをコピーしましょう．手入力ではスペルミスなど人為エラーが入ってしまいます．
- 手動の作成方法はネットで検索してください
- 論文によっては正規の取得方法があります．下記参照．
- ない場合もあります（BMVC など）．その場合は手動で作成．

### 1.2.1. CVPR, ICCV, WACV

CVF open access の論文．ワークショップ論文も．

https://openaccess.thecvf.com/menu

論文の検索結果や，アブストラクトのページに bibitex のリンクがある．それをクリックすると表示される．

![image](https://user-images.githubusercontent.com/4309772/201276011-39cedb17-a52f-4d0c-94d3-2bb49a28cbe9.png)

### 1.2.2. arXiv

https://arxiv.org

- NG：「Export Bibtex Citation」では，通常の bst スタイルでは表示されないのでダメ
- OK：「DBLP bibtex」をクリックして，DBLP へ行ってから bibtex をコピーする

![image](https://user-images.githubusercontent.com/4309772/201276120-72d1cd4b-be26-449c-a43e-9d66ed36278f.png)

![image](https://user-images.githubusercontent.com/4309772/201276130-0954f569-c764-4527-afa2-f6c0473c5c6c.png)

### 1.2.3. IEEE 論文の場合

T-PAMI，T-ICP など．CVPR などもある．

IEEE eXplore から検索して，「cite this」をクリックし，bibtex をコピー

https://ieeexplore.ieee.org

![image](https://user-images.githubusercontent.com/4309772/201276173-1c8985de-774b-45bc-ad0b-cc9404fa8315.png)

### 1.2.4. Springer 論文の場合

IJCV, ECCV など

「Cite this article」をクリックしても bibtex エントリ形式は得られないので，mendeley などにインポートしてから bibtex エントリに変換する．

もしくは DBLP で探して bibtex をコピー

https://link.springer.com

![image](https://user-images.githubusercontent.com/4309772/201276226-7dda91a2-1cee-453b-bc7c-4aaf47f9ec6e.png)

### 1.2.5. DBLP

検索する．CV 系論文ならだいたいある．

https://dblp.uni-trier.de

![image](https://user-images.githubusercontent.com/4309772/201276257-4663fbfb-f925-4220-9d74-569a76eeb330.png)

### 1.2.6. ACM digital library

ACM MM など．その他の論文も検索すると出てくる．

https://dl.acm.org

![image](https://user-images.githubusercontent.com/4309772/201276297-04ea6463-aed2-4c89-9787-9351e64599ed.png)

### 1.2.7. NIPS, NeurIPS の場合

https://proceedings.neurips.cc

![image](https://user-images.githubusercontent.com/4309772/201276333-49c1829a-2734-47fd-b6aa-b7e61202cd7a.png)

### 1.2.8. BMVC の場合

DBLP で探す．

https://dblp.org/db/conf/bmvc/index.html

ただし最新のものは DBLP にはないので以下のテンプレートを使用．year と month は修正すること．

```bibtex
@InProceedings{he2021gta,
title = {},
author = {},
year = {2021},
booktitle = {Proceedings of the British Machine Vision Conference (BMVC))},
month = {November},
}
```

### 1.2.9. web の記事

```bibtex
@misc{amazongo_times2018,
editor = {The New York Times},
title={Inside Amazon Go, a Store of the Future},
author={Nick Wingfield},
url = {https://www.nytimes.com/2018/01/21/technology/inside-amazon-go-a-store-of-the-future.html},
note = {Onilne [Accessed 2021/10/5]},
day = {21},
month = {January},
year={2018},
}
```

実際に表示されるのは author, title, year, month, note

### 1.2.10. github リポジトリ

```bibtex
@misc{Wu_github2019_Detectron2,
  author       = {Yuxin Wu and Alexander Kirillov and Francisco Massa and
                  Wan-Yen Lo and Ross Girshick},
  howpublished = {\url{https://github.com/facebookresearch/detectron2}},
  title        = {Detectron2},
  year         = {2019}
}
```



### 1.2.11 AAAI

https://aaai.org/Library/conferences-library.php

![image](https://user-images.githubusercontent.com/4309772/209266872-0c382309-a94d-4219-80e1-330c0623458b.png)

### 1.2.12 ICMLなど（PMLR）

https://proceedings.mlr.press/

![image](https://user-images.githubusercontent.com/4309772/209267124-3148ced3-bfe4-4891-b00f-3a9f9cbbe29c.png)


### 1.2.13 ICLRなど（openreview）

https://openreview.net/group?id=ICLR.cc

![image](https://user-images.githubusercontent.com/4309772/209267303-db95fe9a-13dd-4715-b831-40ef8dd9a05f.png)
