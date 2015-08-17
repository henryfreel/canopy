User.create(first_name: 'Alex', last_name: 'Chan', username: 'Alex', email: 'alex@gmail.com', password: 'password', location: 'San Francisco', bio: 'Put a bird on it Helvetica Pitchfork tofu dreamcatcher, selvage Intelligentsia mumblecore shabby chic gastropub quinoa. Squid Odd Future Wes Anderson fashion axe Tumblr, pour-over pop-up YOLO next level. Pickled narwhal scenester mumblecore blog distillery. ', github: 'www.github.com/alex415', linkedin: 'www.linkedin.com/alexchan415', stack: 'Javascript, Ruby on Rails, Express', job_title: 'Web Developer', avatar: 'https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0CAcQjRxqFQoTCOChkLLZsMcCFQwqiAod9W8Atw&url=%2Furl%3Fsa%3Di%26rct%3Dj%26q%3D%26esrc%3Ds%26source%3Dimages%26cd%3D%26cad%3Drja%26uact%3D8%26ved%3D0CAcQjRxqFQoTCOChkLLZsMcCFQwqiAod9W8Atw%26url%3Dhttps%253A%252F%252Fcommons.wikimedia.org%252Fwiki%252FFile%253ABroccoli-tree.svg%26ei%3DaCHSVeDNG4zUoAT134G4Cw%26bvm%3Dbv.99804247%2Cd.cGU%26psig%3DAFQjCNHsN8bh5dpNt4-_J-3dE7ozDnjO5w%26ust%3D1439920866328450&ei=aCHSVeDNG4zUoAT134G4Cw&bvm=bv.99804247,d.cGU&psig=AFQjCNHsN8bh5dpNt4-_J-3dE7ozDnjO5w&ust=1439920866328450')

User.create(first_name: 'Test', last_name: 'Project', username: 'Test', email: 'test@gmail.com', password: 'test', location: 'San Francisco', bio: 'Put a bird on it Helvetica Pitchfork tofu dreamcatcher, selvage Intelligentsia mumblecore shabby chic gastropub quinoa. Squid Odd Future Wes Anderson fashion axe Tumblr, pour-over pop-up YOLO next level. Pickled narwhal scenester mumblecore blog distillery. ', github: 'www.github.com/test', linkedin: 'www.linkedin.com/test', stack: 'Javascript, Ruby on Rails, Express', job_title: 'Web Developer', avatar: 'https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0CAcQjRxqFQoTCOChkLLZsMcCFQwqiAod9W8Atw&url=%2Furl%3Fsa%3Di%26rct%3Dj%26q%3D%26esrc%3Ds%26source%3Dimages%26cd%3D%26cad%3Drja%26uact%3D8%26ved%3D0CAcQjRxqFQoTCOChkLLZsMcCFQwqiAod9W8Atw%26url%3Dhttps%253A%252F%252Fcommons.wikimedia.org%252Fwiki%252FFile%253ABroccoli-tree.svg%26ei%3DaCHSVeDNG4zUoAT134G4Cw%26bvm%3Dbv.99804247%2Cd.cGU%26psig%3DAFQjCNHsN8bh5dpNt4-_J-3dE7ozDnjO5w%26ust%3D1439920866328450&ei=aCHSVeDNG4zUoAT134G4Cw&bvm=bv.99804247,d.cGU&psig=AFQjCNHsN8bh5dpNt4-_J-3dE7ozDnjO5w&ust=1439920866328450')

User.create(first_name: 'Zoe', last_name: 'Foss', username: 'Zoe', email: 'zoe@gmail.com', password: 'password', location: 'San Francisco', bio: 'Put a bird on it Helvetica Pitchfork tofu dreamcatcher, selvage Intelligentsia mumblecore shabby chic gastropub quinoa. Squid Odd Future Wes Anderson fashion axe Tumblr, pour-over pop-up YOLO next level. Pickled narwhal scenester mumblecore blog distillery. ', github: 'www.github.com/zoe', linkedin: 'www.linkedin.com/zoe', stack: 'Javascript, Ruby on Rails, Express', job_title: 'Web Developer', avatar: 'https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0CAcQjRxqFQoTCOChkLLZsMcCFQwqiAod9W8Atw&url=%2Furl%3Fsa%3Di%26rct%3Dj%26q%3D%26esrc%3Ds%26source%3Dimages%26cd%3D%26cad%3Drja%26uact%3D8%26ved%3D0CAcQjRxqFQoTCOChkLLZsMcCFQwqiAod9W8Atw%26url%3Dhttps%253A%252F%252Fcommons.wikimedia.org%252Fwiki%252FFile%253ABroccoli-tree.svg%26ei%3DaCHSVeDNG4zUoAT134G4Cw%26bvm%3Dbv.99804247%2Cd.cGU%26psig%3DAFQjCNHsN8bh5dpNt4-_J-3dE7ozDnjO5w%26ust%3D1439920866328450&ei=aCHSVeDNG4zUoAT134G4Cw&bvm=bv.99804247,d.cGU&psig=AFQjCNHsN8bh5dpNt4-_J-3dE7ozDnjO5w&ust=1439920866328450')

6.times do
  Project.create(
  live_url: 'www.liveurl.herokuapp.com',
  github_url: 'www.github.com/testproject',
  title: FFaker::Lorem.words(3).join(' '),
  description: FFaker::Lorem.words(20).join(' '),
  user_id: 1,
)
end

6.times do
  Project.create(
  live_url: 'www.liveurl.herokuapp.com',
  github_url: 'www.github.com/testproject',
  title: FFaker::Lorem.words(3).join(' '),
  description: FFaker::Lorem.words(20).join(' '),
  user_id: 2,
)
end

6.times do
  Project.create(
  live_url: 'www.liveurl.herokuapp.com',
  github_url: 'www.github.com/testproject',
  title: FFaker::Lorem.words(3).join(' '),
  description: FFaker::Lorem.words(20).join(' '),
  user_id: 3,
)
end