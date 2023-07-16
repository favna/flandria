import os

from dotenv import load_dotenv

from webapp import create_app

if __name__ == "__main__":
    # Load .env file
    load_dotenv()

    # Create and run app
    app = create_app(debug=os.getenv("DEBUG", False))
    app.run(host='0.0.0.0', port=8000)
