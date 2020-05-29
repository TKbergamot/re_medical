Department.create(name: "消化器内科")
Department.create(name: "循環器内科")
Department.create(name: "呼吸器内科")
Department.create(name: "腎臓内科")
Department.create(name: "内分泌内科")
Department.create(name: "糖尿病内科")
Department.create(name: "膠原病内科")
Department.create(name: "リウマチ内科")
Department.create(name: "アレルギー内科")
Department.create(name: "血液内科")
Department.create(name: "神経内科")
Department.create(name: "心療内科")
Department.create(name: "感染症内科")
Department.create(name: "腫瘍内科")
Department.create(name: "消化器外科")
Department.create(name: "呼吸器外科")
Department.create(name: "心臓血管外科")
Department.create(name: "乳腺外科")
Department.create(name: "甲状腺外科")
Department.create(name: "小児外科")
Department.create(name: "肛門外科")
Department.create(name: "整形外科")
Department.create(name: "形成外科")
Department.create(name: "脳神経外科")
Department.create(name: "小児内科")
Department.create(name: "産婦人科")
Department.create(name: "皮膚科")
Department.create(name: "泌尿器科")
Department.create(name: "眼科")
Department.create(name: "耳鼻咽喉科")
Department.create(name: "リハビリ科")
Department.create(name: "放射線科")
Department.create(name: "精神科")
Department.create(name: "麻酔科")
Department.create(name: "歯科")


description = "私は場合やはりある合点事という事の他に着けなけれです。いくら途中に仮定事も別にそんな批評ででばかりを知れがいうには尊敬出たらなば、始終には済んましないなでし。

口調に死んた事はよしたくさんを初めてるでた。いくら岡田さんが就職人始終説明がかれた時代この願そこかぼんやりにによってご病気んですたならが、この今はそれか世の中坊ちゃんが犯さて、大森さんの方が校長の私がむくむくご忠告としけれどもそれ性より肝乱暴で描いようともし小活動から考えたくうて、どうしても無論注文が飲んないばやりですのからするでだっ。

またはそれでお大名をよるのはそれほど非常と通じたので、こういう一道をはただすましてという国で出さて行くなです。"

s1 = Date.parse("1930/01/01")
s2 = Date.parse("2020/05/29")
s = Random.rand(s1 .. s2)
h = ['病院', '医院', 'クリニック']
d = (1..35).to_a
desease = ['仮病', '糖尿病', '胃がん', '白内障']
icon = ['icon1.png', 'icon2.jpg', 'icon3.png', 'icon4.jpg', 'icon5.png', 'icon6.jpg', 'icon7.png', 'icon8.png', 'icon9.png', 'icon10.png', 'icon11.jpg']
ref = ['refferal1.png', 'refferal2.jpg', 'refferal3.jpg', 'refferal4.jpg']
fe = ['female1.jpeg', 'female2.png', 'female3.png', 'female4.png', 'female5.png']
ma = ['male1.jpeg', 'male2.png', 'male3.png']

50.times do |n|
  gimei = Gimei.new
  s = Random.rand(s1 .. s2)

  Patient.create(
    email: "pt#{n+1}@pt#{n+1}",
    password: '1qaz2wsx',
    family_name: gimei.last.kanji,
    first_name: gimei.first.kanji,
    family_name_kana: gimei.last.katakana,
    first_name_kana: gimei.first.katakana,
    phone_number: '00000000000',
    gender: gimei.gender,
    date_of_birth: s
  )
end

50.times do |n|
  gimei = Gimei.new
  admin = Gimei.new

  hos = Hospital.new(
    name: gimei.first.kanji + h.sample,
    name_kana: gimei.first.katakana,
    founder: "医療法人#{gimei.last.kanji}会",
    founder_kana: "イリョウホウジン#{gimei.last.katakana}カイ",
    administer: admin.kanji,
    administer_kana: admin.katakana,
    post_code: rand(1111111..9999999),
    prefecture: gimei.prefecture.kanji,
    address: gimei.city.kanji,
    phone_number: '00000000000',
    homepage: 'http://hellowork.mhlw.com',
    description: description,
    image: open("./db/fixtures/#{icon.sample}")
  )
  hos.save
  hos.department_ids = d.sample((1..10).to_a.sample)
end

100.times do |n|
  gimei = Gimei.new
  s = Random.rand(s1 .. s2)
  r = Random.rand(s1 .. s2)
  if gimei.gender == :male
    gender = 0
  else
    gender = 1
  end

  Doctor.create(
    email: "dr#{n+1}@dr#{n+1}",
    password: '1qaz2wsx',
    family_name: gimei.last.kanji,
    first_name: gimei.first.kanji,
    family_name_kana: gimei.last.katakana,
    first_name_kana: gimei.first.katakana,
    gender: gender,
    date_of_birth: s,
    registration_number: rand(1..9999999),
    registration_date: r,
    description: description,
    hospital_id: rand(1..50),
    department_id: rand(1..35),
    if gender == 0
      image: open("./db/fixtures/#{ma.sample}")
    else
      image: open("./db/fixtures/#{fe.sample}")
    end
  )
end

100.times do |n|
  Post.create!(
    refferal: open("./db/fixtures/#{ref.sample}"),
    desease_name: desease.sample,
    detail: description,
    patient_id: rand(1..50),
    department_id: rand(1..35)
  )
end

200.times do |n|
  Opinion.create{
    content: description,
    post_id: rand(1..100),
    doctor_id: rand(1..100),
  }
end

200.times do |n|
  PatientComment.create{
    content: description,
    patient_id: rand(1..50),
    opinion_id: rand(1..200)
  }
end

200.times do |n|
  DoctorComment.create{
    content: description,
    doctor_id: rand(1..100),
    opinion_id: rand(1..200)
  }
end
