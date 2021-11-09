package arthur.dy.lee.alg.array;

import arthur.dy.lee.alg.common.ListNode;
import arthur.dy.lee.alg.common.ListNodeTool;

public class AddTwoNumbers {
    public static ListNode addTwoNumbers(ListNode l1, ListNode l2) {

        if (l1 == null) {
            return l2;
        }
        if (l2 == null) {
            return l1;
        }
        boolean count = false;
        ListNode dummy = new ListNode();
        dummy.next = l1;
        int val1 = 0;
        int val2 = 0;
        while (l1 != null && l2 != null) {
            if (l1 == null) {
                val1 = 0;
            }else {
                val1 = l1.val;
            }
            if (l2 == null) {
                val2 = 0;
            }else {
                val2 = l2.val;
            }

            int val = val1 + val2;
            if (count) {
                val = val + 1;
                count = false;
            }

            if (val / 10 >= 1) {
                l1.val = val % 10;
                count = true;
            } else {
                l1.val = val;
            }

            if (l1.next != null) {
                l1 = l1.next;
            }
            if (l2.next != null) {
                l2 = l2.next;
            }
            if (l1.next == null && l2.next == null) {
                break;
            }
        }

        return dummy.next;
    }

    public static void main(String[] args) {
        System.out.println("11 % 10 = " + (11 % 10) + "; 11 / 10 = " + (11 / 10));
        System.out.println("1 % 10 = " + (1 % 10) + "; 1 / 10 = " + (1 / 10));
        System.out.println("10 % 10 = " + (10 % 10) + "; 10 / 10 = " + (10 / 10));
        ListNode l1 = new ListNode(2);
        ListNode node2 = new ListNode(4);
        ListNode node3 = new ListNode(3);
        l1.next = node2;
        node2.next = node3;

        ListNode l2 = new ListNode(5);
        ListNode node4 = new ListNode(6);
        ListNode node5 = new ListNode(4);
        l2.next = node4;
        node4.next = node5;
        ListNode res = AddTwoNumbers.addTwoNumbers(l1, l2);
        ListNodeTool.getListNodeString(res);

        ListNode l3 = new ListNode(9);
        ListNode node6 = new ListNode(9);
        ListNode node7 = new ListNode(9);
        ListNode node8 = new ListNode(9);
        l3.next = node6;
        node6.next = node7;
        node7.next = node8;

        ListNode l4 = new ListNode(9);
        ListNode node9 = new ListNode(9);
        l2.next = node9;
        res = AddTwoNumbers.addTwoNumbers(l3, l4);
        ListNodeTool.getListNodeString(res);
    }
}
