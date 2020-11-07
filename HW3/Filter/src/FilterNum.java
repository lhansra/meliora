
public class FilterNum implements Filter<Integer> {

    @Override
    public boolean accept(Integer x) {
        return x >= 0;
    }
}
