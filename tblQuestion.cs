//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ExaminationSystem
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblQuestion
    {
        public int QuestionID { get; set; }
        public string Questions { get; set; }
        public string opt1 { get; set; }
        public string opt2 { get; set; }
        public string opt3 { get; set; }
        public string opt4 { get; set; }
        public string Answer { get; set; }
        public Nullable<int> classID { get; set; }
        public Nullable<int> SubjectID { get; set; }
    
        public virtual tblClass tblClass { get; set; }
        public virtual tblSubject tblSubject { get; set; }
    }
}
