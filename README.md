# BibTeXエントリの書き方

- 以下をアンダースコアでつなげる
  - First authorのfamily name（Smith, Kobayashiなど）
  - 発表学会名・雑誌名（CVPR, ICCV, IJCV, PAMI, arXivなど）
  - 年
- 例
  - kay_arXiv2017_kinetics400
  - Jhuang_ICCV2013_JHMDB21


# 探し方

- できるかぎり，既存のものをコピーしましょう．手入力ではスペルミスなど人為エラーが入ってしまいます．
- 手動の作成方法はネットで検索してください
- 論文によっては正規の取得方法があります．下記参照．
- ない場合もあります（BMVCなど）．その場合は手動で作成．

## CVPR, ICCV, WACV

CVF open accessの論文．ワークショップ論文も．

https://openaccess.thecvf.com/menu

論文の検索結果や，アブストラクトのページにbibitexのリンクがある．それをクリックすると表示される．


![image](https://user-images.githubusercontent.com/4309772/201276011-39cedb17-a52f-4d0c-94d3-2bb49a28cbe9.png)


## arXiv

https://arxiv.org

- NG：「Export Bibtex Citation」では，通常のbstスタイルでは表示されないのでダメ
- OK：「DBLP bibtex」をクリックして，DBLPへ行ってからbibtexをコピーする


![image](https://user-images.githubusercontent.com/4309772/201276120-72d1cd4b-be26-449c-a43e-9d66ed36278f.png)

![image](https://user-images.githubusercontent.com/4309772/201276130-0954f569-c764-4527-afa2-f6c0473c5c6c.png)


## IEEE 論文の場合

T-PAMI，T-ICPなど．CVPRなどもある．

IEEE eXploreから検索して，「cite this」をクリックし，bibtexをコピー

https://ieeexplore.ieee.org

![image](https://user-images.githubusercontent.com/4309772/201276173-1c8985de-774b-45bc-ad0b-cc9404fa8315.png)


## Springer論文の場合 

IJCV, ECCVなど

「Cite this article」をクリックしてもbibtexエントリ形式は得られないので，mendeleyなどにインポートしてからbibtexエントリに変換する．

もしくはDBLPで探してbibtexをコピー

https://link.springer.com


![image](https://user-images.githubusercontent.com/4309772/201276226-7dda91a2-1cee-453b-bc7c-4aaf47f9ec6e.png)


## DBLP

検索する．CV系論文ならだいたいある．

https://dblp.uni-trier.de


![image](https://user-images.githubusercontent.com/4309772/201276257-4663fbfb-f925-4220-9d74-569a76eeb330.png)


## ACM digital library

ACM MMなど．その他の論文も検索すると出てくる．

https://dl.acm.org

![image](https://user-images.githubusercontent.com/4309772/201276297-04ea6463-aed2-4c89-9787-9351e64599ed.png)



## NIPS, NeurIPSの場合

https://proceedings.neurips.cc

![image](https://user-images.githubusercontent.com/4309772/201276333-49c1829a-2734-47fd-b6aa-b7e61202cd7a.png)


## BMVCの場合

DBLPで探す．

https://dblp.org/db/conf/bmvc/index.html

ただし最新のものはDBLPにはないので以下のテンプレートを使用．yearとmonthは修正すること．

@InProceedings{he2021gta,
    title = {},
    author = {},
    year = {2021},
    booktitle = {Proceedings of the British Machine Vision Conference (BMVC))},
    month = {November},
}


## webの記事

@misc{amazongo_times2018,
editor = {The New York Times},
title={Inside Amazon Go, a Store of the Future},
author={Nick Wingfield},
url = {https://www.nytimes.com/2018/01/21/technology/inside-amazon-go-a-store-of-the-future.html},
note = {The New York Times [Accessed 2021/10/5]},
day = {21},
month = {January},
year={2018},
}
実際に表示されるのはauthor, title, year, month, note


