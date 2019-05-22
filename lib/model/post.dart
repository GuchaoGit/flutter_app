class Post {
  final String title;
  final String author;
  final String imageUrl;

  const Post({
    this.title,
    this.author,
    this.imageUrl,
  });
}

final List<Post> posts = [
  Post(
    title: '红楼梦',
    author: '曹雪芹',
    imageUrl:
        'https://gss2.bdstatic.com/-fo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike92%2C5%2C5%2C92%2C30/sign=4dca8f8db44543a9e116f29e7f7ee1e7/5243fbf2b21193134eadaec966380cd790238dd9.jpg',
  ),
  Post(
    title: '水浒传',
    author: '施耐庵',
    imageUrl:
        'https://gss2.bdstatic.com/-fo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike92%2C5%2C5%2C92%2C30/sign=4ec2ac3cd72a283457ab3e593adca28f/241f95cad1c8a786e78cf62f6409c93d70cf5068.jpg',
  ),
  Post(
    title: '三国演义',
    author: '罗贯中',
    imageUrl:
        'https://gss3.bdstatic.com/-Po3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike150%2C5%2C5%2C150%2C50/sign=8e771f2a2c34349b600b66d7a8837eab/2fdda3cc7cd98d10aab3f201253fb80e7bec909f.jpg',
  ),
  Post(
    title: '西游记',
    author: '吴承恩',
    imageUrl:
        'https://gss0.bdstatic.com/-4o3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike220%2C5%2C5%2C220%2C73/sign=548fe0dabf3eb13550cabfe9c777c3b6/9345d688d43f87947047841cd11b0ef41bd53a4c.jpg',
  ),
];
