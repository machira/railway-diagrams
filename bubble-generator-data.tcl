set all_graphs {

  arithmetic {
	  line { line ( }
	      { or + - * / }
	      { or { form } { literal-value } }
	      { or { form } { literal-value } }
	      { optloop { or { form } { literal-value } }}
	      { line ) }
  }

	form {
		or
			{ line { literal-value } }
			{ line {	line ( }
				{ function }
				{ loop { form } } 
				{	line ) }}
	}

  creating-vector {
    indentstack 22
    {
    	or
     	{ line [ ]}
     	{ line { [ }
     		{ loop {
     				line { literal-value } 
     				{ optx { , }}}}
 				{ line { ] } }}
     { line { conj } { [] } { loop { literal-value }}}
   }
	}

  define-syntax {
    line (
    { defn } { fn-name }
    { optx { metadata }}
    { [ }
    {	optloop { args }}
    { ] }
    { optloop { forms }}
    { line ) }
  }
       
}
