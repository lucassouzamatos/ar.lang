Nonterminals
  program
  application
  operation
  variable_declaration
  operation_value
  value
.

Terminals
  apply
  operator
  float
  integer
  variable
  assigment
  declaration
.

Rootsymbol
  program
.

program -> application : '$1'.

application -> apply operation : [{apply, '$2'}].
application -> variable_declaration : ['$1'].

value -> float : '$1'.
value -> integer : '$1'.

operation_value -> declaration : '$1'.
operation_value -> value : '$1'.

operation -> operator operation_value operation_value : {'$1', '$2', '$3'}.

variable_declaration -> variable declaration assigment value : {'$1', '$2', '$4'}.

Erlang code.

