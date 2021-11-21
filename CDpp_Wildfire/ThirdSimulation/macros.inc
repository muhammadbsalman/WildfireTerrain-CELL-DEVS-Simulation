% check if any neighbourhood cell has fire (state greater than 5) and the entire neighbourhood is not burnt down
#BeginMacro(checkfire)
((1,1)>=5 or (1,0)>=5 or (1,-1)>=5 or (0, 1)>=5 or (0,-1)>=5 or (-1,-1)>=5 or (-1,0)>=5 or (-1,1)>=5) and not ((1,1)>=6 and (1,0)>=6 and (1,-1)>=6 and (0, 1)>=6 and (0,-1)>=6 and (-1,-1)>=6 and (-1,0)>=6 and (-1,1)>=6)
#EndMacro