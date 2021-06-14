package com.kedarnath.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.kedarnath.models.Assign_Flights_List;
import com.kedarnath.models.FlightsList;
import com.kedarnath.models.PlacesList;
import com.kedarnath.models.SaveBooking;
import com.kedarnath.models.User;
import com.kedarnath.util.HibernateUtil;

public class UserDao {
		public void saveUser(User sb) {
			Transaction transaction = null;
			try (Session session = HibernateUtil.getSessionFactory().openSession()) {
				// start a transaction
				transaction = session.beginTransaction();
				// save the student object
				session.save(sb);
				// commit transaction
				transaction.commit();
			} catch (Exception e) {
				if (transaction != null) {
					transaction.rollback();
				}
				e.printStackTrace();
			}
		}
		public void saveBooking(Assign_Flights_List afl) {
			Transaction transaction = null;
			try (Session session = HibernateUtil.getSessionFactory().openSession()) {
				// start a transaction
				transaction = session.beginTransaction();
				// save the student object
				session.save(afl);
				// commit transaction
				transaction.commit();
			} catch (Exception e) {
				if (transaction != null) {
					transaction.rollback();
				}
				e.printStackTrace();
			}
		}
		public void assignflights(SaveBooking sb1) {
			Transaction transaction = null;
			try (Session session = HibernateUtil.getSessionFactory().openSession()) {
				// start a transaction
				transaction = session.beginTransaction();
				// save the student object
				session.save(sb1);
				// commit transaction
				transaction.commit();
			} catch (Exception e) {
				if (transaction != null) {
					transaction.rollback();
				}
				e.printStackTrace();
			}
		}
		public boolean validate(String username, String password) {
			Transaction transaction = null;
			User user = null;
			try (Session session = HibernateUtil.getSessionFactory().openSession()) {
				// start a transaction
				transaction = session.beginTransaction();
				// get an user object
				user = (User) session.createQuery("FROM User U WHERE U.username = :userName")
						.setParameter("userName", username).uniqueResult();

				if (user != null && user.getPassword().equals(password)) {
					return true;
				}
				// commit transaction
				transaction.commit();
			} catch (Exception e) {
				if (transaction != null) {
					transaction.rollback();
				}
				System.out.println(e.getMessage());
			}
			return false;
		}
		public void savemasterflight(FlightsList mfl) {
			Transaction transaction = null;
			try (Session session = HibernateUtil.getSessionFactory().openSession()) {
				// start a transaction
				transaction = session.beginTransaction();
				// save the student object
				session.save(mfl);
				// commit transaction
				transaction.commit();
			} catch (Exception e) {
				if (transaction != null) {
					transaction.rollback();
				}
				e.printStackTrace();
			}
		}
		public void savemasterplace(PlacesList mpl) {
			Transaction transaction = null;
			try (Session session = HibernateUtil.getSessionFactory().openSession()) {
				// start a transaction
				transaction = session.beginTransaction();
				// save the student object
				session.save(mpl);
				// commit transaction
				transaction.commit();
			} catch (Exception e) {
				if (transaction != null) {
					transaction.rollback();
				}
				e.printStackTrace();
			}
		}
		
}
