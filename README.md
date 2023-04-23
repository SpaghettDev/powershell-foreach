# powershell-foreach
a simple foreach command in powershell because why not

loops over the 1st parameter (a file or a path to one), then executes the 2nd parameter if it matches the 3rd parameter (by default ".*")

## Examples:
<details>
<summary>Example 1: No 3rd parameter</summary>

- shell:
```shell
./foreach ./test.txt explorer
```
- test.txt:
```txt
C:\Program Files
C:\Program Files (x86)
```

- What is does:
  Opens 2 Windows Explorer windows, the first being "C:\Program Files", the second being "C:\Program Files (x86)".

</details>
<details>
  <summary>Example 2: With 3rd parameter</summary>
  
- shell:
```shell
./foreach ./test.txt explorer "D:"
```
- test.txt:
```txt
C:\Program Files
C:\Program Files (x86)
D:\Projects
X:\ye
```

- What is does:
  Opens 1 Windows Explorer window, that being "D:\Projects" since it's the only line that matches "D:".

</details>

## License:
This project is under ["The Unlicense"](https://choosealicense.com/licenses/unlicense) found [here](./LICENSE).
