package arthur.dy.lee.alg.linkedlist;

import arthur.dy.lee.alg.common.ListNode;

/**
 * 92. 反转链表 II
 * https://leetcode-cn.com/problems/reverse-linked-list-ii/
 * https://leetcode-cn.com/problems/reverse-linked-list-ii/solution/fan-zhuan-lian-biao-ii-by-leetcode/
 */
public class RecurseAndReverse {
    public static ListNode reverseBetween(ListNode head, int m, int n) {

        // Empty list
        if (head == null) {
            return null;
        }

        // Move the two pointers until they reach the proper starting point
        // in the list.
        ListNode cur = head, prev = null;
        while (m > 1) {
            prev = cur;
            cur = cur.next;
            m--;
            n--;
        }

        // The two pointers that will fix the final connections.
        ListNode con = prev, tail = cur;

        // Iteratively reverse the nodes until n becomes 0.
        ListNode third = null;
        while (n > 0) {
            third = cur.next;
            cur.next = prev;
            prev = cur;
            cur = third;
            n--;
        }

        // Adjust the final connections as explained in the algorithm
        if (con != null) {
            con.next = prev;
        } else {
            head = prev;
        }

        tail.next = cur;
        return head;
    }

    public static void main(String[] args) {
        ListNode head = new ListNode(7);
        ListNode n9 = new ListNode(9);
        ListNode n2 = new ListNode(2);
        ListNode n10 = new ListNode(10);
        ListNode n1 = new ListNode(1);
        ListNode n8 = new ListNode(8);
        ListNode n6 = new ListNode(6);
        head.next = n9;
        n9.next = n2;
        n2.next = n10;
        n10.next = n1;
        n1.next = n8;
        n8.next = n6;

        ListNode res = RecurseAndReverse.reverseBetween(head, 3, 6);
        while (res != null) {
            System.out.print(res.val + " ");
            res = res.next;
        }
    }
}
