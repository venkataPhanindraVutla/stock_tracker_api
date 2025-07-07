const mongoose = require("mongoose");

const userSchema = new mongoose.Schema(
  {
    username: { type: String, required: true, unique: true },
    password: { type: String, required: true },
    email: { type: String, required: true, unique: true },
    portfolioValue: { type: Number, default: 100000 },
  },
  { timestamps: true }
);

module.exports = mongoose.model("User", userSchema);
