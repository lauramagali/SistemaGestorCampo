using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOS.Multilenguaje
{
    public interface IMultiLangDataSource
    {        
        Dictionary<string, string> LoadLang(string idioma);
        void UpsertTranslate(string idioma, string key, string value);
    }
}
