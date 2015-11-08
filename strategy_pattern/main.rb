require "./report"
require "./html_formatter"
require "./plain_text_formatter"

report = Report.new(HTMLFormatter.new)
report.output_report

report.formatter = PlainTextFormatter.new
report.output_report