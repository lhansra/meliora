import java.util.ArrayList;

public class FilterMain {
    public static void main(String[] args) {
        String[] list = {"hello", "apple", "skateboard", "watermelons", "red","strawberries", "earthquake", "purple", "xylophone"};

        Filter filterString = new FilterString();
        String[] filtered = filter(list, filterString);
        System.out.println("\nFiltered Strings");
        for(String x: filtered){

                System.out.print(x+" ");


        }

        int[] nums = {-2, 4, 7, -1, 3, -9,1,0,15,-20};

        Filter filterNum = new FilterNum();
        int[] filterednums = filter(nums, filterNum);
        System.out.println("\n\nFiltered Numbers");
        for(int x: filterednums){

                System.out.print(x+" ");

        }
    }

    public static String[] filter(String[] a, Filter<String> f) {

        ArrayList<String> list = new ArrayList<String>();
        for (int i = 0; i < a.length; i++) {
            if (f.accept(a[i])) {
                list.add(a[i]);
            }
        }
        String[] longStrings = new String[list.size()];
        for (int i = 0; i < longStrings.length; i++) {
            longStrings[i] = list.get(i);
        }

        return longStrings;
    }

    public static int[] filter(int[] a, Filter<Integer> f) {

        ArrayList<Integer> list = new ArrayList<Integer>();

        for(int i = 0; i < a.length;i++) {
            if(f.accept(a[i])) {
                list.add(a[i]);
            }
        }

        int[] positiveNumbers = new int[list.size()];
        for (int i = 0; i < positiveNumbers.length; i++) {
            positiveNumbers[i] = list.get(i);
        }

        return positiveNumbers;
    }
}
