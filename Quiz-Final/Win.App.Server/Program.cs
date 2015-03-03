﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using App.Model;
using Microsoft.Owin.Hosting;

namespace Win.App.Server
{
    static class Program
    {

        internal static Form1 MainForm { get; set; }
        internal static MainScreen frmMain { get; private set; }
        internal static QuizL2Server frmQuizL2Server { get; private set; }
        internal static QuizServerControl.QuizL3Server frmQuizL3Server { get; private set; }
        internal static QuizServerControl.QClincherServer frmQClincherServer { get; private set; }

        //Generic Quiz
        internal static GQuizServerControl.GQuizEasy frmGQuizEasy { get; private set; }
        internal static GQuizServerControl.GQuizAverage frmGQuizAverage { get; private set; }
        internal static GQuizServerControl.GQuizDifficult frmGQuizDifficult { get; private set; }
        internal static GQuizServerControl.GQuizClincher frmGQuizClincher { get; private set; }

        /// <summary>
        /// The main entry point for the application.
        /// https://code.msdn.microsoft.com/Using-SignalR-in-WinForms-f1ec847b
        /// http://converter.telerik.com/
        /// </summary>
        [STAThread]
        static void Main()
        {


            var ipAddress = ConfigurationManager.AppSettings["ServerIpAddress"];
            var portNumber = ConfigurationManager.AppSettings["ServerPort"];

            var url = string.Format("http://{0}:{1}", ipAddress, portNumber);

            WebApp.Start<Startup>(url);

            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new LoginForm());

            MainForm = new Form1();
            frmMain = new MainScreen();
            frmQuizL2Server = new QuizL2Server();
            frmQuizL3Server = new QuizServerControl.QuizL3Server();
            frmQClincherServer = new QuizServerControl.QClincherServer();

            frmGQuizEasy = new GQuizServerControl.GQuizEasy();
            frmGQuizAverage = new GQuizServerControl.GQuizAverage();
            frmGQuizDifficult = new GQuizServerControl.GQuizDifficult();
            frmGQuizClincher = new GQuizServerControl.GQuizClincher();

            Application.Run(frmMain);

            

        }
    }
}
