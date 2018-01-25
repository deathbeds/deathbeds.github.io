
# <big><big><big>REST💀IN💀PXXXLS</big></big></big>


```python
import deathbeds as rip
from pathlib import Path
from importlib import import_module
```


```python
assert import_module('deathbeds.2018-01-25-D三athb三ds').name == """D三athb三ds"""
```

#### Produce markdown versions of some pxxxls in `/_posts`


```python
from nbconvert.exporters.markdown import MarkdownExporter

exporter = MarkdownExporter()
HEADER = """---\n{}\n---\n""".format
```


```python
for file in Path(rip.__name__).glob('*.ipynb'):
    content, data = exporter.from_filename(file)
    (Path('_posts') / file.with_suffix('.md').name).write_text(
        '\n'.join((HEADER(dict(data.get('metadata'))), content))
    )
```

create the index and the readme.


```python
content, data = no_output.from_filename(Path('readme.ipynb'))
Path('readme.md').write_text(content);
```


```python
no_output = MarkdownExporter(config=dict(TemplateExporter=dict(exclude_output=True)))
content, data = no_output.from_filename(Path('index.ipynb'))
Path('index.md').write_text(HEADER({}) + content);

# Build the Jekyll Site.

!jekyll build
from IPython.display import display, IFrame
display(IFrame('_site/index.html', 800, 600))
```
