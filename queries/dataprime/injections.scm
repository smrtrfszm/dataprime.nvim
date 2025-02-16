([
  (line_comment)
  (block_comment)
] @injection.content
  (#set! injection.language "comment"))

((regex) @injection.content
  (#set! injection.language "regex"))

