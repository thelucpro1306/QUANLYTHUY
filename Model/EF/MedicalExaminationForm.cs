namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("MedicalExaminationForm")]
    public partial class MedicalExaminationForm
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MedicalExaminationForm()
        {
            Clients = new HashSet<Client>();
            DeltailsMedicalForms = new HashSet<DeltailsMedicalForm>();
        }

        public long id { get; set; }

        [StringLength(50)]
        public string PetName { get; set; }

        public double? Weight { get; set; }

        [StringLength(50)]
        public string HairColor { get; set; }

        [StringLength(50)]
        public string Species { get; set; }

        public bool? PetGender { get; set; }

        [StringLength(int.MaxValue)]
        public string Image { get; set; }

        public DateTime? CreateDate { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Client> Clients { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DeltailsMedicalForm> DeltailsMedicalForms { get; set; }

        public List<Client> list = new List<Client>();

    }
}
