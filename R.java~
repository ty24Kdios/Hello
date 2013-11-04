import java.util.*;
public class R{
	// i hava comment
	static <T> void fromArrayToColl(T[] arr, Collection<T> col)
	{
		for ( T o: arr)
		{
			col.add(o);
		}
	}
	public void test(List<?> c)
	{
		for(Object obj : c)
			System.out.println(c);
	}
	public static void main(String[] args)
	{
		List<String> strList = new ArrayList<>();
		new R().test(strList);

		List<?> oList = strList;
	//	oList.add(2,"hi");
	}
}
