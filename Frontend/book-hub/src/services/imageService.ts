export const imageService = {
  getImageUrl(path: string): string {
    if (!path) return "";

    // If the path is already a full URL, return it
    if (path.startsWith("http")) {
      return path;
    }

    // For development environment
    if (path.startsWith("/media/")) {
      return `http://127.0.0.1:8000${path}`;
    }

    // For paths without /media/ prefix
    return `http://127.0.0.1:8000/media/${path}`;
  },
};
