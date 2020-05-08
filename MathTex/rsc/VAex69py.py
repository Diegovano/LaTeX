import random
def s_abonnes(nbUsagers=10): #Il s'agit ici d'un "default parameter", c'est-à-dire que si l'utilisateur ne donne pas d'argument, alors 10 est utilisé.
    X=0
    for ind in range(nbUsagers):
        if random.random()<0.62:
            X+=1
    return X

def printList(list, simCount):
    for i in range(len(list)):
        print(i, list[i]/totSim)

totSim=10000
counter=[0]*11
for i in range(totSim):
    counter[s_abonnes()]+=1

printList(counter, totSim)

