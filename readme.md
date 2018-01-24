
# <big><big><big>REST💀IN💀PXXXLS</big></big></big>


```python
    if __name__ == '__main__':
        !echo "---\n---\n" > index.md
        !jupyter nbconvert --to markdown --TemplateExporter.exclude_output=True --stdout readme.ipynb >> index.md
        !jupyter nbconvert --to markdown readme.ipynb
```
