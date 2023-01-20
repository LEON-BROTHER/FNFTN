  i = 0;
zehn = 0;
hundert = 0;
InputBox, input, Einheit
InputBox, length, Wie lange:
loop, %length%
{
output := StrReplace(input, ";", "")
i := StrReplace(i, ";", "")
zehn := StrReplace(zehn, ";", "")
hundert := StrReplace(hundert, ";", "")
Send, %i%.%zehn%%hundert%%output%
Send, {Enter} ^a{remove}
hundert++
if(hundert=10){
zehn++
hundert = 0
}
if(zehn = 10){
i++
zehn = 0
}
Sleep, 1000
}
