package arthur.dy.lee.alg.common;

/**
 * 生成链表
 */
public class GenListNode {

    /**
     * 3 -> 2 -> 4 -> 6 -> 5 -> 1 -> 7 -> 8
     * @return
     */
    public static ListNode get() {

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
        ListNode listNode = GenListNode.get();
        GenListNode.printListNode(listNode);
    }
}
