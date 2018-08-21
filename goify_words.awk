## creates Go code defining a string slice with list of words

# Usage
# awk -f goify_syllables.awk < /path/to/AgileWords.txt > agilewords.go

BEGIN {
    print "package spg\n";
    print "// This file is automatically generated. Do not edit\n";
    print "// AgileWords is the list of words used by the 1Password strong password generator";
    print "var AgileWords = []string{";
    OFS = ""
     }

    { print "    \"", $0, "\"," }

END { print "}" }
