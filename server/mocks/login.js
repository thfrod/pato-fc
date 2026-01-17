const loginSucessful = {
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNzM3MTQ1NzQ0LCJleHAiOjE3Mzc3NTA1NDR9.L62Y1_v2_7g9g9g9g9g9g9g9g9g9g9g9g9g9g9g9g",
    "user": {
        "id": 1,
        "name": "John Doe",
        "email": "[EMAIL_ADDRESS]"
    }
}
const loginFailed = {
    "error": "Invalid credentials"
}

module.exports = {
    loginSucessful,
    loginFailed
}
