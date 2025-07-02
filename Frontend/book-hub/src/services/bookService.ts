import { Book } from "../types/book";

const API_URL = "http://127.0.0.1:8000/api";

export const bookService = {
  async getAllBooks(): Promise<Book[]> {
    const response = await fetch(`${API_URL}/books/`);
    if (!response.ok) {
      throw new Error("Failed to fetch books");
    }
    return response.json();
  },

  async getBookById(id: number): Promise<Book> {
    const response = await fetch(`${API_URL}/books/${id}/`);
    if (!response.ok) {
      throw new Error("Failed to fetch book");
    }
    return response.json();
  },
};
