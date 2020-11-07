
public class FilterString implements Filter<String> {


    @Override
    public boolean accept(String x) {
        return x.length() >= 9;
    }
}
