// backend/routes/surveys.js
import express from "express";
import { getAllSurveys, addSurveyResponse, getSurveyByCity } from "../controllers/surveyController.js";

const router = express.Router();

// Get all surveys
router.get("/", getAllSurveys);

// Add a survey response
router.post("/response", addSurveyResponse);

// Get survey data by city
router.get("/city/:cityName", getSurveyByCity);

export default router;
