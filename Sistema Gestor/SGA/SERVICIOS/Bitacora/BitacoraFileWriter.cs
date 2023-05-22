using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace SERVICIOS.Bitacora
{
    public class BitacoraFileWritter : IBitacoraWriter, IDisposable
    {

        private FileStream fileStream;
        private StreamWriter writter;

        public BitacoraFileWritter(string filepath)
        {
            fileStream = new FileStream(filepath, FileMode.Append);

            writter = new StreamWriter(fileStream);

        }

        public void Dispose()
        {
            if (writter != null)
            {
                writter.Close();
            }
            if (fileStream != null)
            {
                fileStream.Close();
            }
        }

        public void Write(string userReferenceId, string message, string criticity)
        {
            writter.WriteLine($"[citicity:{criticity}][datetime:{DateTime.Now}][userReferenceId:{userReferenceId}] {message}");
            writter.FlushAsync();
        }
    }
}
