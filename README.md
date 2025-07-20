# Online Store - Backend (Ruby on Rails)

## Overview

This repository contains the Ruby on Rails backend for an online store web application. It provides the API services, database management, and server-side logic that power the e-commerce platform.

## Features

### Core Functionality
- **RESTful JSON API** for frontend/API consumers
- **Admin dashboard** backend services
- **Background jobs** for order processing 

### Commerce Features
- Product catalog management
- Order proccessing
- 
### User System
- Role-based authorization (Customer, Admin, Staff)
- Account management

## Technology Stack

- **Framework**: Ruby on Rails 
- **Database**: PostgreSQL
- **Testing**: RSpec, FactoryBot

## Frontend Note

This repository only contains the backend API. The frontend (whether web, mobile, or third-party integration) communicates with this backend via the JSON API endpoints.

## Getting Started

### Prerequisites
- Ruby 3.4
- PostgreSQL 17.1

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/online-store-rails-api.git
   cd online-store-rails-api
   ```

2. Install dependencies:
   ```bash
   bundle install
   ```

3. Set up database:
   ```bash
   rails db:create
   rails db:migrate
   ```

4. Set up environment variables:
   ```bash
   cp .env.example .env
   # Edit .env with your configuration
   ```

5. Start the server:
   ```bash
   rails server
   ```

### Development Setup
For development with sample data:
```bash
rails db:seed
```

To run the test suite:
```bash
rspec
```

## API Documentation

Interactive API documentation is available at `/api-docs` when running in development mode (powered by Swagger/RSwag).


See `DEPLOYMENT.md` for detailed instructions.

## Architecture Highlights

- **API-only** Rails configuration
- **Service objects** for complex business logic
- **JSON:API** specification compliance
- **Caching strategies** for high traffic endpoints
- **Webhook support** for payment processors

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/FeatureName`)
3. Commit your changes (`git commit -m 'Add some Feature'`)
4. Push to the branch (`git push origin feature/FeatureName`)
5. Open a Pull Request

Please ensure your code includes appropriate test coverage.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
