package arthur.dy.lee.alg.linkedlist;

import java.util.Random;

/**
 * 蓄水池算法
 * https://leetcode-cn.com/problems/linked-list-random-node/
 */
class ImpoundingReservoir {
    private ListNode head;
    int[] reservor;

    /**
     * @param head The linked list's head.
     *             Note that the head is guaranteed to be not null, so it contains at least one node.
     */
    public ImpoundingReservoir(ListNode head) {
        this.head = head;
        reservor = new int[1];
    }

    /**
     * Returns a random node's value.
     */
    public int getRandom() {
        ListNode s = head;

        int i = 0;
        // 蓄水池初始化
        while (s != null && i < reservor.length) {
            reservor[i] = s.val;
            i++;
            s = s.next;
        }
        // 蓄水池算法
        while (s != null) {
            // 范围选择
            int d = new Random().nextInt(i + 1);
            if (d < 1) {
                reservor[0] = s.val;
            }
            i++;
            s = s.next;
        }
        return reservor[0];
    }

    class ListNode {
        public int val;
        public ListNode next;

        public ListNode(int x) {
            val = x;
        }
    }
}