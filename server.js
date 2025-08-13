// backend/server.js
import express from "express";
import cors from "cors";
import surveyRoutes from "./routes/surveys.js";

const app = express();
const PORT = process.env.PORT || 5000;

app.use(cors());
app.use(express.json());

// Routes
app.use("/api/surveys", surveyRoutes);

app.get("/", (req, res) => {
  res.send("Survey Dashboard Backend Running ✅");
});

app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});
