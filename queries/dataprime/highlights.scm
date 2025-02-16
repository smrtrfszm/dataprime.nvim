(line_comment) @comment
(block_comment) @comment

(number) @number
(string) @string
(format_string) @string
(type) @type
(variable) @variable
(key) @variable
(property) @variable.member
(true) @boolean
(false) @boolean
(null) @constant.builtin

(call_expression
  function: (identifier) @function.call)

(source_command
  datastore: (identifier) @constant.builtin
    (#any-of? @constant.builtin "logs" "spans"))

(extract_function
  type: (identifier) @function.builtin
    (#any-of? @function.builtin "regexp" "kv"))

(regex_pattern) @string.regexp

(regex
  "/" @punctuation.bracket)

[
 "+"
 "-"
 "*"
 ">"
 ">="
 "<"
 "<="
 "=="
 "!="
 "~"
 "~~"
 "->"
] @operator

(binary_expression
  "/" @operator)

[
  "("
  ")"
  "{"
  "}"
] @punctuation.bracket

(template_substitution
  [
    "{"
    "}"
  ] @punctuation.special) @none

[
  ","
  "."
  "|"
  ":"
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
 "case"
 "case_contains"
 "case_equals"
 "case_greatherthan"
 "case_lessthan"
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
