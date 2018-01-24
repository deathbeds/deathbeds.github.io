from aye import Import, update_hooks, Notebook
update_hooks(Notebook)

from pathlib import Path
notebooks = {path.with_suffix('').name: path for path in Path(__file__).parent.glob('*.ipynb')}