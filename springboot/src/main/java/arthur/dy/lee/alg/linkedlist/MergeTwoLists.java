package arthur.dy.lee.alg.linkedlist;

import arthur.dy.lee.alg.common.ListNode;

public class MergeTwoLists {
    public static ListNode mergeTwoLists(ListNode l1, ListNode l2) {
        if (l1 == null) {
            return l2;
        } else if (l2 == null) {
            return l1;
        } else if (l1.val < l2.val) {
            l1.next = mergeTwoLists(l1.next, l2);
            return l1;
        } else {
            l2.next = mergeTwoLists(l1, l2.next);
            return l2;
        }
    }

    public ListNode mergeTwoLists2(ListNode l1, ListNode l2) {
        ListNode prehead = new ListNode(-1);

        ListNode prev = prehead;
        while (l1 != null && l2 != null) {
            if (l1.val <= l2.val) {
                prev.next = l1;
                l1 = l1.next;
            } else {
                prev.next = l2;
                l2 = l2.next;
            }
            prev = prev.next;
        }

        // 合并后 l1 和 l2 最多只有一个还未被合并完，我们直接将链表末尾指向未合并完的链表即可
        prev.next = l1 == null ? l2 : l1;

        return prehead.next;
    }

    public static void main(String[] args) {
        //l1 = [1, 2, 4];
        ListNode l1 = new ListNode(1);
        ListNode node2 = new ListNode(2);
        ListNode node3 = new ListNode(4);
        l1.next = node2;
        node2.next = node3;

        //l2 = [1, 3, 4];

        ListNode l2 = new ListNode(1);
        ListNode node4 = new ListNode(3);
        ListNode node5 = new ListNode(4);
        l2.next = node4;
        node4.next = node5;

        ListNode resultList = MergeTwoLists.mergeTwoLists(l1, l2);

        StringBuilder s1 = new StringBuilder();
        while (l1 != null) {
            s1.append(l1.val).append(" ");
            l1 = l1.next;
        }
        System.out.println(s1);

        StringBuilder s2 = new StringBuilder();
        while (l2 != null) {
            s2.append(l2.val).append(" ");
            l2 = l2.next;
        }
        System.out.println(s2);
        System.out.println("----");
        StringBuilder s3 = new StringBuilder();
        while (resultList != null) {
            s3.append(resultList.val).append(" ");
            resultList = resultList.next;
        }
        System.out.println(s3);
    }
}
