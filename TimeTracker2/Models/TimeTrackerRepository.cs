using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TimeTracker2.Models
{
    public class TimeTrackerRepository
    {
        TimeTrackerDbContext _context = new TimeTrackerDbContext();
        public List<Employee> GetEmployees()
        {
            

            return (from e in _context.Employees
                orderby e.LastName
                select e).ToList();
        }

        public int GetEmployeeCount()
        {
            return _context.Employees.Count();
        }

        public List<TimeCard> GetTimeCardsByDate(DateTime submissionDate)
        {
            return (from tc in _context.TimeCards
                where tc.SubmissionDate == submissionDate
                orderby tc.ID
                select tc).ToList();
        }

        public List<TimeCard> GetEmployeeTimeCards(int id)
        {
            return (from e in _context.Employees
                where e.ID == id
                select e.TimeCards).SingleOrDefault();
        }

    }
}