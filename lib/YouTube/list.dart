class videomodel {
  String? thumbnail;
  String? videoTitle;
  String? videoDuration;
  String? avatar;
  String? channel;
  String? views;
  String? date;

  videomodel(this.thumbnail, this.videoTitle, this.videoDuration, this.avatar,
      this.channel, this.views, this.date);
}

List<videomodel> items = [
  videomodel('asscts/images/brazil.jpg', 'React in 80 seconds!', '25.14',
      'asscts/images/brasilprofil.jpg', 'brasil', '90M views', '29 day ago'),
  videomodel('asscts/images/webseee.jpg', 'Flutter Story App UI Concept - Speed Code', '30.1',
      'asscts/images/download.jpg', 'webseries2022', '55K views', '1 years ago'),
  videomodel('asscts/images/leo.webp', 'LIONEL MESSI AND ARGENTINA CELEBRATE | Official video', '33.28',
      'asscts/images/fifa.png', ' fifa2022', '29M views', '4 day ago'),
  videomodel('asscts/images/HP-15s-Natural-Silver.jpg', 'HP 15s Review – A Student’s Potential Best Friend', '10.14',
      'asscts/images/lap.jpg', 'HP laptop', '600K views', '11 hours ago'),
];