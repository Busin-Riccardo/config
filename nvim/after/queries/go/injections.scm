; inherits: go
(call_expression 
  function: (
             selector_expression
              field: (field_identifier) @_fn_name
              (#any-of? @_fn_name "QueryRow" "Query")
          )
  arguments: (argument_list (raw_string_literal) @injection.content) 
  (#set! injection.language "sql")
) 
