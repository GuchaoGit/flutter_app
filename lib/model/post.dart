class Post {
  final String title;
  final String author;
  final String imageUrl;
  final String description;

  const Post({
    this.title,
    this.author,
    this.imageUrl,
    this.description,
  });
}

final List<Post> posts = [
  Post(
    title: '红楼梦',
    author: '曹雪芹',
    imageUrl:
        'https://gss2.bdstatic.com/-fo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike92%2C5%2C5%2C92%2C30/sign=4dca8f8db44543a9e116f29e7f7ee1e7/5243fbf2b21193134eadaec966380cd790238dd9.jpg',
    description: '《红楼梦》，中国古代章回体长篇小说，又名《石头记》等，被列为中国古典四大名著之首，一般认为是清代作家曹雪芹所著。小说以贾、史、王、薛四大家族的兴衰为背景，以富贵公子贾宝玉为视角，描绘了一批举止见识出于须眉之上的闺阁佳人的人生百态，展现了真正的人性美和悲剧美，可以说是一部从各个角度展现女性美的史诗。',
  ),
  Post(
    title: '水浒传',
    author: '施耐庵',
    imageUrl:
        'https://gss2.bdstatic.com/-fo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike92%2C5%2C5%2C92%2C30/sign=4ec2ac3cd72a283457ab3e593adca28f/241f95cad1c8a786e78cf62f6409c93d70cf5068.jpg',
    description: '全书通过描写梁山好汉反抗欺压、水泊梁山壮大和受宋朝招安，以及受招安后为宋朝征战，最终消亡的宏大故事，艺术地反映了中国历史上宋江起义从发生、发展直至失败的全过程，深刻揭示了起义的社会根源，满腔热情地歌颂了起义英雄的反抗斗争和他们的社会理想，也具体揭示了起义失败的内在历史原因。',
  ),
  Post(
    title: '三国演义',
    author: '罗贯中',
    imageUrl:
        'https://gss3.bdstatic.com/-Po3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike150%2C5%2C5%2C150%2C50/sign=8e771f2a2c34349b600b66d7a8837eab/2fdda3cc7cd98d10aab3f201253fb80e7bec909f.jpg',
    description: '《三国演义》描写了从东汉末年到西晋初年之间近百年的历史风云，以描写战争为主，诉说了东汉末年的群雄割据混战和魏、蜀、吴三国之间的政治和军事斗争，最终司马炎一统三国，建立晋朝的故事。反映了三国时代各类社会斗争与矛盾的转化，并概括了这一时代的历史巨变，塑造了一群叱咤风云的三国英雄人物。',
  ),
  Post(
    title: '西游记',
    author: '吴承恩',
    imageUrl:
        'https://gss0.bdstatic.com/-4o3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike220%2C5%2C5%2C220%2C73/sign=548fe0dabf3eb13550cabfe9c777c3b6/9345d688d43f87947047841cd11b0ef41bd53a4c.jpg',
    description: '该剧讲述的是孙悟空、猪八戒、沙僧辅保大唐高僧玄奘去西天取经，师徒四人一路抢滩涉险，降妖伏怪，历经八十一难，取回真经，终修正果的故事。',
  ),
];
