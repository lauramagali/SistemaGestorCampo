using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE;
using SERVICIOS.Multilenguaje;
using DAL;
using System.Text.RegularExpressions;

namespace BLL
{
    public class MultiLangBLL : AbstractBLL, IMultiLangDataSource
    {
        private static readonly MultiLangBLL multiLangBll = new MultiLangBLL();

        private readonly MultiLangDAL multiIdiomaDAL = MultiLangDAL.Instance;
        public static MultiLangBLL Instance => multiLangBll;

        private MultiLangBLL() { }

        public Dictionary<string, string> LoadLang(string idioma)
        {
            return multiIdiomaDAL.LoadLang(idioma);
        }

        public void UpsertTranslate(string idioma, string key, string value)
        {
            multiIdiomaDAL.UpsertTranslate(idioma, key, value);
        }

        public List<Idioma> GetAllIdiomas()
        {
            return multiIdiomaDAL.GetAllIdiomas();
        }

        public Dictionary<string, string> GetTraduccionesDefault()
        {
            return multiIdiomaDAL.LoadLang("es-AR");
        }


        // ^ indica el inicio de la cadena.
        //[a-zA-Z]{ 1,8} coincide con una secuencia de 1 a 8 letras mayúsculas o minúsculas.
        //(-[a-zA-Z0-9]{ 1,8})* permite la aparición de guiones seguidos de una secuencia de 1 a 8 letras o números.Esto puede repetirse cero o más veces.
        //$ indica el final de la cadena.
        public int validarIdiomaRFC3066(string texto)
        {
            string exp = "^[a - zA - Z]{ 1,8} (-[a - zA - Z0 - 9]{ 1,8})*$";
            MatchCollection mc = Regex.Matches(texto, exp);
            if (mc.Count > 0)
            {
                return 1;
            }
            return 0;

        }
        /// <summary>
        /// Carga el idioma seleccionado, haciendo un join con el idioma default para completar las keys faltantes.
        /// </summary>
        /// <param name="idioma">Idioma a cargar</param>
        /// <returns>Listado completo de keyvalues traducidos.</returns>
        public Dictionary<string, string> CargarIdiomaFull(string idioma)
        {
            var traduccionesDefault = this.GetTraduccionesDefault();
            var traducciones = this.LoadLang(idioma);

            foreach (string key in traduccionesDefault.Keys)
            {
                if (!traducciones.ContainsKey(key))
                {
                    traducciones.Add(key, null);
                }
            }

            return traducciones;
        }

        public Idioma CrearIdioma(string id, string description)
        {
            var lang = new Idioma() { Id = id, Descripcion = description };

            multiIdiomaDAL.UpsertIdioma(lang);

            return lang;
        }

        public void GuardarIdioma(Idioma idioma, Dictionary<string, string> traducciones)
        {
            CrearIdioma(idioma.Id, idioma.Descripcion);
            foreach (var key in traducciones.Keys)
            {
                UpsertTranslate(idioma.Id, key, traducciones[key]);
            }
        }
    }
}
