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
      name: '青森カントリー倶楽部',
      region_id: '3',
      prefecture_id: '2',
      address: '青森市大別内葛野229',
      image: File.open('./app/assets/images/golf_courses/aomori.jpeg'),
    },
    {
     name: '沖縄カントリークラブ',
      region_id: '2',
      prefecture_id: '47',
      address: '中頭郡西原町桃原１０９',
      image: File.open('./app/assets/images/golf_courses/okinawa.jpeg'),
    },
    {
      name: '熊谷ゴルフクラブ',
      region_id: '4',
      prefecture_id: '11',
      address: '熊谷市石原1431',
      image: File.open('./app/assets/images/golf_courses/saitama.jpeg'),
    },
    {
      name: 'タラオカントリークラブ',
      region_id: '5',
      prefecture_id: '25',
      address: '甲賀市信楽町多羅1',
      image: File.open('./app/assets/images/golf_courses/tarao.jpeg'),
    },
    {
      name: '愛媛ゴルフ倶楽部',
      region_id: '6',
      prefecture_id: '37',
      address: '喜多郡内子町論田950',
      image: File.open('./app/assets/images/golf_courses/ehime.jpeg'),
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
  ]
)