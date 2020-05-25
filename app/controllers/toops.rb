"Started GET / for ::1 at 2020-05-25 16:00:07 -0400
Processing by ScoresController#home as HTML
  User Load (0.4ms)  SELECT  users.* FROM users WHERE users.id = $1 ORDER BY users.id ASC LIMIT $2  [[id, 3], [LIMIT, 1]]
  ↳ config/initializers/query_trace.rb:18
   (0.3ms)  SELECT COUNT(*) FROM scores WHERE scores.user_id = $1  [[user_id, 3]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:6:in `home'
  Applicant Load (0.3ms)  SELECT applicants.* FROM applicants
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  Score Load (0.4ms)  SELECT scores.* FROM scores WHERE scores.applicant_id IN ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $20, $21)  [[applicant_id, 6], [applicant_id, 8], [applicant_id, 9], [applicant_id, 11], [applicant_id, 12], [applicant_id, 13], [applicant_id, 15], [applicant_id, 17], [applicant_id, 18], [applicant_id, 19], [applicant_id, 5], [applicant_id, 20], [applicant_id, 14], [applicant_id, 3], [applicant_id, 1], [applicant_id, 4], [applicant_id, 21], [applicant_id, 2], [applicant_id, 10], [applicant_id, 16], [applicant_id, 7]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  User Load (0.4ms)  SELECT users.* FROM users WHERE users.id IN ($1, $2, $3, $4, $5, $6)  [[id, 5], [id, 8], [id, 3], [id, 9], [id, 1], [id, 2]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  RemovedApplicant Load (0.4ms)  SELECT removed_applicants.* FROM removed_applicants WHERE removed_applicants.applicant_id IN ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $20, $21)  [[applicant_id, 6], [applicant_id, 8], [applicant_id, 9], [applicant_id, 11], [applicant_id, 12], [applicant_id, 13], [applicant_id, 15], [applicant_id, 17], [applicant_id, 18], [applicant_id, 19], [applicant_id, 5], [applicant_id, 20], [applicant_id, 14], [applicant_id, 3], [applicant_id, 1], [applicant_id, 4], [applicant_id, 21], [applicant_id, 2], [applicant_id, 10], [applicant_id, 16], [applicant_id, 7]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.4ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 6]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.2ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 6]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.4ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 8]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.2ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 8]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.4ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 9]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.4ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 9]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.4ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 11]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.2ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 11]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 12]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.2ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 12]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.2ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 13]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.2ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 13]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 15]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.2ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 15]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.2ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 17]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.2ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 17]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.2ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 18]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 18]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.4ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 19]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.2ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 19]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.4ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 5]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.2ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 5]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 20]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.2ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 20]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.2ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 14]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.2ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 14]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 3]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.2ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 3]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 1]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 1]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.4ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 4]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.2ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 4]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 21]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 21]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.5ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 2]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 2]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.4ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 10]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.4ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 10]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.6ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 16]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 16]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.6ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 7]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 7]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  PendingScore Load (0.1ms)  SELECT  pending_scores.* FROM pending_scores WHERE pending_scores.user_id = $1 LIMIT $2  [[user_id, 3], [LIMIT, 1]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:9:in `home'
   (0.3ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 16]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.3ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 7]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.2ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 2]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.2ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 19]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.3ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 15]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.3ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 11]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.3ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 5]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.4ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 4]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.3ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 17]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.3ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 10]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.2ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 6]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.2ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 12]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.2ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 18]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.2ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 8]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.2ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 3]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.2ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 21]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.2ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 9]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.3ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 13]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
  Rendering scores/home.html.erb within layouts/application
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 16]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 16]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 7]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 7]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 2]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 2]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 19]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 19]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 15]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 15]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 11]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 11]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 5]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 5]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 4]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 4]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 17]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 17]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 10]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 10]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 6]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 6]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 12]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 12]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 18]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 18]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 8]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 8]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 3]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 3]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 21]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 21]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.1ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 9]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 9]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 13]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 13]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213434576720'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213434576720'"

   "Started GET / for ::1 at 2020-05-25 16:06:35 -0400
Processing by ScoresController#home as HTML
  User Load (0.4ms)  SELECT  users.* FROM users WHERE users.id = $1 ORDER BY users.id ASC LIMIT $2  [[id, 3], [LIMIT, 1]]
  ↳ config/initializers/query_trace.rb:18
   (0.8ms)  SELECT COUNT(*) FROM scores WHERE scores.user_id = $1  [[user_id, 3]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:6:in `home'
  Applicant Load (0.6ms)  SELECT applicants.* FROM applicants
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.7ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 6]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.5ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 6]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  User Load (0.4ms)  SELECT users.* FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 6]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:93:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:93:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  RemovedApplicant Load (0.6ms)  SELECT removed_applicants.* FROM removed_applicants WHERE removed_applicants.applicant_id = $1  [[applicant_id, 6]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:94:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:94:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.5ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 8]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.4ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 8]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  User Load (0.4ms)  SELECT users.* FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 8]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:93:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:93:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  RemovedApplicant Load (0.3ms)  SELECT removed_applicants.* FROM removed_applicants WHERE removed_applicants.applicant_id = $1  [[applicant_id, 8]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:94:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:94:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.5ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 9]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.6ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 9]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  User Load (1.3ms)  SELECT users.* FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 9]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:93:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:93:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  RemovedApplicant Load (0.3ms)  SELECT removed_applicants.* FROM removed_applicants WHERE removed_applicants.applicant_id = $1  [[applicant_id, 9]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:94:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:94:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.5ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 11]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 11]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  User Load (0.3ms)  SELECT users.* FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 11]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:93:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:93:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  RemovedApplicant Load (0.3ms)  SELECT removed_applicants.* FROM removed_applicants WHERE removed_applicants.applicant_id = $1  [[applicant_id, 11]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:94:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:94:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (64.9ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 12]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 12]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  User Load (0.3ms)  SELECT users.* FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 12]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:93:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:93:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  RemovedApplicant Load (0.3ms)  SELECT removed_applicants.* FROM removed_applicants WHERE removed_applicants.applicant_id = $1  [[applicant_id, 12]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:94:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:94:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.4ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 13]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 13]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  User Load (0.4ms)  SELECT users.* FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 13]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:93:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:93:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  RemovedApplicant Load (0.2ms)  SELECT removed_applicants.* FROM removed_applicants WHERE removed_applicants.applicant_id = $1  [[applicant_id, 13]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:94:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:94:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.4ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 15]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 15]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  User Load (0.2ms)  SELECT users.* FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 15]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:93:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:93:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  RemovedApplicant Load (0.2ms)  SELECT removed_applicants.* FROM removed_applicants WHERE removed_applicants.applicant_id = $1  [[applicant_id, 15]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:94:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:94:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.5ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 17]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 17]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  User Load (0.3ms)  SELECT users.* FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 17]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:93:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:93:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  RemovedApplicant Load (0.2ms)  SELECT removed_applicants.* FROM removed_applicants WHERE removed_applicants.applicant_id = $1  [[applicant_id, 17]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:94:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:94:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.6ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 18]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.4ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 18]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  User Load (0.4ms)  SELECT users.* FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 18]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:93:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:93:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  RemovedApplicant Load (0.2ms)  SELECT removed_applicants.* FROM removed_applicants WHERE removed_applicants.applicant_id = $1  [[applicant_id, 18]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:94:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:94:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.4ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 19]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.2ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 19]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  User Load (0.2ms)  SELECT users.* FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 19]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:93:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:93:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  RemovedApplicant Load (0.4ms)  SELECT removed_applicants.* FROM removed_applicants WHERE removed_applicants.applicant_id = $1  [[applicant_id, 19]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:94:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:94:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.5ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 5]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 5]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  User Load (0.4ms)  SELECT users.* FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 5]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:93:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:93:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  RemovedApplicant Load (0.2ms)  SELECT removed_applicants.* FROM removed_applicants WHERE removed_applicants.applicant_id = $1  [[applicant_id, 5]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:94:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:94:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.4ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 20]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 20]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  User Load (0.5ms)  SELECT users.* FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 20]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:93:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:93:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.6ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 14]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 14]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  User Load (0.2ms)  SELECT users.* FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 14]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:93:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:93:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.5ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 3]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.2ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 3]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  User Load (0.2ms)  SELECT users.* FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 3]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:93:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:93:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  RemovedApplicant Load (0.2ms)  SELECT removed_applicants.* FROM removed_applicants WHERE removed_applicants.applicant_id = $1  [[applicant_id, 3]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:94:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:94:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.7ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 1]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 1]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.5ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 4]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 4]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  User Load (0.2ms)  SELECT users.* FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 4]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:93:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:93:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  RemovedApplicant Load (0.1ms)  SELECT removed_applicants.* FROM removed_applicants WHERE removed_applicants.applicant_id = $1  [[applicant_id, 4]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:94:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:94:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 21]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.3ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 21]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  User Load (0.4ms)  SELECT users.* FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 21]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:93:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:93:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  RemovedApplicant Load (0.3ms)  SELECT removed_applicants.* FROM removed_applicants WHERE removed_applicants.applicant_id = $1  [[applicant_id, 21]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:94:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:94:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.5ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 2]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.4ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 2]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  User Load (0.2ms)  SELECT users.* FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 2]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:93:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:93:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  RemovedApplicant Load (0.2ms)  SELECT removed_applicants.* FROM removed_applicants WHERE removed_applicants.applicant_id = $1  [[applicant_id, 2]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:94:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:94:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.4ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 10]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.2ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 10]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  User Load (0.3ms)  SELECT users.* FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 10]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:93:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:93:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  RemovedApplicant Load (0.3ms)  SELECT removed_applicants.* FROM removed_applicants WHERE removed_applicants.applicant_id = $1  [[applicant_id, 10]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:94:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:94:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.7ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 16]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.4ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 16]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  User Load (0.2ms)  SELECT users.* FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 16]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:93:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:93:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  RemovedApplicant Load (0.1ms)  SELECT removed_applicants.* FROM removed_applicants WHERE removed_applicants.applicant_id = $1  [[applicant_id, 16]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:94:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:94:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.4ms)  SELECT COUNT(*) FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 7]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
   (0.2ms)  SELECT COUNT(*) FROM pending_scores WHERE pending_scores.applicant_id = $1  [[applicant_id, 7]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:92:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  User Load (0.5ms)  SELECT users.* FROM users INNER JOIN scores ON users.id = scores.user_id WHERE scores.applicant_id = $1  [[applicant_id, 7]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:93:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:93:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  RemovedApplicant Load (0.3ms)  SELECT removed_applicants.* FROM removed_applicants WHERE removed_applicants.applicant_id = $1  [[applicant_id, 7]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:94:in `all?'
   \_ Called from: app/controllers/scores_controller.rb:94:in `block in eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:90:in `eligible_applicants'
   \_ Called from: app/controllers/scores_controller.rb:8:in `home'
  PendingScore Load (0.2ms)  SELECT  pending_scores.* FROM pending_scores WHERE pending_scores.user_id = $1 LIMIT $2  [[user_id, 3], [LIMIT, 1]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:9:in `home'
   (0.3ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 16]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.4ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 7]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.3ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 2]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.2ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 19]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.3ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 15]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.6ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 11]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.4ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 5]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.3ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 4]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.4ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 17]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.2ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 10]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.3ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 6]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.4ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 12]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.3ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 18]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.5ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 8]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.5ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 3]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.4ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 21]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.3ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 9]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
   (0.2ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 13]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/controllers/scores_controller.rb:12:in `block in home'
   \_ Called from: app/controllers/scores_controller.rb:12:in `each'
   \_ Called from: app/controllers/scores_controller.rb:12:in `min_by'
   \_ Called from: app/controllers/scores_controller.rb:12:in `home'
  Rendering scores/home.html.erb within layouts/application
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 16]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 16]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 7]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 7]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 2]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 2]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 19]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 19]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 15]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 15]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 11]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.1ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 11]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 5]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 5]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 4]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 4]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 17]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 17]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 10]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 10]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 6]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 6]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 12]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 12]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 18]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 18]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 8]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 8]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 3]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 3]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 21]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 21]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 9]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 9]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 13]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:10:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'
  CACHE  (0.0ms)  SELECT COUNT(*) FROM scores WHERE scores.applicant_id = $1  [[applicant_id, 13]]
  ↳ config/initializers/query_trace.rb:18
   \_ Called from: app/models/applicant.rb:11:in `full_name_list'
   \_ Called from: app/views/scores/home.html.erb:31:in `block in _app_views_scores_home_html_erb___969936801107055623_70213449420820'
   \_ Called from: app/views/scores/home.html.erb:30:in `_app_views_scores_home_html_erb___969936801107055623_70213449420820'"
