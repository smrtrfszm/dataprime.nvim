([
  (line_comment)
  (block_comment)
] @injection.content
  (#set! injection.language "comment"))

((regex_pattern) @injection.content
  (#set! injection.language "regex"))

