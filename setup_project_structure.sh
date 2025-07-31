#!/bin/bash

# This script creates a folder and file structure for the AuraMed project,
# based on the provided full-stack project outline.

set -e # Exit immediately if a command exits with a non-zero status.

echo "🤖 Creating AuraMed project structure..."

# --- Main Directories ---
echo "Creating main directories: backend, frontend and docs"
mkdir -p backend frontend docs

# --- Backend Structure (FastAPI) ---
echo "Creating backend directories"
mkdir -p backend/app \
        backend/app/models \
        backend/app/routers \
        backend/app/services \
        backend/app/workflow \
        backend/utils \
        backend/static \
        backend/notebooks

echo "Creating backend files..."

# ---Backend Files---
# backend/
touch backend/requirements.txt
touch backend/README.md
# backend/app
touch backend/app/__init__.py
touch backend/app/main.py
touch backend/app/config.py
touch backend/app/database.py
touch backend/app/dependencies.py
# backend/app/models
touch backend/app/models/__init__.py
touch backend/app/models/user.py
touch backend/app/models/drug.py
touch backend/app/models/prescription.py
touch backend/app/models/disease.py
touch backend/app/models/conversation.py
touch backend/app/models/interaction.py
# backend/app/routers
touch backend/app/routers/__init__.py
touch backend/app/routers/auth.py
touch backend/app/routers/users.py
touch backend/app/routers/drugs.py
touch backend/app/routers/prescriptions.py
touch backend/app/routers/diseases.py
touch backend/app/routers/chat.py
touch backend/app/routers/interactions.py
# backend/app/services
touch backend/app/services/__init__.py
touch backend/app/services/auth_service.py
touch backend/app/services/drug_service.py
touch backend/app/services/ocr_service.py
touch backend/app/services/interaction_service.py
touch backend/app/services/disease_service.py
touch backend/app/services/vector_service.py
touch backend/app/services/external_api_service.py
# backend/app/workflow
touch backend/app/workflow/__init__.py
touch backend/app/workflow/agent.py
mkdir -p backend/app/workflow/nodes
touch backend/app/workflow/nodes/__init__.py
touch backend/app/workflow/nodes/query_classifier.py
touch backend/app/workflow/nodes/drug_lookup.py
touch backend/app/workflow/nodes/interaction_checker.py
touch backend/app/workflow/nodes/response_generator.py
mkdir -p backend/app/workflow/states
touch backend/app/workflow/states/__init__.py
touch backend/app/workflow/states/agent_state.py
mkdir -p backend/app/workflow/tools
touch backend/app/workflow/tools/__init__.py
touch backend/app/workflow/tools/drug_tool.py
touch backend/app/workflow/tools/prescription_tool.py
touch backend/app/workflow/tools/disease_tool.py
# backend/utils
touch backend/utils/__init__.py
touch backend/utils/logger.py
touch backend/utils/exceptions.py
# backend/notebooks
touch backend/notebooks/README.md
echo "# Jupyter Notebooks for testing individual components" > backend/notebooks/README.md
touch backend/notebooks/notebook.ipynb

# --- Frontend Structure (React) ---
echo "Creating frontend directories..."
mkdir -p frontend/public \
         frontend/src/assets \
         frontend/src/components/common \
         frontend/src/components/auth \
         frontend/src/components/chat \
         frontend/src/components/prescription \
         frontend/src/components/drugs \
         frontend/src/components/profile \
         frontend/src/context \
         frontend/src/hooks \
         frontend/src/pages \
         frontend/src/services \
         frontend/src/styles \
         frontend/src/types \
         frontend/src/utils

echo "Creating frontend files..."

# --- Frontend Files ---
# /public
touch frontend/public/index.html
touch frontend/public/favicon.ico
touch frontend/public/manifest.json

# /src
touch frontend/src/App.js
touch frontend/src/index.js
touch frontend/src/App.css

# /src/components
touch frontend/src/components/common/Header.jsx
touch frontend/src/components/common/Footer.jsx
touch frontend/src/components/common/Navbar.jsx
touch frontend/src/components/common/LoadingSpinner.jsx
touch frontend/src/components/common/ErrorMessage.jsx
touch frontend/src/components/auth/LoginForm.jsx
touch frontend/src/components/auth/RegisterForm.jsx
touch frontend/src/components/auth/ProtectedRoute.jsx
touch frontend/src/components/chat/ChatInterface.jsx
touch frontend/src/components/chat/MessageBubble.jsx
touch frontend/src/components/chat/ChatInput.jsx
touch frontend/src/components/chat/ChatHistory.jsx
touch frontend/src/components/prescription/PrescriptionUpload.jsx
touch frontend/src/components/prescription/PrescriptionDisplay.jsx
touch frontend/src/components/prescription/OCRResults.jsx
touch frontend/src/components/drugs/DrugSearch.jsx
touch frontend/src/components/drugs/DrugInfo.jsx
touch frontend/src/components/drugs/DrugCard.jsx
touch frontend/src/components/drugs/InteractionWarning.jsx
touch frontend/src/components/profile/UserProfile.jsx
touch frontend/src/components/profile/MedicalHistory.jsx
touch frontend/src/components/profile/ProfileSettings.jsx

# /src/pages
touch frontend/src/pages/HomePage.jsx
touch frontend/src/pages/LoginPage.jsx
touch frontend/src/pages/RegisterPage.jsx
touch frontend/src/pages/DashboardPage.jsx
touch frontend/src/pages/ChatPage.jsx
touch frontend/src/pages/DrugSearchPage.jsx
touch frontend/src/pages/PrescriptionPage.jsx
touch frontend/src/pages/ProfilePage.jsx
touch frontend/src/pages/AboutPage.jsx
touch frontend/src/pages/NotFoundPage.jsx

# /src/services
touch frontend/src/services/api.js
touch frontend/src/services/authService.js
touch frontend/src/services/drugService.js
touch frontend/src/services/prescriptionService.js
touch frontend/src/services/chatService.js
touch frontend/src/services/userService.js
touch frontend/src/services/websocket.js

# /src/hooks
touch frontend/src/hooks/useAuth.js
touch frontend/src/hooks/useChat.js
touch frontend/src/hooks/useApi.js

# /src/context
touch frontend/src/context/AuthContext.js
touch frontend/src/context/ThemeContext.js

# Root frontend files
touch frontend/package.json
touch frontend/README.md

# --- Root-level Files ---
echo "Creating root configuration and project files..."
touch .gitignore
touch README.md
touch docker-compose.yml
touch Dockerfile
touch .env
touch .env.example

echo "✅ AuraMed project structure created successfully!"
echo ""
echo "Next steps:"
echo "1. In the 'backend' folder, create a virtual environment and run: pip install -r requirements.txt"
echo "2. In the 'frontend' folder, run: npm install"