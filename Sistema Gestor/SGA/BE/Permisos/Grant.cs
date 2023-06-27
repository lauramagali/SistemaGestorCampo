using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE.Permisos
{
    public class Grant : AbstractComponent
    {
        public override IList<AbstractComponent> Childs
        {
            get
            {
                return new List<AbstractComponent>();
            }

        }

        public override void AddChild(AbstractComponent c)
        {

        }

        public override void RemoveChild(AbstractComponent c)
        {
        }

        public override void Clear()
        {

        }
        
    }
}
