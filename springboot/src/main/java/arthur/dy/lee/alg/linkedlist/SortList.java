package arthur.dy.lee.alg.linkedlist;

import arthur.dy.lee.alg.common.GenListNode;
import arthur.dy.lee.alg.common.ListNode;

/**
 * 148. 排序链表
 * 时间空间复杂度分别为O(nlogn)O(nlogn)和O(1)O(1)
 * https://leetcode-cn.com/problems/sort-list/
 */

public class SortList {
    public ListNode sortList(ListNode head) {
        //先记录链表的长度，用于判断迭代结束的限制条件
        ListNode temp = head;
        int len = 0;
        while (temp != null) {
            temp = temp.next;
            len++;
        }
        //定义哑节点，用于置放和寻找排序链表的头部
        ListNode dummy = new ListNode(-1);
        dummy.next = head;
        //step表示迭代的步长,h1表示待合并链表的前半部分，h2对应后半部分,pre用于合并链表时的迭代
        int step = 1;
        ListNode h1, h2, pre;
        while (step < len) {
            //每次迭代完把temp和pre拉回来以便于下次迭代
            pre = dummy;
            temp = dummy.next;
            while (temp != null) {
                //把h1的头节点保存下来是为了后续正式排序时索引方便，设置计数cnt是用于找h2
                h1 = temp;
                int cnt = step;
                while (cnt > 0 && temp != null) {
                    cnt--;
                    temp = temp.next;
                }
                //h1的步长没走完或者temp走到链表末端了，说明后面没有待排序节点了，这次迭代直接结束
                if (cnt > 0 || temp == null) break;
                h2 = temp;
                cnt = step;
                //同样的方法走h2的步长
                while (cnt > 0 && temp != null) {
                    cnt--;
                    temp = temp.next;
                }
                //h1和h2都走完，开始合并,len1/2表示待合并链表的长度
                int len1 = step;
                int len2 = step - cnt;
                while (len1 > 0 && len2 > 0) {
                    if (h1.val <= h2.val) {
                        pre.next = h1;
                        h1 = h1.next;
                        len1--;
                    } else {
                        pre.next = h2;
                        h2 = h2.next;
                        len2--;
                    }
                    pre = pre.next;
                }
                //两个待排序链表有没有用完的部分，直接拼接下已经排序好的链表的后面
                while (len1 > 0) {
                    pre.next = h1;
                    h1 = h1.next;
                    len1--;
                    pre = pre.next;
                }
                while (len2 > 0) {
                    pre.next = h2;
                    h2 = h2.next;
                    len2--;
                    pre = pre.next;
                }
                //注意排序完成之后后面一定要接上剩余的链表,否则下一轮遍历将遍历不完整的链表
                pre.next = temp;
            }
            //每次迭代完，步长x2
            step *= 2;
        }
        return dummy.next;
    }

    public static void main(String[] args) {
        ListNode node = GenListNode.get();

        SortList sortList = new SortList();
        ListNode result = sortList.sortList(node);
        while (result != null) {
            System.out.println(result.val);
            result = result.next;
        }

    }

}
