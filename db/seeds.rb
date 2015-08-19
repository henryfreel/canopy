User.create(first_name: 'Alex', last_name: 'Chan', username: 'Alex', email: 'alex@gmail.com', password: 'password', location: 'San Francisco', bio: 'Put a bird on it Helvetica Pitchfork tofu dreamcatcher, selvage Intelligentsia mumblecore shabby chic gastropub quinoa. Squid Odd Future Wes Anderson fashion axe Tumblr, pour-over pop-up YOLO next level. Pickled narwhal scenester mumblecore blog distillery. ', github: 'https://www.github.com/alex415', linkedin: 'https://www.linkedin.com/alexchan415', stack: 'Javascript, Ruby on Rails, Express', job_title: 'Web Developer')

User.create(first_name: 'Test', last_name: 'Project', username: 'Test', email: 'test@gmail.com', password: 'password', location: 'San Francisco', bio: 'Put a bird on it Helvetica Pitchfork tofu dreamcatcher, selvage Intelligentsia mumblecore shabby chic gastropub quinoa. Squid Odd Future Wes Anderson fashion axe Tumblr, pour-over pop-up YOLO next level. Pickled narwhal scenester mumblecore blog distillery. ', github: 'https://www.github.com/test', linkedin: 'https://www.linkedin.com/test', stack: 'Javascript, Ruby on Rails, Express', job_title: 'Web Developer')

User.create(first_name: 'Zoe', last_name: 'Foss', username: 'Zoe', email: 'zoe@gmail.com', password: 'password', location: 'San Francisco', bio: 'Put a bird on it Helvetica Pitchfork tofu dreamcatcher, selvage Intelligentsia mumblecore shabby chic gastropub quinoa. Squid Odd Future Wes Anderson fashion axe Tumblr, pour-over pop-up YOLO next level. Pickled narwhal scenester mumblecore blog distillery. ', github: 'https://www.github.com/zoe', linkedin: 'https://www.linkedin.com/zoe', stack: 'Javascript, Ruby on Rails, Express', job_title: 'Web Developer')

1.times do
  Project.create(
  live_url: 'https://www.amazon.com/gp/gw/ajax/s.html',
  github_url: 'www.github.com/testproject',
  title: FFaker::Lorem.words(3).join(' '),
  description: FFaker::Lorem.words(20).join(' '),
  snippet: '<div class="container">
  <div class="row">
    <div class="col-md-6 well">
      <h1>All Projects</h1>
        <% @projects.each do |project| %>
          <strong><%= project.title %></strong><br>
          <%= project.user.username %><br>
          <%= project.live_url %><br>
          <%= project.github_url %><br>
          <%= project.description %><br>
          <pre><code><%= project.snippet %><br></code></pre>
          <br>
        <% end %>
    </div>
  </div>
</div>',
  user_id: 1,
)
end

1.times do
  Project.create(
  live_url: 'https://www.amazon.com/gp/gw/ajax/s.html',
  github_url: 'www.github.com/testproject',
  title: FFaker::Lorem.words(3).join(' '),
  description: FFaker::Lorem.words(20).join(' '),
  snippet: '<div class="container">
  <div class="row">
    <div class="col-md-6 well">
      <h1>All Projects</h1>
        <% @projects.each do |project| %>
          <strong><%= project.title %></strong><br>
          <%= project.user.username %><br>
          <%= project.live_url %><br>
          <%= project.github_url %><br>
          <%= project.description %><br>
          <pre><code><%= project.snippet %><br></code></pre>
          <br>
        <% end %>
    </div>
  </div>
</div>',
  user_id: 2,
)
end

1.times do
  Project.create(
  live_url: 'https://www.amazon.com/gp/gw/ajax/s.html',
  github_url: 'www.github.com/testproject',
  title: FFaker::Lorem.words(3).join(' '),
  description: FFaker::Lorem.words(20).join(' '),
  snippet: '<div class="container">
  <div class="row">
    <div class="col-md-6 well">
      <h1>All Projects</h1>
        <% @projects.each do |project| %>
          <strong><%= project.title %></strong><br>
          <%= project.user.username %><br>
          <%= project.live_url %><br>
          <%= project.github_url %><br>
          <%= project.description %><br>
          <pre><code><%= project.snippet %><br></code></pre>
          <br>
        <% end %>
    </div>
  </div>
</div>',
  user_id: 3,
)
end