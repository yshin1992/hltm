package com.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;

/**
 * Servlet Filter implementation class CharacterFilter
 */
@WebFilter(filterName="CharacterFilter",urlPatterns="/*",initParams={
		@WebInitParam(name="encoding",value="UTF-8")
})
public class CharacterFilter implements Filter {

	FilterConfig config;

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		this.config=null;
		System.out.println("character filter end..........");
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		//拦截所有请求，将其字符编码改为UTF-8
		String encoding=config.getInitParameter("encoding");
		request.setCharacterEncoding(encoding);
		chain.doFilter(request, response);
		//response.setCharacterEncoding(encoding);
		response.setContentType("text/html;charset=UTF-8");
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		this.config=fConfig;
		System.out.println("character filter start..........");
	}

}
