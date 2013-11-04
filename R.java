import java.util.*;
public class R{
	// i hava comment
	static <T> void fromArrayToColl(T[] arr, Collection<T> col)
	{
		//this is a test for git updateing in 2013/11/04
		for ( T o: arr)
		{
			col.add(o);
		}
	}
	// TY did
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
