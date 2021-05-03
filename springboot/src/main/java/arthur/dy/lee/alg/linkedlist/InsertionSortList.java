package arthur.dy.lee.alg.linkedlist;

import arthur.dy.lee.alg.common.GenListNode;
import arthur.dy.lee.alg.common.ListNode;

/**
 * 对链表进行插入排序。
 * <p>
 * 插入排序的动画演示如上。从第一个元素开始，该链表可以被认为已经部分排序（用黑色表示）。
 * 每次迭代时，从输入数据中移除一个元素（用红色表示），并原地将其插入到已排好序的链表中。
 * <p>
 *  
 * <p>
 * 插入排序算法：
 * <p>
 * 插入排序是迭代的，每次只移动一个元素，直到所有元素可以形成一个有序的输出列表。
 * 每次迭代中，插入排序只从输入数据中移除一个待排序的元素，找到它在序列中适当的位置，并将其插入。
 * 重复直到所有输入数据插入完为止。
 * <p>
 * 链接：https://leetcode-cn.com/problems/insertion-sort-list
 */
public class InsertionSortList {

    /**
     * 3 -> 2 -> 4 -> 6 -> 5 -> 1 -> 7 -> 8
     * 这个道题就像排队,先找个排头dummy,然后依次从head节点放入dummy,只需要依次dummy现有节点比较,插入其中!
     * @param head
     * @return
     */
    public static ListNode insertionSortList(ListNode head) {
        ListNode dummy = new ListNode(Integer.MIN_VALUE);
        ListNode pre = dummy;
        ListNode tail = dummy;
        ListNode cur = head;
        while (cur != null) {
            if (tail.val < cur.val) {
                tail.next = cur;
                tail = cur;
                cur = cur.next;
            } else {
                // 把下一次节点保持下来
                ListNode tmp = cur.next;
                tail.next = tmp;
                //找到插入的位置
                while (pre.next != null && pre.next.val < cur.val) {
                    pre = pre.next;
                }
                //进行插入操作
                cur.next = pre.next;
                pre.next = cur;
                pre = dummy;
                cur = tmp;
            }
        }
        return dummy.next;
    }

    public static void main(String[] args) {
        ListNode node = GenListNode.get();
        ListNode ret = InsertionSortList.insertionSortList(node);
        GenListNode.printListNode(ret);
    }

    public static ListNode badInsertionSortList(ListNode head) {
        ListNode dummy = new ListNode(0);
        ListNode pre = dummy;
        ListNode cur = head;
        while (cur != null) {
            ListNode tmp = cur.next;
            while (pre.next != null && pre.next.val < cur.val) {
                pre = pre.next;
            }
            cur.next = pre.next;
            pre.next = cur;
            pre = dummy;
            cur = tmp;
        }
        return dummy.next;
    }

}
