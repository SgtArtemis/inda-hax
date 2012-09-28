class TouchMyPrivates {
	private int x;
	public TouchMyPrivates()
	{
		x = 42;
	}
	public TouchMyPrivates(TouchMyPrivates copyMine)
	{
		this.x = copyMine.x;
	}

	public void letMeTouchThem(TouchMyPrivates other)
	{
		this.x = other.x;
	}

	public static void main(String[] args)
	{
		System.out.println("Hello!");

		TouchMyPrivates tmp = new TouchMyPrivates();
		TouchMyPrivates touchHisInstead = new TouchMyPrivates(tmp);
	}
}
