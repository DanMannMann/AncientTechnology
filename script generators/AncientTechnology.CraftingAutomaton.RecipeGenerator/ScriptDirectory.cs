using System.Collections;
using System.Collections.Generic;

namespace Autocrafter.RecipeParser
{
    public class ScriptDirectory : IList<McFunctionFile>, IList<ScriptDirectory>
    {
        private List<McFunctionFile> files = new List<McFunctionFile>();
        private List<ScriptDirectory> subfolders = new List<ScriptDirectory>();

        public McFunctionFile this[int index] { get => ((IList<McFunctionFile>)files)[index]; set => ((IList<McFunctionFile>)files)[index] = value; }

        public ScriptDirectory Parent { get; set; }
        public string Name { get; set; }
        public string Path => $"{Parent?.Path}{Name}/";
        public void Add(McFunctionFile item)
        {
            item.Directory = this;
            ((ICollection<McFunctionFile>)files).Add(item);
        }

        public void Insert(int index, McFunctionFile item)
        {
            item.Directory = this;
            ((IList<McFunctionFile>)files).Insert(index, item);
        }

        public void Insert(int index, ScriptDirectory item)
        {
            item.Parent = this;
            ((IList<ScriptDirectory>)subfolders).Insert(index, item);
        }

        public void Add(ScriptDirectory item)
        {
            item.Parent = this;
            ((ICollection<ScriptDirectory>)subfolders).Add(item);
        }

        #region IList<File>
        public int Count { get => ((ICollection<McFunctionFile>)files).Count; }
        public bool IsReadOnly { get => ((ICollection<McFunctionFile>)files).IsReadOnly; }

        ScriptDirectory IList<ScriptDirectory>.this[int index] { get => ((IList<ScriptDirectory>)subfolders)[index]; set => ((IList<ScriptDirectory>)subfolders)[index] = value; }

        public void Clear()
        {
            ((ICollection<McFunctionFile>)files).Clear();
        }

        public bool Contains(McFunctionFile item)
        {
            return ((ICollection<McFunctionFile>)files).Contains(item);
        }

        public void CopyTo(McFunctionFile[] array, int arrayIndex)
        {
            ((ICollection<McFunctionFile>)files).CopyTo(array, arrayIndex);
        }

        public IEnumerator<McFunctionFile> GetEnumerator()
        {
            return ((IEnumerable<McFunctionFile>)files).GetEnumerator();
        }

        public int IndexOf(McFunctionFile item)
        {
            return ((IList<McFunctionFile>)files).IndexOf(item);
        }

        public bool Remove(McFunctionFile item)
        {
            return ((ICollection<McFunctionFile>)files).Remove(item);
        }

        public void RemoveAt(int index)
        {
            ((IList<McFunctionFile>)files).RemoveAt(index);
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return ((IEnumerable)files).GetEnumerator();
        }
        #endregion

        #region IList<Dir>
        public int IndexOf(ScriptDirectory item)
        {
            return ((IList<ScriptDirectory>)subfolders).IndexOf(item);
        }

        public bool Contains(ScriptDirectory item)
        {
            return ((ICollection<ScriptDirectory>)subfolders).Contains(item);
        }

        public void CopyTo(ScriptDirectory[] array, int arrayIndex)
        {
            ((ICollection<ScriptDirectory>)subfolders).CopyTo(array, arrayIndex);
        }

        public bool Remove(ScriptDirectory item)
        {
            return ((ICollection<ScriptDirectory>)subfolders).Remove(item);
        }

        IEnumerator<ScriptDirectory> IEnumerable<ScriptDirectory>.GetEnumerator()
        {
            return ((IEnumerable<ScriptDirectory>)subfolders).GetEnumerator();
        }
        #endregion
    }
}
