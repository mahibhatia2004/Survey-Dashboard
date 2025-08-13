// backend/controllers/surveyController.js
import { supabase } from "../supabase.js";

// Get all surveys
export const getAllSurveys = async (req, res) => {
  const { data, error } = await supabase.from("survey").select("*");
  if (error) return res.status(400).json({ error: error.message });
  res.json(data);
};

// Add a survey response
export const addSurveyResponse = async (req, res) => {
  const { survey_id, user_id, city_id, response_data } = req.body;
  const { data, error } = await supabase.from("responses").insert([
    { survey_id, user_id, city_id, response_data }
  ]);
  if (error) return res.status(400).json({ error: error.message });
  res.json({ message: "Response added successfully ✅", data });
};

// Get surveys by city
export const getSurveyByCity = async (req, res) => {
  const cityName = req.params.cityName;
  const { data, error } = await supabase
    .from("responses")
    .select("*")
    .eq("city_name", cityName);
  if (error) return res.status(400).json({ error: error.message });
  res.json(data);
};
