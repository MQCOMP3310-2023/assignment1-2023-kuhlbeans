/**
 * @name Comp3310 workshop 6 query
 * @kind problem
 * @problem.severity warning
 * @id java/example/method-access
 */

import java

from MethodAccess call, MethodAccess childCall, Method method, Method childMethod
where 
    (call.getMethod() = method and
    method.hasName("println") and
    method.getDeclaringType().hasQualifiedName("java.io", "PrintStream") and
    call.getChildExpr*() = childCall and 
    childCall.getMethod() = childMethod and
    childMethod.hasName("getMessage") and
    childMethod.getDeclaringType().hasQualifiedName("java.lang", "Throwable")) or

    (call.getMethod() = method and
    method.hasName("printStackTrace") and
    method.getDeclaringType().hasQualifiedName("java.lang", "Throwable") and
    call.getNumArgument() = 0)
select call, "getMessage() OR printStackTrace() printing to users"