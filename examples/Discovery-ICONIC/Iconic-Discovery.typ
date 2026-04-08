#import "res/Discovery-Report-Styles.typ": *

#show: todo-report.with(
  title: "Звіт про обстеження",
  customer: "Iconic",
  version: "0.1",
  author: (
    "Джошкун Олександр-Джеміль", 
    "Євген Юхно",
  ),
  date: datetime(year: 2026, month: 3, day: 30),
  agreement: "ODOO ...",
  a-date: datetime(year: 2026, month: 2, day: 4),
)


#include "Section.Definition and Abbriviation.typ"
#include "Section.Summary.typ"
#include "Section.Discovery Format.typ"
#include "Section.Automation Object Description.typ"
#include "Section.BP Description.typ"
#include "Section.Project Scope.typ"
#include "Section.Schedule Estimation.typ"
#include "Section.Conclusion.typ"

// ============================================================

#include "Signs.typ"
