package com.luv2code.springsecurity.demo.dao;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.context.SecurityContextHolder;

import com.luv2code.springsecurity.demo.config.SettingTimeStampInitialValue;
import com.luv2code.springsecurity.demo.databaseconnection.DatabaseConnection;

/**
 * Servlet implementation class check_ans_of_que
 */
@WebServlet("/Check_ans_of_que")
public class Check_ans_of_que extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Initial Time stamp
		SettingTimeStampInitialValue obj_initial_time = new SettingTimeStampInitialValue();

		long initial_time_stamp = obj_initial_time.getInitialTimeStamp();

		// extraction the email
		String table_name = SecurityContextHolder.getContext().getAuthentication().getName();// it will be the email of
																								// the user;
		String full_name = "";
		int total_points = 0;
		long total_time_stamp = 0;

		// taking the question id for the check_ans_of_que

		String ques_id = request.getParameter("ques_id");

		System.out.println(ques_id);

		// String ques_id = null;
		// HttpSession ses = request.getSession(false);
		// ques_id = (String) ses.getAttribute("que_id");

		// taking the answer from the input form

		String answer = request.getParameter("sol_ctf").toLowerCase();

		try {

			DatabaseConnection co = new DatabaseConnection();
			Statement st = co.getConnection();

			String query = "select answer from answer where ques_id='" + ques_id + "'";
			ResultSet rs = st.executeQuery(query);

			while (rs.next()) {
				String db_answer = rs.getString("answer");

				if (db_answer.equals(answer)) {

					try {
						System.out.println("Answer is ryt..Flag work start");
						Statement st1 = co.getConnection();
						Statement stflag = co.getConnection();
						String flagQuery = "select flag from `" + table_name + "` where ques_id='" + ques_id + "'";
						ResultSet rsflag = stflag.executeQuery(flagQuery);
						int flag = 0;
						while (rsflag.next()) {
							flag = rsflag.getInt("flag");
						}
						System.out.println(flag);
						if (flag == 0) {

							// Time stamp Work.. fetching previous time stamp them subtract it from current
							// because we need to store time stamp for each question after completing
							// previous question
							long previous_time_stamp = 0;
							try {
								Statement stTimestamp = co.getConnection();
								String timeStampQuery = "select time_stamp from leaderboard where username  = '"
										+ table_name + "';";
								ResultSet rsTimeStamp = stTimestamp.executeQuery(timeStampQuery);
								while (rsTimeStamp.next()) {
									previous_time_stamp = rsTimeStamp.getLong("time_stamp");
								}

							} catch (Exception e) {
								System.out.println(e);
								request.setAttribute("errorMessage", "Password didn't match");
								// response.sendRedirect("login.jsp");
								RequestDispatcher rd = request.getRequestDispatcher("/error");
								rd.forward(request, response);
							}

							System.out.println("Flag = 0 work start");
							long current_time_stamp = System.currentTimeMillis() / 1000;
							long diff_time_stamp = current_time_stamp - initial_time_stamp - previous_time_stamp;

							System.out.println("Total time stamp : " + diff_time_stamp);
							String query_for_user_table = "insert into `" + table_name + "` values('" + ques_id
									+ "',1, " + diff_time_stamp + ")";
							int flag_insert_query = st1.executeUpdate(query_for_user_table);

							try {
								Statement st2 = co.getConnection();
								ResultSet rs2 = st2
										.executeQuery("select * from `" + table_name + "` natural join point");
								while (rs2.next()) {
									String table_que_id = rs2.getString("ques_id");
									int table_point = rs2.getInt("points");
									total_points = total_points + table_point;
									long table_time_Stamp = rs2.getLong("time_stamp");
								}
								Statement st3 = co.getConnection();
								ResultSet rs3 = st3.executeQuery("select sum(time_stamp) from  `" + table_name + "`");
								String time_stamp_temp = null;
								while (rs3.next()) {
									time_stamp_temp = rs3.getString(1);
								}

								total_time_stamp = Long.parseLong(time_stamp_temp.trim());

								try {
									Statement st4 = co.getConnection();
									String leaderboard_query = "update leaderboard set time_stamp = " + total_time_stamp
											+ ", total_points = " + total_points + "  where username  = '" + table_name
											+ "';";

									int flag_status_leaderboard = st4.executeUpdate(leaderboard_query);
									if (flag_status_leaderboard > 0) {
										System.out.println("Leaderboard entry successfully Updated");
									}
								} catch (Exception e) {
									System.out.println("leader board failed");
									request.setAttribute("errorMessage", "Password didn't match");
									// response.sendRedirect("login.jsp");
									RequestDispatcher rd = request.getRequestDispatcher("/error");
									rd.forward(request, response);
								}
							} catch (Exception e) {
								System.out.println(e);
								request.setAttribute("errorMessage", "Password didn't match");
								// response.sendRedirect("login.jsp");
								RequestDispatcher rd = request.getRequestDispatcher("/error");
								rd.forward(request, response);
							}
							System.out.println("Flag = 0 work end");
						}
						System.out.println("Log Works Start");
						Statement st_logs1 = co.getConnection();
						try {
							String entry_query = "insert into logs values('" + table_name + "', '" + ques_id + "', '"
									+ answer + "')";

							int flag_entry = st_logs1.executeUpdate(entry_query);

						} catch (Exception e) {
							System.out.println("Entry Log DataBase Error \n Don't worry We'll fix it");
							request.setAttribute("errorMessage", "Password didn't match");
							// response.sendRedirect("login.jsp");
							RequestDispatcher rd = request.getRequestDispatcher("/error");
							rd.forward(request, response);
						}

					} catch (Exception e) {
						System.out.println(e);
						request.setAttribute("errorMessage", "Password didn't match");
						// response.sendRedirect("login.jsp");
						RequestDispatcher rd = request.getRequestDispatcher("/error");
						rd.forward(request, response);
					}

					request.setAttribute("correctAnswer", "Hurrey !!  Correct Answer");
					RequestDispatcher rd = request.getRequestDispatcher("/Questions");
					rd.forward(request, response);

				} else {
					System.out.println("Wrong ans work start");
					Statement st_logs = co.getConnection();
					try {
						System.out.println("Wrong ans log work start");
						String entry_query = "insert into logs values('" + table_name + "', '" + ques_id + "', '"
								+ answer + "')";

						int flag_entry = st_logs.executeUpdate(entry_query);
					} catch (Exception e) {
						System.out.println("Entry Log DataBase Error \n Don't worry We'll fix it");
						request.setAttribute("errorMessage", "Password didn't match");
						// response.sendRedirect("login.jsp");
						RequestDispatcher rd = request.getRequestDispatcher("/error");
						rd.forward(request, response);
					}

					request.setAttribute("wrongAnswer", "Wrong Answer");
					// response.sendRedirect("login.jsp");
					RequestDispatcher rd = request.getRequestDispatcher("/Questions");
					rd.forward(request, response);
				}
			}
			co.getCloseConnection();

		} catch (Exception e) {
			System.out.println(e);
			request.setAttribute("errorMessage", "Password didn't match");
			// response.sendRedirect("login.jsp");
			RequestDispatcher rd = request.getRequestDispatcher("/error");
			rd.forward(request, response);
		}

	}

}
