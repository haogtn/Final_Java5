package ASM.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ASM.model.Session;
import jakarta.servlet.http.HttpSession;

@Service
public class SessionServiceImpl implements SessionService1 {
	public static List<Session> listSession=new ArrayList<>();
	@Autowired
	HttpSession session;
	public Object get(String key) {
		Object value = null;
		if(key.isEmpty()||key=="") {
			return null;
		}
		for(Session item:listSession) {
			if(key.equalsIgnoreCase(item.getKey())) {
				value=item.getValue();
			}
		}
		return value;
	}

	public void set(String key, Object value) {
		for(int i=0;i<listSession.size();i++) {
			Session item=listSession.get(i);
			if(key.equalsIgnoreCase(item.getKey())) {
				listSession.remove(i);
			}
		}
		Session session=new Session();
		session.setKey(key);
		session.setValue(value);
		listSession.add(session);
		
	}

	@Override
	public void logOut(String name) {
		for(int i=0;i<listSession.size();i++) {
			Session item=listSession.get(i);
			if(name.equalsIgnoreCase(item.getKey())) {
				listSession.remove(i);
			}
		}
		
	}

	@Override
	public void remove(String name) {
		session.removeAttribute(name);
		
	}
	
}
