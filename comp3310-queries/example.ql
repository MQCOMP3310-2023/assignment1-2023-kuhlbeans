/**
 * @name Comp3310 workshop 6 query
 * @kind problem
 * @problem.severity warning
 * @id java/example/empty-block
 */

import java

from ThrowStmt t
where t.printStackTrace()
select t, " this is what im looking for"