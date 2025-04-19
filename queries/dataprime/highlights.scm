(line_comment) @comment
(block_comment) @comment

(number) @number
(interval) @number
(string) @string
(string_interpolation) @string
(escape_sequence) @string.escape
(type) @type
(field) @variable.member
(true) @boolean
(false) @boolean
(null) @constant.builtin

(key
  (identifier) @variable)

(call_expression
  function: (identifier) @function.call)

(extract_function
  function: (identifier) @function.call)

(extract_function
  function: (identifier) @function.builtin
    (#any-of? @function.builtin "regexp" "kv" "jsonobject" "split"))

(source_command
  datastore: (identifier) @constant.builtin
    (#any-of? @constant.builtin "logs" "spans"))

(named_argument
  name: (identifier) @variable.parameter)

(regex_pattern) @string.regexp

(regex
  "/" @punctuation.bracket)

[
 "&&"
 "||"
 "+"
 "-"
 "*"
 "%"
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
  "["
  "]"
] @punctuation.bracket

(template_substitution
  [
    "{"
    "}"
  ] @punctuation.special)

[
  ","
  "."
  "|"
  ":"
  "="
] @punctuation.delimiter

[
  "@"
] @punctuation.special

(key
  "$" @punctuation.special)

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
 "discard"
 "distinct"
 "e"
 "enrich"
 "exists"
 "explode"
 "extract"
 "f"
 "fail"
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
 "missing"
 "move"
 "multigroupby"
 "on"
 "order"
 "orderby"
 "original"
 "overwrite"
 "r"
 "redact"
 "remove"
 "replace"
 "right"
 "roundtime"
 "select"
 "skip"
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
