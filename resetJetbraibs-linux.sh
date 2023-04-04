#!/bin/bash
#!/bin/sh
# reset jetbrains ide evals

OS_NAME=$(uname -s)
JB_PRODUCTS="IntelliJIdea CLion PhpStorm GoLand PyCharm WebStorm Rider DataGrip RubyMine AppCode"

for PRD in $JB_PRODUCTS; do
	rm -rf ~/.java/.userPrefs/prefs.xml
	rm -rf ~/.java/.userPrefs/jetbrains/prefs.xml
	rm -rf ~/.config/JetBrains/${PRD}*/eval/
	rm -rf ~/.config/JetBrains/${PRD}*/options/other.xml
done