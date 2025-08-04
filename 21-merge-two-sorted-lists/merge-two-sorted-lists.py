# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def mergeTwoLists(self, list1: Optional[ListNode], list2: Optional[ListNode]) -> Optional[ListNode]:
        merge = ListNode() # 0 --> NULL
        head = merge # To get the head of merged linked list 0 --> Merged list [By returning the head.next]

        while list1 and list2:
            if list1.val < list2.val:
                merge.next = list1
                list1 = list1.next
            else:
                merge.next = list2
                list2 = list2.next
            merge = merge.next 

        merge.next = list1 if list1 else list2

        return head.next



    