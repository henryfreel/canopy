User.create(first_name: 'Alex', last_name: 'Chan', username: 'Alex', email: 'alex@gmail.com', password: 'password', location: 'San Francisco', bio: 'Put a bird on it Helvetica Pitchfork tofu dreamcatcher, selvage Intelligentsia mumblecore shabby chic gastropub quinoa. Squid Odd Future Wes Anderson fashion axe Tumblr, pour-over pop-up YOLO next level. Pickled narwhal scenester mumblecore blog distillery. ', github: 'www.github.com/alex415', linkedin: 'www.linkedin.com/alexchan415', stack: 'Javascript, Ruby on Rails, Express', job_title: 'Web Developer')

User.create(first_name: 'Test', last_name: 'Project', username: 'Test', email: 'test@gmail.com', password: 'test', location: 'San Francisco', bio: 'Put a bird on it Helvetica Pitchfork tofu dreamcatcher, selvage Intelligentsia mumblecore shabby chic gastropub quinoa. Squid Odd Future Wes Anderson fashion axe Tumblr, pour-over pop-up YOLO next level. Pickled narwhal scenester mumblecore blog distillery. ', github: 'www.github.com/test', linkedin: 'www.linkedin.com/test', stack: 'Javascript, Ruby on Rails, Express', job_title: 'Web Developer')

User.create(first_name: 'Zoe', last_name: 'Foss', username: 'Zoe', email: 'zoe@gmail.com', password: 'password', location: 'San Francisco', bio: 'Put a bird on it Helvetica Pitchfork tofu dreamcatcher, selvage Intelligentsia mumblecore shabby chic gastropub quinoa. Squid Odd Future Wes Anderson fashion axe Tumblr, pour-over pop-up YOLO next level. Pickled narwhal scenester mumblecore blog distillery. ', github: 'www.github.com/zoe', linkedin: 'www.linkedin.com/zoe', stack: 'Javascript, Ruby on Rails, Express', job_title: 'Web Developer')

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