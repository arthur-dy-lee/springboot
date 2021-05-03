package arthur.dy.lee.alg.linkedlist;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

/**
 * 给定一棵二叉树，设计一个算法，创建含有某一深度上所有节点的链表（比如，若一棵树的深度为 D，则会创建出 D 个链表）。
 * 返回一个包含所有深度的链表的数组。
 *
 * 示例：
 *
 * 输入：[1,2,3,4,5,null,7,8]
 *
 *         1
 *        /  \
 *       2    3
 *      / \    \
 *     4   5    7
 *    /
 *   8
 *
 * 输出：[[1],[2,3],[4,5,7],[8]]
 *
 */
public class DFSTree {
    //特定深度节点链表
    public static ListNode[] listOfDepth(TreeNode tree) {
        if (tree == null) return null;
        List<ListNode> resArr = new ArrayList<>();
        Queue<TreeNode> queue = new LinkedList<>();
        queue.add(tree);
        while (!queue.isEmpty()) {
            int size = queue.size();
            ListNode node = new ListNode(0);//头节点
            ListNode head = node;
            for (int i = 0; i < size; i++) {
                TreeNode p = queue.poll();
                ListNode n = new ListNode(p.val);
                node.next = n;
                node = n;
                if (p.left != null) queue.add(p.left);
                if (p.right != null) queue.add(p.right);
            }
            resArr.add(head.next);
        }
        return resArr.toArray(new ListNode[resArr.size()]);

    }


    public static void main(String[] args) {
        TreeNode tree = new TreeNode(1);
        TreeNode node2 = new TreeNode(2);
        TreeNode node3 = new TreeNode(3);
        TreeNode node4 = new TreeNode(4);
        TreeNode node5 = new TreeNode(5);
        TreeNode node7 = new TreeNode(7);
        TreeNode node8 = new TreeNode(8);
        node4.left = node8;
        node3.right = node7;
        node2.left = node4;
        node2.right = node5;
        tree.left = node2;
        tree.right = node3;
        ListNode[] listNodes = DFSTree.listOfDepth(tree);

        for (int i = 0; i < listNodes.length; i++) {
            System.out.print("[");
            while (listNodes[i] != null) {
                System.out.print(listNodes[i].val + " ");
                listNodes[i] = listNodes[i].next;
            }
            System.out.print("]");
        }
    }

    //Definition for a binary tree node.
    static class TreeNode {
        int val;
        TreeNode left;
        TreeNode right;

        TreeNode(int x) {
            val = x;
        }
    }

    //Definition for singly-linked list.
    static class ListNode {
        int val;
        ListNode next;

        ListNode(int x) {
            val = x;
        }
    }


}
