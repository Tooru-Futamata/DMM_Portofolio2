# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Region.create!([
  {name:'北海道'},
  {name:'沖縄'},
  {name:'東北・北陸'},
  {name:'関東・甲信越'},
  {name:'関西'},
  {name:'中国・四国'},
  {name:'九州'}
  ])

 Prefecture.create!([
   {name:'北海道'},
   {name:'青森県'},
   {name:'岩手県'},
   {name:'宮城県'},
   {name:'秋田県'},
   {name:'山形県'},
   {name:'福島県'},
   {name:'茨城県'},
   {name:'栃木県'},
   {name:'群馬県'},
   {name:'埼玉県'},
   {name:'千葉県'},
   {name:'東京都'},
   {name:'神奈川県'},
   {name:'新潟県'},
   {name:'富山県'},
   {name:'石川県'},
   {name:'福井県'},
   {name:'山梨県'},
   {name:'長野県'},
   {name:'岐阜県'},
   {name:'静岡県'},
   {name:'愛知県'},
   {name:'三重県'},
   {name:'滋賀県'},
   {name:'京都府'},
   {name:'大阪府'},
   {name:'兵庫県'},
   {name:'奈良県'},
   {name:'和歌山県'},
   {name:'鳥取県'},
   {name:'島根県'},
   {name:'岡山県'},
   {name:'広島県'},
   {name:'山口県'},
   {name:'徳島県'},
   {name:'香川県'},
   {name:'愛媛県'},
   {name:'高知県'},
   {name:'福岡県'},
   {name:'佐賀県'},
   {name:'長崎県'},
   {name:'熊本県'},
   {name:'大分県'},
   {name:'宮崎県'},
   {name:'鹿児島県'},
   {name:'沖縄県'},
   ])

Admin.create!(
  [
    {
      email: 'admin@gmail',
      password: 'adminadmin'
    }
  ])

User.create!(
  [
    {
      email: 'sayo@gmail',
      name: 'さよてぃん',
      name_id: 'sayosayo',
      profile_image: File.open('./app/assets/images/anpanman.jpeg'),
      password: 'sayosayo'
    },
    {
      email: 'ryota@gmail',
      name: 'りょうた',
      name_id: 'ryotaryota',
      password: 'ryotaryota',
      profile_image: File.open('./app/assets/images/shiro.jpeg')
    },
    {
      email: 'haruka@gmail',
      name: 'つか',
      name_id: 'haruharu',
      password: 'haruharu',
      profile_image: File.open('./app/assets/images/dog.jpeg')
    }
  ]
)

GolfCourse.create!(
  [
    {
      name: '北海道クラシックゴルフクラブ',
      region_id: '1',
      prefecture_id: '1',
      address: '勇払郡安平町早来富岡406',
      image: File.open('./app/assets/images/golf_courses/hokkaido.jpeg'),
    },
    {
     name: '沖縄カントリークラブ',
      region_id: '2',
      prefecture_id: '47',
      address: '中頭郡西原町桃原１０９',
      image: File.open('./app/assets/images/golf_courses/okinawa.jpeg'),
    },
    {
      name: '青森カントリー倶楽部',
      region_id: '3',
      prefecture_id: '2',
      address: '青森市大別内葛野229',
      image: File.open('./app/assets/images/golf_courses/aomori.jpeg'),
    },

    {
      name: '盛岡カントリークラブ',
      region_id: '3',
      prefecture_id: '3',
      address: '盛岡市新庄岩山50',
      image: File.open('./app/assets/images/golf_courses/morioka.jpeg'),
    },
    {
      name: 'グレート仙台カントリー倶楽部',
      region_id: '3',
      prefecture_id: '4',
      address: '仙台市青葉区上愛子字五ッ森6−１',
      image: File.open('./app/assets/images/golf_courses/sendai.jpeg'),
    },
    {
      name: '南秋田カントリークラブ',
      region_id: '3',
      prefecture_id: '5',
      address: '秋田市金足吉田字浅田１−１',
      image: File.open('./app/assets/images/golf_courses/akita.jpeg'),
    },
    {
      name: '天童カントリークラブ',
      region_id: '3',
      prefecture_id: '6',
      address: '天童市川原子４２７８−１０３',
      image: File.open('./app/assets/images/golf_courses/yamagata.jpeg'),
    },
    {
      name: 'ボナリ高原ゴルフクラブ',
      region_id: '3',
      prefecture_id: '7',
      address: '耶麻郡猪苗代町沼尻山甲２８５５',
      image: File.open('./app/assets/images/golf_courses/fukushima.jpeg'),
    },
    {
      name: '茨城ゴルフ倶楽部',
      region_id: '4',
      prefecture_id: '8',
      address: 'つくばみらい市小島新田１０２',
      image: File.open('./app/assets/images/golf_courses/ibaragi.jpeg'),
    },
    {
      name: 'プレステージカントリークラブ',
      region_id: '4',
      prefecture_id: '9',
      address: '栃木市梓町４５５−１',
      image: File.open('./app/assets/images/golf_courses/tochigi.jpeg'),
    },
    {
      name: '藤岡ゴルフクラブ',
      region_id: '4',
      prefecture_id: '10',
      address: '藤岡市白石２９２５',
      image: File.open('./app/assets/images/golf_courses/gunma.jpeg'),
    },
    {
      name: '熊谷ゴルフクラブ',
      region_id: '4',
      prefecture_id: '11',
      address: '熊谷市石原1431',
      image: File.open('./app/assets/images/golf_courses/saitama.jpeg'),
    },
    {
      name: '千葉市民ゴルフ場',
      region_id: '4',
      prefecture_id: '12',
      address: '千葉市若葉区下田町１００５',
      image: File.open('./app/assets/images/golf_courses/chiba.jpeg'),
    },
    {
      name: '東京バーディクラブ',
      region_id: '4',
      prefecture_id: '13',
      address: '青梅市小曾木５丁目２９４３',
      image: File.open('./app/assets/images/golf_courses/tokyo.jpeg'),
    },
    {
      name: '鎌倉パブリックゴルフ場',
      region_id: '4',
      prefecture_id: '14',
      address: '鎌倉市今泉５−１００３',
      image: File.open('./app/assets/images/golf_courses/kanagawa.jpeg'),
    },
    {
      name: '新潟ゴルフ倶楽部',
      region_id: '4',
      prefecture_id: '15',
      address: '新潟市西蒲区峰岡７４４',
      image: File.open('./app/assets/images/golf_courses/nigata.jpeg'),
    },
    {
      name: '富山カントリークラブ',
      region_id: '4',
      prefecture_id: '16',
      address: '富山市万願寺1−１６６',
      image: File.open('./app/assets/images/golf_courses/toyama.jpeg'),
    },
    {
      name: '石川ゴルフ倶楽部',
      region_id: '4',
      prefecture_id: '17',
      address: '河北郡津幡町大坪井1−番地',
      image: File.open('./app/assets/images/golf_courses/ishikawa.jpeg'),
    },
    {
      name: 'フォーレスト福井ゴルフクラブ',
      region_id: '4',
      prefecture_id: '18',
      address: '福井市燈豊町４２−５３',
      image: File.open('./app/assets/images/golf_courses/fukui.jpeg'),
    },
    {
      name: '勝沼ゴルフコース',
      region_id: '4',
      prefecture_id: '19',
      address: '甲州市勝沼町中原字向原５３６８−１',
      image: File.open('./app/assets/images/golf_courses/yamanashi.jpeg'),
    },
    {
      name: '木曽駒高原カントリークラブ',
      region_id: '4',
      prefecture_id: '20',
      address: '木曽郡木曽町日義４８９８−８',
      image: File.open('./app/assets/images/golf_courses/nagano.jpeg'),
    },
    {
      name: '岐阜稲口ゴルフ倶楽部',
      region_id: '4',
      prefecture_id: '21',
      address: '関市稲口１１８９−１',
      image: File.open('./app/assets/images/golf_courses/gifu.jpeg'),
    },
    {
      name: '朝霧ジャンボリーゴルフクラブ',
      region_id: '4',
      prefecture_id: '22',
      address: '富士宮市猪之頭２９７１',
      image: File.open('./app/assets/images/golf_courses/shizuoka.jpeg'),
    },
    {
      name: '愛知カンツリー倶楽部',
      region_id: '4',
      prefecture_id: '23',
      address: '名古屋市名東区猪高町大字高針山ノ中２０−１',
      image: File.open('./app/assets/images/golf_courses/aichi.jpeg'),
    },
    {
      name: '三重カンツリークラブ',
      region_id: '5',
      prefecture_id: '24',
      address: '三重郡菰野町千草７１９０',
      image: File.open('./app/assets/images/golf_courses/mie.jpeg'),
    },
    {
      name: 'タラオカントリークラブ',
      region_id: '5',
      prefecture_id: '25',
      address: '甲賀市信楽町多羅1',
      image: File.open('./app/assets/images/golf_courses/tarao.jpeg'),
    },
    {
      name: '加茂カントリークラブ',
      region_id: '5',
      prefecture_id: '26',
      address: '木津川市加茂町高去花原7−番地',
      image: File.open('./app/assets/images/golf_courses/kyoto.jpeg'),
    },
    {
      name: '光丘パブリックゴルフ場',
      region_id: '5',
      prefecture_id: '27',
      address: '富田林市新堂２３４５',
      image: File.open('./app/assets/images/golf_courses/osaka.jpeg'),
    },
     {
      name: '神戸ゴルフ倶楽部',
      region_id: '5',
      prefecture_id: '28',
      address: '神戸市灘区六甲山町一ケ谷１−３',
      image: File.open('./app/assets/images/golf_courses/kobe.jpeg'),
    },
     {
      name: '奈良国際ゴルフ倶楽部',
      region_id: '5',
      prefecture_id: '29',
      address: '奈良市宝来５丁目１０−１',
      image: File.open('./app/assets/images/golf_courses/nara.jpeg'),
    },
    {
      name: '紀伊高原ゴルフクラブ',
      region_id: '5',
      prefecture_id: '30',
      address: '伊都郡かつらぎ町神田１６６−６',
      image: File.open('./app/assets/images/golf_courses/wakayama.jpeg'),
    },
    {
      name: '大山ゴルフクラブ',
      region_id: '6',
      prefecture_id: '31',
      address: '西伯郡伯耆町小林６',
      image: File.open('./app/assets/images/golf_courses/tottori.jpeg'),
    },
    {
      name: '島根ゴルフ倶楽部',
      region_id: '6',
      prefecture_id: '32',
      address: '出雲市美野町１６５２',
      image: File.open('./app/assets/images/golf_courses/shimane.jpeg'),
    },
    {
      name: '新岡山ゴルフクラブ',
      region_id: '6',
      prefecture_id: '33',
      address: '岡山市北区長野６２２−７８',
      image: File.open('./app/assets/images/golf_courses/okayama.jpeg'),
    },
    {
      name: '広島安佐ゴルフクラブ',
      region_id: '6',
      prefecture_id: '34',
      address: '広島市安佐北区安佐町筒瀬１４７１−２１',
      image: File.open('./app/assets/images/golf_courses/hiroshima.jpeg'),
    },
    {
      name: 'ユニマット山口ゴルフ倶楽部',
      region_id: '6',
      prefecture_id: '35',
      address: '周南市八代７２３',
      image: File.open('./app/assets/images/golf_courses/yamaguchi.jpeg'),
    },
    {
      name: '徳島ゴルフ倶楽部',
      region_id: '6',
      prefecture_id: '36',
      address: '徳島市北田宮２丁目１３−３２',
      image: File.open('./app/assets/images/golf_courses/tokushima.jpeg'),
    },
    {
      name: 'エリエールゴルフクラブ',
      region_id: '6',
      prefecture_id: '37',
      address: '三豊市財田町財田中４９８０',
      image: File.open('./app/assets/images/golf_courses/kagawa.jpeg'),
    },
    {
      name: '愛媛ゴルフ倶楽部',
      region_id: '6',
      prefecture_id: '38',
      address: '喜多郡内子町論田950',
      image: File.open('./app/assets/images/golf_courses/ehime.jpeg'),
    },
    {
      name: '高知ゴルフ倶楽部',
      region_id: '6',
      prefecture_id: '39',
      address: '高知市重倉945番地',
      image: File.open('./app/assets/images/golf_courses/kochi.jpeg'),
    },
    {
      name: '夜須高原カントリークラブ',
      region_id: '7',
      prefecture_id: '40',
      address: '朝倉郡筑前町曽根田１４１−２６',
      image: File.open('./app/assets/images/golf_courses/yasukogen.jpeg'),
    },
    {
      name: '筑紫野カントリークラブ',
      region_id: '7',
      prefecture_id: '40',
      address: '筑紫野市山家２０１４−２２',
      image: File.open('./app/assets/images/golf_courses/chikushino.jpeg'),
    },
    {
      name: '小郡カンツリークラブ',
      region_id: '7',
      prefecture_id: '40',
      address: '小郡市三沢１７８８',
      image: File.open('./app/assets/images/golf_courses/ogori.jpeg'),
    },
    {
      name: '佐賀クラシックゴルフ倶楽部',
      region_id: '7',
      prefecture_id: '41',
      address: '多久市西多久町６０−１',
      image: File.open('./app/assets/images/golf_courses/saga.jpeg'),
    },
    {
      name: '佐世保カントリー倶楽部',
      region_id: '7',
      prefecture_id: '42',
      address: '佐世保市知見寺町１４１０',
      image: File.open('./app/assets/images/golf_courses/nagasaki.jpeg'),
    },
    {
      name: 'くまもと中央カントリークラブ',
      region_id: '7',
      prefecture_id: '43',
      address: '菊池市旭志川辺１２１７',
      image: File.open('./app/assets/images/golf_courses/kumamoto.jpeg'),
    },
    {
      name: '久住高原ゴルフ倶楽部',
      region_id: '7',
      prefecture_id: '44',
      address: '竹田市久住町大字白丹3866番地',
      image: File.open('./app/assets/images/golf_courses/oita.png'),
    },
    {
      name: '宮崎ゴルフ倶楽部',
      region_id: '7',
      prefecture_id: '45',
      address: '東諸県郡国富町大字, 三名六ｯ野原',
      image: File.open('./app/assets/images/golf_courses/miyazaki.jpeg'),
    },
    {
      name: '鹿児島ゴルフリゾート',
      region_id: '7',
      prefecture_id: '46',
      address: '鹿児島市下福元町１２３００',
      image: File.open('./app/assets/images/golf_courses/kagoshima.jpeg')
    }
  ]
)