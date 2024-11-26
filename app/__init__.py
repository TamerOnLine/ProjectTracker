from flask import Flask

def create_app():
    """Factory function to create and configure the Flask application."""
    app = Flask(__name__)

    # Application configuration
    app.config['SECRET_KEY'] = 'mysecretkey'  # Secret key for secure session management

    # Register blueprints (modular routes)
    from .routes import main_bp
    app.register_blueprint(main_bp)

    return app
