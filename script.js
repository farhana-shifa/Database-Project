document.addEventListener("DOMContentLoaded", () => {
    const books = [
        { title: "The Great Gatsby", author: "F. Scott Fitzgerald" },
        { title: "To Kill a Mockingbird", author: "Harper Lee" },
        { title: "1984", author: "George Orwell" },
        { title: "Pride and Prejudice", author: "Jane Austen" },
        { title: "The Catcher in the Rye", author: "J.D. Salinger" }
    ];

    const bookList = document.querySelector(".book-list");

    books.forEach(book => {
        const bookDiv = document.createElement("div");
        bookDiv.className = "book";
        bookDiv.innerHTML = `<h3>${book.title}</h3><p>by ${book.author}</p>`;
        bookList.appendChild(bookDiv);
    });

    const exploreBtn = document.getElementById("explore-btn");
    exploreBtn.addEventListener("click", () => {
        document.getElementById("books").scrollIntoView({ behavior: "smooth" });
    });
});
