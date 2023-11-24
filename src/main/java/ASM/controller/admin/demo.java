package ASM.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class demo {
@RequestMapping("demo")
public String shpow() {
	return"demo";
}
}
