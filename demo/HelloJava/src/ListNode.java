public class ListNode {
    int val;
    ListNode next;

    ListNode(int x) {
        val = x;
    }

    void print() {
        ListNode current = this;
        while (current != null) {
            System.out.println(current.val);
            current = current.next;
        }
    }
}


