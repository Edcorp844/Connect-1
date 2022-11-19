class Comment {
  final String from, content, image;
  Comment({
    required this.from,
    required this.content,
    required this.image,
  });
}

class News {
  final String title, content, category, description;
  final DateTime date;
  final Map images;
  final List<Comment> comments;
  News({
    required this.category,
    required this.title,
    required this.date,
    required this.content,
    required this.images,
    required this.description,
    required this.comments,
  });
}

List<News> news = [
  News(
    category: 'Social',
    title: 'The Global Interversity Conference',
    date: DateTime.now(),
    content:
        '''If God loves you, then you must be chastened...and when it comes take it positively
don’t debate to win battles just endure it positively. But the challenge is that we ae
dealing with a victimized church who were abused and used and its up to us ministers
to make that right. Sometimes the things people throw out and the very things other
people take in to use it. (Always the fourth generation forgets God) so we are at the
point where this generation must make a deliberate choice to either light the fire or lose
it. Everyone is and must be a partaker of chastisement...The second mantle is what falls...you have to wait for it to fall then take it up not
taking it upon you by force. Elisha never tried to proclaim himself a prophet during the
days of Elijah. He didn’t break the ranks. Absalom tried to take the father’s throne by
stealing his father’s people. That’s error. You don’t build by taking popularity stands
and going behind talking against then later think God’s hand will be upon them.
Another example is Cain, he killed his brother
The prodigals who force their exist. Luke 15:13 and don’t wait out their time
Another one is Judas who carry a certain jealousy towards their father. John 12:6 you
should never be jealous of a man if you are sure the Hand of The LORD is upon Him.
If you do, then you will not leave up to his level, if you above them then they will
catch you in rank and over take you. And frustrating the hand that should bless you
causes you to kill your own ministry.
The last one Gehazi who is greedy: He will take what the father can’t take. If you see your man of God not doing something just don’t do it also because you are submitted.
We tach more by our actions than our speech. These don’t know when to say no and when to say yes. So you lose the timing of the spirit. If your father can’t receive from another hand don’t receive from it . 2Chron 18:16 and John 10:4-5 Ps 92:13. It’s not honorable to stand on the pulpit of God with greed in your heart. Zeal and greed look alike but greed has no control but zeal is controlled by The Spirit. Don’t mix your ground with a variety of many seeds. (Knowing the voices of strangers and also your father)
A minister is not a deep person though depth is part of it. A worshipper is not one with a good voice, we look at the forms and leave God out.2 Cor.13:5 today when the Holy Ghost comes upon them they build more houses and drive more cars but the men of old when The Holy Ghost came upon them and they became witnesses. Acts.1:8. We are supposed to be talking winning souls giving for the gospel doing everything for the gospel. Greed opens up your ears to hear strangers.''',
    images: {
      "leading": "lib/assets/APGL.JPG",
      "content1": "lib/assets/wave.JPG",
      "content2": "lib/assets/bow.JPG"
    },
    description: 'History was writen  on G.I.C. Where were you at that time?',
    comments: [
      Comment(
        from: "Mwaana wa Apostle",
        content: '''My father has don it all...
        where would we be if it was'nt for the gosple???👏👏👏👏
        ''',
        image: 'lib/assets/APGL.JPG',
      ),
      Comment(
        from: "Frost Edson",
        content: 'the "GIC" was oe of tthe life changing experience',
        image: 'lib/assets/register.jpg',
      ),
      Comment(
        from: "Kat Edson",
        content: "How could i miss",
        image: "lib/assets/image2.jpg",
      )
    ],
  ),
  News(
      category: 'Social',
      title: 'Table on the "Smart Error"',
      date: DateTime.now(),
      content: '''Mozilla Thunderbird is free and open source software, 
            built by a community of thousands from all over the world. There are a few things you should know:
            Thunderbird is made available to you under the terms of the Mozilla Public License. 
            This means you may use, copy and distribute Thunderbird to others. 
            You are also welcome to modify the source code of Thunderbird as you want to meet your needs. 
            The Mozilla Public License also gives you the right to distribute your modified versions.
            Mozilla does not grant you any rights to the Mozilla and Thunderbird trademarks or logos. 
            Additional information on Trademarks may be found here.Privacy policies for Mozilla's products may be found here: 
            Thunderbird also offers optional services, such as the add-on update service; however we cannot guarantee they are 100% accurate or error-free.
            More details, including information on how to disable the services, can be found in the service terms.''',
      images: {
        "leading": "lib/assets/h3.jpeg",
        "content1": "lib/assets/image3.jpg",
      },
      description: 'The smart error brings more wonders',
      comments: []),
  News(
      category: 'Social',
      title: 'Manifest Worship Evening',
      date: DateTime.now(),
      content: '''Mozilla Thunderbird is free and open source software, 
            built by a community of thousands from all over the world. There are a few things you should know:
            Thunderbird is made available to you under the terms of the Mozilla Public License. 
            This means you may use, copy and distribute Thunderbird to others. 
            You are also welcome to modify the source code of Thunderbird as you want to meet your needs. 
            The Mozilla Public License also gives you the right to distribute your modified versions.
            Mozilla does not grant you any rights to the Mozilla and Thunderbird trademarks or logos. 
            Additional information on Trademarks may be found here.Privacy policies for Mozilla's products may be found here: 
            Thunderbird also offers optional services, such as the add-on update service; however we cannot guarantee they are 100% accurate or error-free.
            More details, including information on how to disable the services, can be found in the service terms.''',
      images: {
        "leading": "lib/assets/choir.JPG",
        "content1": "lib/assets/image3.jpg",
      },
      description:
          "The lame walked, the blind saw. What didn't happen really??",
      comments: []),
  News(
      category: 'Social',
      title: 'Songs writting with guitars',
      date: DateTime.now(),
      content: '''Mozilla Thunderbird is free and open source software, 
            built by a community of thousands from all over the world. There are a few things you should know:
            Thunderbird is made available to you under the terms of the Mozilla Public License. 
            This means you may use, copy and distribute Thunderbird to others. 
            You are also welcome to modify the source code of Thunderbird as you want to meet your needs. 
            The Mozilla Public License also gives you the right to distribute your modified versions.
            Mozilla does not grant you any rights to the Mozilla and Thunderbird trademarks or logos. 
            Additional information on Trademarks may be found here.Privacy policies for Mozilla's products may be found here: 
            Thunderbird also offers optional services, such as the add-on update service; however we cannot guarantee they are 100% accurate or error-free.
            More details, including information on how to disable the services, can be found in the service terms.''',
      images: {
        "leading": "lib/assets/music.JPG",
        "content1": "lib/assets/register.jpg",
      },
      description: 'Professional musicians tell us what it is like',
      comments: []),
  News(
      category: 'Social',
      title: 'Aisha Dee Relationships',
      date: DateTime.now(),
      content: '''Mozilla Thunderbird is free and open source software, 
            built by a community of thousands from all over the world. There are a few things you should know:
            Thunderbird is made available to you under the terms of the Mozilla Public License. 
            This means you may use, copy and distribute Thunderbird to others. 
            You are also welcome to modify the source code of Thunderbird as you want to meet your needs. 
            The Mozilla Public License also gives you the right to distribute your modified versions.
            Mozilla does not grant you any rights to the Mozilla and Thunderbird trademarks or logos. 
            Additional information on Trademarks may be found here.Privacy policies for Mozilla's products may be found here: 
            Thunderbird also offers optional services, such as the add-on update service; however we cannot guarantee they are 100% accurate or error-free.
            More details, including information on how to disable the services, can be found in the service terms.''',
      images: {
        "leading": "lib/assets/image2.jpg",
        "content1": "lib/assets/image3.jpg",
      },
      description: 'Aisha Dee opens up on her relationships',
      comments: []),
  News(
      category: 'Social',
      title: 'MacBook Thieves Caught',
      date: DateTime.now(),
      content: '''Mozilla Thunderbird is free and open source software, 
            built by a community of thousands from all over the world. There are a few things you should know:
            Thunderbird is made available to you under the terms of the Mozilla Public License. 
            This means you may use, copy and distribute Thunderbird to others. 
            You are also welcome to modify the source code of Thunderbird as you want to meet your needs. 
            The Mozilla Public License also gives you the right to distribute your modified versions.
            Mozilla does not grant you any rights to the Mozilla and Thunderbird trademarks or logos. 
            Additional information on Trademarks may be found here.Privacy policies for Mozilla's products may be found here: 
            Thunderbird also offers optional services, such as the add-on update service; however we cannot guarantee they are 100% accurate or error-free.
            More details, including information on how to disable the services, can be found in the service terms.''',
      images: {
        "leading": "lib/assets/0x0.jpg",
        "content1": "lib/assets/register.jpg",
      },
      description: '20 MacBooks recovered from profesional thieves',
      comments: []),
];
