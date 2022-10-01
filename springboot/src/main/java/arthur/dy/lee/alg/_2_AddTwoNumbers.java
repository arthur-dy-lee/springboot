package arthur.dy.lee.alg;

import arthur.dy.lee.alg.common.GenListNode;
import arthur.dy.lee.alg.common.ListNode;

public class _2_AddTwoNumbers {

    public static ListNode addTwoNumbers(ListNode l1, ListNode l2) {
        ListNode listNode = new ListNode();
        ListNode head = new ListNode();
        head.next = listNode;
        Integer add1 = 0;
        while (l1 != null && l2 != null) {
            listNode.val = l1.val + l2.val + add1;
            add1 = (l1.val + l2.val) / 10;
            if (add1 == 1) {
                listNode.val = listNode.val % 10;
            }
            l1 = l1.next;
            l2 = l2.next;
            if (l1 != null && l2 != null) {
                listNode.next = new ListNode();
                listNode = listNode.next;
            }
        }

        if (l1 != null) {
            listNode.next = new ListNode();
            listNode = listNode.next;
            while (l1 != null) {
                listNode.val = l1.val + add1;
                add1 = (l1.val + add1) / 10;
                if (add1 == 1) {
                    listNode.val = listNode.val % 10;
                }
                l1 = l1.next;
                if (l1 != null) {
                    listNode.next = new ListNode();
                    listNode = listNode.next;
                }
            }
        }
        if (l2 != null) {
            listNode.next = new ListNode();
            listNode = listNode.next;
            while (l2 != null) {
                listNode.val = l2.val + add1;
                add1 = (l2.val + add1) / 10;
                if (add1 == 2) {
                    listNode.val = listNode.val % 10;
                }
                l2 = l2.next;
                if (l2 != null) {
                    listNode.next = new ListNode();
                    listNode = listNode.next;
                }
            }
        }
        if (l1 == null && l2 == null && add1 == 1) {
            listNode.next = new ListNode(1);
        }
        return head.next;
    }

    public static void main(String[] args) {
        ListNode l1 = GenListNode.genNode9999999();
        ListNode l2 = GenListNode.genNode9999();
        GenListNode.printListNode(l1);
        GenListNode.printListNode(l2);
        System.out.println("---------");
        ListNode result = addTwoNumbers(l1, l2);
        GenListNode.printListNode(result);

    }
}
