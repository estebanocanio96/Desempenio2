using System;
using System.Collections.Generic;
using System.IO;
using System.Web;
using System.Web.UI.WebControls;

namespace Desempenio2
{
    public partial class Gestión_de_archivos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            subirGrilla();
        }

        public void subirGrilla()
        {
            string path = $"{Server.MapPath(".")}/files";
            if (Directory.Exists(path))
            {
                string[] files = Directory.GetFiles(path);
                List<Archivo> lista = new List<Archivo>();
                foreach(string file in files)
                {
                    var fileNew = new Archivo(Path.GetFileName(file), file);
                    lista.Add(fileNew);
                }
                GridView1.DataSource = lista;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string path = $"{Server.MapPath(".")}/files";
            string result = string.Empty;

            if (!Directory.Exists(path))
            {
                Directory.CreateDirectory(path);
            }
            foreach (HttpPostedFile archivo in FileUpload1.PostedFiles)
            {
                FileUpload1.SaveAs($"{path}/{archivo.FileName}");
                if (archivo.ContentLength > 1000)
                {
                    result += $"El archivo  {archivo.FileName}supera los 100 bytes";
                }
            }
            Label1.Text = result;
            subirGrilla();
        }

        protected void GridView1_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if(e.CommandName == "Descargar")
            {
                GridViewRow datos = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
                string filePath = datos.Cells[2].Text;

                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
                Response.TransmitFile(filePath);
                Response.End();
            }
        }
    }
}