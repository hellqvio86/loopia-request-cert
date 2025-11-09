# Loopia Request Cert

**Loopia Request Cert** is a small Python tool for requesting or renewing SSL/TLS certificates using Loopia's DNS API (for example with Certbot DNS challenges).  
It automates authentication and certificate retrieval for domains managed via [Loopia](https://www.loopia.se).

---

## 📦 Installation

Clone this repository and create a Python virtual environment using `make`:

```bash
git clone https://github.com/hellqvio86/loopia-request-cert.git
cd loopia-request-cert
make install
```

This will:
- Create a virtual environment in `.venv/`
- Install dependencies from `requirements.txt`

Activate the environment manually if you wish to run commands directly:

```bash
source .venv/bin/activate
```

---

## ⚙️ Configuration

Before running the tool, set your Loopia credentials in a config file or environment variables:

```bash
certbot_loopia:auth_user = <YOUR USER>
certbot_loopia:auth_password = <YOUR PASSWORD>
dns_loopia_user = <YOUR USER>
dns_loopia_password = <YOUR PASSWORD>
```

You can also export them as environment variables for automation.

---

## 🚀 Usage

Run the tool via `make`:

```bash
make run
```

or directly (after activating the virtual environment):

```bash
python main.py
```

---

## 🧹 Useful Makefile Targets

| Command         | Description                              |
|-----------------|------------------------------------------|
| `make venv`     | Create a virtual environment              |
| `make install`  | Install dependencies                      |
| `make run`      | Run the certificate request tool          |
| `make lint`     | Lint Python files using flake8            |
| `make clean`    | Remove virtual environment and cache      |
| `make help`     | Show all available targets                |

---

## 🧰 Requirements

- Python 3.8+  
- Access to Loopia DNS API  
- `certbot`

---

## 📝 License

This project is licensed under the MIT License.
