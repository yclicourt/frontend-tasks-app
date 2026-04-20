import axios from "axios";

const tasksApi = axios.create({
  baseURL: import.meta.env.VITE_BASE_URL,
});

export const getAllTasks = () => tasksApi.get("/");
export const getTask = (id) => tasksApi.get(`/${id}/`);
export const createTask = (task) => tasksApi.post("/", task);
export const deleteTask = (id) => tasksApi.delete(`/${id}`);
export const updateTask = (id, task) => tasksApi.put(`/${id}/`, task);
