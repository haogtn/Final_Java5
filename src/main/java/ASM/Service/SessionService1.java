package ASM.Service;

public interface SessionService1 {
	public Object get(String key); //Get theo key trả về type
	public void set(String key, Object value); //set key là string, type tùy ý
	public void logOut(String name);
	public void remove(String name);
}
