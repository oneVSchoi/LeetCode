from collections import defaultdict

class Solution(object):

    def isNStraightHand(self, hand, groupSize):
        if len(hand) % groupSize != 0:
            return False 
        
        groupDict = defaultdict(int)
        hand.sort()

        while hand:
            now = hand[0]
            groupDict[now] = groupSize - 1

            for i in range(1, groupSize):
                next = now + i 

                if next not in hand:
                    return False 
                
                groupDict[now] -= 1
                hand.remove(next)
            
            hand.remove(now)
        
        return True 

                