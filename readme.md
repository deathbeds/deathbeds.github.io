
# <big><big><big>REST💀IN💀PXXXLS</big></big></big>


```python
import deathbeds as rip
from pathlib import Path
```

#### Produce markdown versions of some pxxxls in `/_posts`


```python
from nbconvert.exporters.markdown import MarkdownExporter
```


```python
exporter = MarkdownExporter()
no_output = MarkdownExporter(config=dict(TemplateExporter=dict(exclude_output=True)))
HEADER = """---\n---\n"""
```


```python
[
    (Path('_posts') / file.with_suffix('.md').name)
    .write_text(HEADER+exporter.from_filename(file)[0])
    for file in Path(rip.__name__).glob('*.ipynb')];
```

create the index and the readme.


```python
Path('index.md').write_text(HEADER + no_output.from_filename(Path('index.ipynb'))[0])
Path('readme.md').write_text(no_output.from_filename(Path('readme.ipynb'))[0]);
```
