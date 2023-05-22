using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE.Permisos
{
    public abstract class AbstractComponent : AbstractGuidEntity
    {
        public string Name { get; set; }

        public abstract IList<AbstractComponent> Childs { get; }
        public abstract void AddChild(AbstractComponent c);

        public abstract void RemoveChild(AbstractComponent c);

        public abstract void Clear();
        public GrantType? GrantType { get; set; }

        public override string ToString()
        {
            return Name;
        }
    }
}
