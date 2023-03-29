Clearcut is a library that lets client code use familiar list
operations to construct and take apart expressions.  However, the
exact representation of the expressions does not have to be
S-expressions.  In particular, we also support concrete syntax trees
(CSTs).  

The familiar operations are implemented in terms of a small number of
basic operations (FIRST, REST, ATOM, NULL, CONS).  Each basic
operation trampolines to a generic version that dispatches on a CLIENT
object, and the class of that object is what determines the real
operation to be used.  That way, the operations proposed by the
library can be used in client code to manipulate expressions, without
exposing the representation of the expressions being manipulated.  To
change from one representation to another, client code simply has to
rebind the special variable *CLIENT* to an object that can handle the
new desired representation.
