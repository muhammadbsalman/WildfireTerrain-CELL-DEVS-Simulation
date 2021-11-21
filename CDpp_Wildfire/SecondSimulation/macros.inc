% check if any neighbourhood cell has fire (state greater than 5)
#BeginMacro(checkfire)
((1,1)>=5 or (1,0)>=5 or (1,-1)>=5 or (0, 1)>=5 or (0,-1)>=5 or (-1,-1)>=5 or (-1,0)>=5 or (-1,1)>=5)
#EndMacro