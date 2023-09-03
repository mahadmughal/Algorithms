# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)

    reverse_list_head = nil
    temp_reverse_head = nil

    while(head != nil)

        temp_reverse_head = reverse_list_head
        reverse_list_head = head
        head = head.next
        reverse_list_head.next = temp_reverse_head
    
    end

    reverse_list_head
end