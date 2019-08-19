import axios from 'axios';

const api = axios.create({
    baseURL: 'http://54.90.89.149:7000'
})

export default api;