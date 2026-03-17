# portkiller

`portkiller` is an advanced port process manager for macOS and Linux. It quickly finds and kills processes listening on specific ports.

## Features

- Kill a single port process
- Kill multiple port processes at once
- List all active listening ports
- List self-assigned ports (>1024)

## Installation via Homebrew

To install `portkiller` via Homebrew, you will need to add it to a Custom Tap (since it is a personal script).

Assuming you host this on GitHub at `https://github.com/inomanikram/homebrew-portkiller`.

1. **Tap the repository**:
   ```bash
   brew tap inomanikram/portkiller
   ```
2. **Install the package**:
   ```bash
   brew install portkiller
   ```

> **Note to Developer:** See the included `portkiller.rb` file for an example Homebrew formula to use in your tap!

## Usage

```bash
# Kill a single port (e.g., port 8080)
portkiller kill 8080

# Kill multiple ports (e.g., 8080, 3000, 5432)
portkiller killm 8080,3000,5432

# List all listening ports
portkiller list

# List self-assigned ports (>1024)
portkiller self

# Show version
portkiller version
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

[MIT](https://choosealicense.com/licenses/mit/)
