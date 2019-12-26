public class Hello {
    public void test() {
        int n = 10;
        int o = firstBadVersion(n);
        System.out.println(o);
    }

    boolean isBadVersion(int version) {
        return  version >= 5;
    }

    public int firstBadVersion(int n) {
        int low = 0;
        int high = n;
        int mid = low + (high-low)/2;

        while (low < high) {
            mid = low + (high-low)/2;
            if (isBadVersion(mid)) {
                high = mid;
            } else {
                low = mid + 1;
            }
        }
        return low;
    }
}

