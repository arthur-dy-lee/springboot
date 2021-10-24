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
        while (l1 != null && l2 != null) {
            int val = l1.val + l2.val;
            if (count) {
                val = val+1;
                count = false;
            }

            if (val / 10 >= 1) {
                l1.val = val / 10;
                count = true;
            } else {
                l1.val = val;
            }


            l1 = l1.next;
            l2 = l2.next;
        }
        if (l1 != null) {
            l1 = l1.next;
        }
        if (l2 != null) {
            l1 = l2.next;
        }

        return dummy.next;
}

    public static void main(String[] args) {
        System.out.println(11 / 10);
        System.out.println(1 / 10);
        System.out.println(10 / 10);
        ListNode l1 = new ListNode(1);
        ListNode node2 = new ListNode(7);
        ListNode node3 = new ListNode(4);
        l1.next = node2;
        node2.next = node3;

        //l2 = [1, 3, 4];

        ListNode l2 = new ListNode(1);
        ListNode node4 = new ListNode(3);
        ListNode node5 = new ListNode(4);
        l2.next = node4;
        node4.next = node5;

        ListNode res = AddTwoNumbers.addTwoNumbers(l1, l2);
        ListNodeTool.getListNodeString(res);

    }
}
