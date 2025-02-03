:: remove hidden attribute from
attrib -h /s "*.dwl"
attrib -h /s "*.dwl2"
:: remove all .dwl and .dwl2 files from the current directory and all subdirectories
del /s /q "*.dwl"
del /s /q "*.dwl2"
del /s /q "*.bak"