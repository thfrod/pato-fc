const express = require("express");
const cors = require("cors");
const bodyParser = require("body-parser");

const { loginSucessful, loginFailed } = require("./mocks/login");

const app = express();
const PORT = 3000;

// Middleware
app.use(cors());
app.use(bodyParser.json());

// Custom Delay Middleware (simulates network latency)
app.use((req, res, next) => {
  setTimeout(next, 1000); // 1 second delay
});

// Routes
app.post("/login", (req, res) => {
  const { email, password } = req.body;

  // Simple validation logic
  // For demo purposes, we accept any email, but password must be '123456'
  if (password === "123456") {
    console.log(`[LOGIN SUCCESS] User: ${email}`);
    return res.json(loginSucessful);
  } else {
    console.log(`[LOGIN FAILED] User: ${email}`);
    return res.status(401).json(loginFailed);
  }
});

// Start Server
app.listen(PORT, () => {
  console.log(`\n🚀 Mock Server running at http://localhost:${PORT}`);
  console.log(`   - Delay: 1000ms`);
  console.log(`   - Login Endpoint: POST /login`);
});
