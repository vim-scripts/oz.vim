" Vim syntax file
" Language:	Oz/Mozart (www.mozart-oz.org)
" Maintainer:	Michael Neumann <mneumann@fantasy-coders.de>
" Last Change:	2002 Nov 29
"
" $Id: oz.vim,v 1.3 2002/11/29 13:54:20 mneumann Exp $

if exists("b:current_syntax")
  finish
endif

syn region ozComment start="%" end="$" contains=ozTodo
syn region ozComment start="/\*" end="\*/" contains=ozTodo
" syn match  ozComment "?"
syn keyword ozTodo contained TODO FIXME XXX

syn keyword ozKeyword at attr
syn keyword ozKeyword case catch choice class cond
syn keyword ozKeyword declare define dis 
syn keyword ozKeyword else elsecase elseif end export
syn keyword ozKeyword fail feat finally from fun functor
syn keyword ozKeyword if import in 
syn keyword ozKeyword local lock
syn keyword ozKeyword meth mod 
syn keyword ozKeyword of
syn keyword ozKeyword prepare proc prop
syn keyword ozKeyword raise require
syn keyword ozKeyword self skip
syn keyword ozKeyword then thread try
syn keyword ozKeyword unit 

syn keyword ozBoolean true false   

"syn keyword ozOperator andthen div not or orelse 
syn keyword ozKeyword andthen div not or orelse 

syn match   ozOperator "|"
syn match   ozOperator "#"
syn match   ozOperator ":"
syn match   ozOperator "\.\.\."
syn match   ozOperator "="
syn match   ozOperator "\."
syn match   ozOperator "\^"
syn match   ozOperator "\[\]"
syn match   ozOperator "\$"
syn match   ozOperator "!"
syn match   ozOperator "_"
syn match   ozOperator "\~"
syn match   ozOperator "+"
syn match   ozOperator "-"
syn match   ozOperator "\*"
syn match   ozOperator "/[^\*]"    " if followed by a * it is a comment
syn match   ozOperator "@"
syn match   ozOperator "<-"
syn match   ozOperator ","
syn match   ozOperator "!!"
syn match   ozOperator "\(<=\|==\|\\=\|<\|=<\|>\|>=\)"
syn match   ozOperator "\(=:\|\\=:\|<:\|=<:\|>:\|>=:\|::\|:::\)"

syn match ozVariable "[A-Z][A-Za-z0-9_]*"
syn match ozVariable "`[^`]*`"

syn match ozAtom "[a-z][A-Za-z0-9_]*"

syn region ozString start=+L\="+ skip=+\\\\\|\\"+ end=+"+  
syn region ozString start=+L\='+ skip=+\\\\\|\\'+ end=+'+  

syn match ozNumber "[0-9][0-9]*\(\.[0-9][0-9]*\)\?"

if exists("oz_emacs_colors")
  hi link ozKeyword Define
  hi link ozOperator Define
  hi link ozBoolean Define
else
  hi link ozKeyword  	Keyword
  hi link ozOperator    Operator	
  hi link ozBoolean	Boolean

  hi link ozVariable 	Identifier
  hi link ozAtom        Type
endif

hi link ozString	String
hi link ozNumber	Number	 
hi link ozTodo		Todo
hi link ozComment    	Comment

let b:current_syntax = "oz"
