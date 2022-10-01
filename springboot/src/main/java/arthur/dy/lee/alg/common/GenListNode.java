package arthur.dy.lee.alg.common;

/**
 * 生成链表
 */
public class GenListNode {

    public static ListNode genNode9999999() {
        ListNode node3 = new ListNode(9);
        ListNode node2 = new ListNode(9);
        ListNode node4 = new ListNode(9);
        ListNode node6 = new ListNode(9);
        ListNode node5 = new ListNode(9);
        ListNode node1 = new ListNode(9);
        ListNode node7 = new ListNode(9);
        node1.next = node2;
        node2.next = node3;
        node3.next = node4;
        node4.next = node5;
        node5.next = node6;
        node6.next = node7;
        return node1;
    }

    public static ListNode genNode9999() {
        ListNode node1 = new ListNode(9);
        ListNode node2 = new ListNode(9);
        ListNode node3 = new ListNode(9);
        ListNode node4 = new ListNode(9);
        node1.next = node2;
        node2.next = node3;
        node3.next = node4;
        return node1;
    }

    /**
     * 2->4->3
     */
    public static ListNode genNode243() {
        ListNode node1 = new ListNode(2);
        ListNode node2 = new ListNode(4);
        ListNode node3 = new ListNode(3);
        node1.next = node2;
        node2.next = node3;
        return node1;
    }

    /**
     * 5->6->4
     */
    public static ListNode genNode564() {
        ListNode node1 = new ListNode(5);
        ListNode node2 = new ListNode(6);
        ListNode node3 = new ListNode(4);
        node1.next = node2;
        node2.next = node3;
        return node1;
    }

    /**
     * 3 -> 2 -> 4 -> 6 -> 5 -> 1 -> 7 -> 8
     *
     * @return
     */
    public static ListNode genNode3() {
        ListNode node3 = new ListNode(3);
        ListNode node2 = new ListNode(2);
        ListNode node4 = new ListNode(4);
        ListNode node6 = new ListNode(6);
        ListNode node5 = new ListNode(5);
        ListNode node1 = new ListNode(1);
        ListNode node7 = new ListNode(7);
        ListNode node8 = new ListNode(8);
        node3.next = node2;
        node2.next = node4;
        node4.next = node6;
        node6.next = node5;
        node5.next = node1;
        node1.next = node7;
        node7.next = node8;

        return node3;
    }

    public static void printListNode(ListNode node) {
        if (node == null) {
            System.out.println("null");
        }
        StringBuilder ret = new StringBuilder(32);
        while (node != null) {
            ret.append(node.val).append(" -> ");
            node = node.next;
        }

        System.out.println(ret.substring(0, ret.length() - 3));
    }

    public static void main(String[] args) {
        ListNode listNode = GenListNode.genNode3();
        GenListNode.printListNode(listNode);
    }
}
