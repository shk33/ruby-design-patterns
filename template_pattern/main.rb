require "./html_report"
require "./plain_report"

report = HTMLReport.new
report.output_report
report = PlainTextReport.new
report.output_report