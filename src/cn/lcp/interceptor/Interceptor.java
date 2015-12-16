package cn.lcp.interceptor;

import cn.lcp.bean.User;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;

public class Interceptor extends AbstractInterceptor {
    @Override
    public String intercept(ActionInvocation invocation) throws Exception {

        HttpSession session = ServletActionContext.getRequest().getSession();
        System.out.println("À¹½ØÆ÷********.");
        User user = (User) session.getAttribute("user");
        if(user != null){
            return invocation.invoke();
        }else {
            return Action.LOGIN;
        }
    }
}
