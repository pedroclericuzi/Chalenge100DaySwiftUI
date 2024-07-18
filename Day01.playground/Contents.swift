import UIKit

var text1 = """
Hello world
over multiple
lines
"""

var text2 = """
The second
Hello world \
over multiple \
lines
"""

print(text1) // three lines
print("-----//-----")
print(text2) // only one line, because the / block de line break
