using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace OregonMobileHealthCareWebProject
{
    public class RegistrationData
    {
        private string rdUserName = null;
        private string rdFirstName = null;
        private string rdLastName = null;
        private string rdGender = null;
        private string rdPassword = null;
        private string rdEmailAddress = null;

        public string UserName
        {
            get
            {
                return rdUserName;
            }
            set
            {
                rdUserName = value;
            }
        }

        public string FirstName
        {
            get
            {
                return rdFirstName;
            }
            set
            {
                rdFirstName = value;
            }
        }

        public string LastName
        {
            get
            {
                return rdLastName;
            }
            set
            {
                rdLastName = value;
            }
        }

        public string Gender
        {
            get
            {
                return rdGender;
            }
            set
            {
                rdGender = value;
            }
        }

        public string Password
        {
            get
            {
                return rdPassword;
            }
            set
            {
                rdPassword = value;
            }
        }

        public string EmailAddress
        {
            get
            {
                return rdEmailAddress;
            }
            set
            {
                rdEmailAddress = value;
            }
        }

        public RegistrationData()
        {

        }
    }
}
