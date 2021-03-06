package com.luv2code.springsecurity.demo.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class DemoSecurityConfig extends WebSecurityConfigurerAdapter {

	// add a reference to our security datasource
	@Autowired
	private DataSource securityDataSource;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		// add our users for in memory authentication
		/*
		 * UserBuilder users = User.withDefaultPasswordEncoder();
		 * 
		 * auth.inMemoryAuthentication()
		 * .withUser(users.username("saurabh").password("test123").roles("EMPLOYEE"));
		 * 
		 * auth.inMemoryAuthentication()
		 * .withUser(users.username("abhishek").password("test123").roles("MANAGER"));
		 */

		// use jdbc authentication
		auth.jdbcAuthentication().dataSource(securityDataSource);
	}

	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/resources/**"); // this is use for ignoring resources from spring security
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.authorizeRequests().antMatchers("/").permitAll().antMatchers("/registrationPage*").permitAll()
				.antMatchers("/Register*").permitAll().anyRequest().authenticated().and().formLogin()
				.loginPage("/showMyLoginPage").loginProcessingUrl("/authenticateTheUser").permitAll().and().logout()
				.permitAll();
	}

}
