#!/usr/bin/awk -f

{
    if ($0 ~ /^\+$/) {
        print $0, "SUMA";
    } 
    else if ($0 ~ /^\+\+$/) {
        print $0, "INCR";
    } 
    else if ($0 ~ /^[0-9]+$/) {
        print $0, "ENTERO";
    } 
    else if ($0 ~ /^[0-9]+\.[0-9]+$/) {
        print $0, "REAL";
    } 
    else {
        print $0, "TOKEN DESCONOCIDO";
    }
}
