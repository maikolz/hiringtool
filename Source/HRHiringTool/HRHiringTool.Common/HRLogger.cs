using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Logging;

namespace HRHiringTool.Common
{
    class HRLogger
    {
        #region Log
        /// <summary>
        /// Writes a log entry
        /// </summary>
        /// <param name="eventType">Type of event beign logged</param>
        /// <param name="className">Name of the class in which the log is being written</param>
        /// <param name="message">The message being logged</param>
        public static void Log(TraceEventType eventType, string className, string message)
        {
            var logEntry = new LogEntry {Message = message, Severity = eventType};
            IDictionary<string, object> extendedProperties = new Dictionary<string, object> {{"ClassName", className}};
            logEntry.ExtendedProperties = extendedProperties;
            Logger.Write(logEntry);
        }
        #endregion

        #region Helper Logs

        public static void Critical(Type type, string message)
        {
            Log(TraceEventType.Critical, type.FullName, message);
        }

        public static void Critical(string className, string message)
        {
            Log(TraceEventType.Critical, className, message);
        }

        public static void Error(Type type, string message)
        {
            Log(TraceEventType.Error, type.FullName, message);
        }

        public static void Error(string className, string message)
        {
            Log(TraceEventType.Error, className, message);
        }

        public static void Warn(Type type, string message)
        {
            Log(TraceEventType.Warning, type.FullName, message);
        }

        public static void Warn(string className, string message)
        {
            Log(TraceEventType.Warning, className, message);
        }

        public static void Info(Type type, string message)
        {
            Log(TraceEventType.Information, type.FullName, message);
        }

        public static void Info(string className, string message)
        {
            Log(TraceEventType.Information, className, message);
        }

        public static void Verbose(Type type, string message)
        {
            Log(TraceEventType.Verbose, type.FullName, message);
        }

        public static void Verbose(string className, string message)
        {
            Log(TraceEventType.Verbose, className, message);
        }
        #endregion
    }
}
