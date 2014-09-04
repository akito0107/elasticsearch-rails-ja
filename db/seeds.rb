# -*- encoding: utf-8 -*-
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

Artist.delete_all
Album.delete_all
Song.delete_all

artists = [{name: 'Keith Jarrett', introduction: 'キース・ジャレット（Keith Jarrett、1945年5月8日 - ）は、アメリカ合衆国のジャズ・クラシックピアニスト、作曲家。ジャズ・ピアニストとして広く認識されているが、クラシック等、ジャンルを超えた音楽表現を身上とする。演奏楽器もピアノにとどまらず、ソプラノ・サックス、パーカッション、ハープシコード、リコーダーなど多岐にわたる。メロディーの美しさもさることながら、中腰の姿勢で、時折うめき声を出しながらピアノを弾く姿が印象的。2003年、ポーラー賞を受賞。'},
           {name: 'Chick Corea', introduction: 'チック・コリア（Chick Corea、本名：Armando Anthony Corea、1941年6月12日 - ）はアメリカ出身のピアニスト、キーボーディスト、作曲家、ミュージシャンである。本業にしても十分通用するビブラホン（鉄琴）の演奏技術も備えている'},
           {name: 'Herbie Hancock', introduction: 'ハービー・ハンコック（Herbie Hancock、本名：Herbert Jeffrey Hancock、1940年4月12日 - ）は、アメリカ合衆国イリノイ州シカゴ出身のジャズ・ピアニスト、作曲家、編曲家、プロデューサー。1960年代以降から現在において、ジャズ・シーンをリードするジャズの第一人者であり、ストレートアヘッド・ジャズ、フュージョン、ジャズ・ファンクなど多彩なジャズ・スタイルの最先端を走っている。'},
           {name: 'Bill Evans', introduction: 'ウィリアム・ジョン・エヴァンス（William John Evans、1929年8月16日 - 1980年9月15日）は、アメリカのジャズ・ミュージシャン。モダン・ジャズを代表するピアニストとして知られ、ドビュッシー、ラヴェルなどのクラシックに影響を受けた印象主義的な和音、スタンダード楽曲を題材とした創意に富んだアレンジと優美なピアノ・タッチ、いち早く取り入れたインター・プレイといった演奏は、ハービー・ハンコック、チック・コリア、キース・ジャレットなど多くのピアニストたちに多大な影響を与えたほか、ジョン・マクラフリンといった他楽器のプレイヤーにも影響を与えている。' }
]

Artist.create!(artists)


albums = {keith: [{name: 'Standards, Vol.1', description: 'キース・ジャレットは、70年代に即興ソロでワン・アンド・オンリーな世界を築きあげた。そのキースがスタンダード曲ばかりを集め、ピアノトリオで演奏したのが本作だ。メンバーは、ゲイリー・ピーコック（B）とジャック・デジョネット（Ds）。77年、ゲイリー・ピーコックのリーダーアルバム『テイルズ・オブ・アナザー』でそろった、オールスター的ピアノトリオである。それぞれがスタンダードとは距離を置く、オリジナル曲の演奏が多い革新的なジャズメンだ。そんな顔ぶれでのスタンダードの演奏に、当時のファンは驚いた。だがその後15年以上も、このユニットの活動は続いている。本作では、ジャズ界最高ともいえるテクニックとアイデアで、半世紀以上も演奏され続けてきたスタンダードナンバーに、新たな風を吹き込んでいる。彼らのリリースする作品は、ほとんどがライヴ演奏だ。その原点となるスタジオ録音の本作こそ、最高傑作との声が高い。'},
                  {name: 'ザ・ケルン・コンサート', description: '無限のイマジネーション、果てしなく美しいメロディ。鬼才ピアニスト、キース・ジャレットだからこそ成し得た完全即興ソロ・コンサートの世界。'}],
          chick: [{ name: 'Return to Forever', description: '70年代に入って、ジャズは大きな転換期を迎えた。マイルス・ディヴィスがエレクトリックジャズの可能性を追求する一方、60年代に大きな潮流となっていたフリージャズが行き詰まりを見せ始めたのだ。そうしたなか、チック・コリアは、アコースティックサウンドとエレクトリック楽器を無理なく融合させると同時に、メロディアスで親しみやすい曲想をもったこのアルバムを制作、世に問うた。明るく開放的でありながら高度の演奏力から生まれる心地よい緊張感をもったこの作品は、たちまち多くのファンの心をつかみ、ジャズアルバムとしては異例の大ヒットとなった。そしてこのアルバムを1つの転機として、70年代ジャズは、いわゆるフュージョン現象を迎えることとなる。'},
                  {name: 'Light As a Feather', description: 'チック・コリア＆リターン・トゥ・フォーエヴァーの第1作は、カメモのジャケットでおなじみの人気盤。本作はそれと同じ72年にロンドンで録音したセカンド作。話題満載のデビュー作の陰に隠れ、本作はやや地味な印象を受けるかもしれないけれど、内容的には見劣りしない。というか、フローラ・プリムのヴォーカルを大々的にフィーチャーしていることもあって、こちらのほうがよりポップで親しみやすい。ジョー・ファレル、スタンリー・クラーク、アイアート・モレイラ、フローラ・プリムを擁するオリジナル・メンバーによる録音はデビュー作と本作の2枚だけで、これら2作は姉妹作といっていい。リターン・トゥ・フォーエヴァーはその後、ギターを加えたロック寄りのエレクトリック路線へと突き進むことになるが、これら初期の2作ではスタート時ならではのヒューマンなユートピア・サウンドを楽しめる。チックの曲作りのうまさも際立っていて、特に「アランフェス協奏曲」をイントロに用いた<6>は最大の人気曲、もちろん本作の目玉曲だ。'}],
          herbie:[{ name: 'River: The Joni Letters', description: 'ハービー・ハンコックの9年ぶりのジャズ・アルバムにしてシンガーソングライター、ジョニ・ミッチェルへのトリビュート。ジョニ・ミッチェル本人、ノラ・ジョーンズ、コリーヌ・ベイリー・レイなど豪華女性ヴォーカリストが参加'},
                  { name: '処女航海', description:'レーベルの枠を超えた名盤シリーズ「ジャズの100枚。」キャンペーン。本作は、ジャズマンの最高峰、ハービー・ハンコックが残した若き日の傑作アルバム。“海”をテーマに、斬新なメロディーと詩情溢れるハーモニーが美しく調和した1960年代ジャズの代表作。マイルス・バンドの僚友ロン・カーター、トニー・ウィリアムスも参加。'}],
          evans:[{name: 'ワルツ・フォー・デビイ', description:'ビル・エヴァンス・トリオによる至高のライブ・パフォーマンスを収録した1961年録音盤。名曲「ワルツ・フォー・デビイ」を初め、「マイ・フーリッシュ・ハート」や「マイ・ロマンス」など、エヴァンスのキャリアを代表する名演の数々がボーナストラック4曲を加えてここに再現。'},
                 {name: 'ポートレイト・イン・ジャズ', description:'ピアノ・トリオの金字塔!ビル・エヴァンスが最高のメンバーで残した歴史的傑作!マイルス・デイヴィスと組んでモード・ジャズを発展させた手腕がこのアルバムで遺憾なく発揮され、すべての演奏が名演と呼べる充実の内容も特筆に価する。'}]
}

albums.each do |artist, album|

  if artist==:keith then
    a = Artist.find_by(name: "Keith Jarrett")
  elsif artist==:chick then
    a = Artist.find_by(name: "Chick Corea")
  elsif artist==:evans then
    a = Artist.find_by(name: "Bill Evans")
  elsif artist==:herbie then
    a = Artist.find_by(name: "Herbie Hancock")
  end

    a.albums.build(album)
    a.save!

end

songs = { portrait:[{name: '降っても晴れても'},{name:'枯葉'},{name:'When I fall in love'},{name:'いつか王子様が'}],
          debby:[{name: 'Waltz for Debby'}, {name: 'マイ・フーリッシュ・ハート'}, {name: 'ポーギー(アイ・ラヴズ・ユー、ポーギー)'}],
          maden:[{name: '処女航海'},{name: 'ジ・アイ・オブ・ザ・ハリケーン'},{name:'ドルフィン・ダンス'}],
          river:[{name: ' 青春の光と影'},{name: ' コート・アンド・スパーク'},{name:' イーディスと親玉'},{name:'ネフェルティティ [feat. ウェイン・ショーター]'}],
          light:[{name: ' You\'re Everything'}, {name: 'Spain'}, {name: 'Light as a Feather'}, {name:'500 Miles High'}],
          rtfor:[{name: 'Return To Forever'},{name: 'Crystal Silence'},{name:'Sometime Ago - La Fiesta'},{name:'What Game Shall We Play Today'}],
          koln:[{name: 'ケルン、1975年1月24日 パートI'},{name: 'ケルン、1975年1月24日 パートII'}],
          stand:[{name: 'ミーニング・オブ・ザ・ブルース'},{name:'オール・ザ・シングス・ユー・アー'},{name:'イット・ネヴァー・エンタード・マイ・マインド'}]
}

songs.each do |album,song|

  p album

  if album==:portrait then
    a = Album.find_by(name: "ポートレイト・イン・ジャズ")
  elsif album==:debby then
    a = Album.find_by(name: "ワルツ・フォー・デビイ")
  elsif album==:maden then
    a = Album.find_by(name: "処女航海")
  elsif album==:river then
    a = Album.find_by(name: "River: The Joni Letters")
  elsif album==:light then
    a = Album.find_by(name: "Light As a Feather")
  elsif album==:rtfor then
    a = Album.find_by(name: "Return to Forever")
  elsif album==:koln then
    a = Album.find_by(name: "ザ・ケルン・コンサート")
  elsif album==:stand then
    a = Album.find_by(name: "Standards, Vol.1")
  end

  a.songs.build(song)
  a.save!

end


