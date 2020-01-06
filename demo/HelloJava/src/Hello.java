import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

public class Hello {
    public void test() {
        System.out.println(guessNumber(3));
    }

    // 374
    public int guessNumber(int n) {
        int low = 1;
        int high = n;
        while(low <= high) {
            int mid = low + (high-low)/2;
            int guessMid = guess(mid);
            if(guessMid == 0) {
                return mid;
            } else if(guessMid == -1) {
                high = mid - 1;
            } else {
                low = mid + 1;
            }
        }
        return 0;
    }

    public int guess(int num) {
        int target = 1;
        if(target > num) {
            return 1;
        } else if(num == target) {
            return 0;
        } else {
            return -1;
        }
    }

    public ListNode getIntersectionNode(ListNode headA, ListNode headB) {
        if(headA == null || headB == null) {
            return null;
        }

        ListNode nodeA = headA;
        ListNode nodeB = headB;
        while(nodeA != nodeB) {
            nodeA = nodeA == null ? headB : nodeA.next;
            nodeB = nodeB == null ? headA : nodeB.next;
        }

        return nodeA;
    }

    public boolean hasCycle(ListNode head) {
        ListNode slow = head;
        ListNode fast = head;
        while (fast != null && fast.next != null) {
            slow = slow.next;
            fast = fast.next.next;
            if (slow == fast) {
                return true;
            }
        }
        return  false;
    }
}




