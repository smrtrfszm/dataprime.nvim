(line_comment) @comment
(block_comment) @comment

(number) @number
(string) @string
(type) @type
(variable) @variable

; TODO: this should be it's own AST node
((expr (keypath (ident)) @constant.builtin)
  (#eq? @constant.builtin "null"))

[
 "+"
 "-"
 ">"
 ">="
 "<"
 "<="
 "=="
 "!="
 "~"
 "~~"
] @operator

[
  "("
  ")"
] @punctuation.bracket

[
  ","
  "."
  "|"
] @punctuation.delimiter

[
  "@"
  "$"
] @punctuation.special

[
 "a"
 "add"
 "agg"
 "aggregate"
 "and"
 "around"
 "as"
 "asc"
 "between"
 "block"
 "bottom"
 "by"
 "by"
 "c"
 "change"
 "choose"
 "conv"
 "convert"
 "count"
 "countby"
 "create"
 "cross"
 "datatype"
 "datatypes"
 "dedupeby"
 "desc"
 "distinct"
 "e"
 "enrich"
 "exists"
 "explode"
 "extract"
 "f"
 "filter"
 "find"
 "from"
 "from"
 "full"
 "groupby"
 "interval"
 "into"
 "join"
 "keep"
 "keypath"
 "last"
 "left"
 "limit"
 "logs"
 "lucene"
 "m"
 "matching"
 "move"
 "multigroupby"
 "on"
 "on"
 "order"
 "orderby"
 "original"
 "r"
 "redact"
 "remove"
 "replace"
 "right"
 "select"
 "sort"
 "sortby"
 "source"
 "spans"
 "stitch"
 "text"
 "timeshifted"
 "to"
 "top"
 "using"
 "where"
 "wildfind"
 "wildtext"
 "with"
] @keyword
