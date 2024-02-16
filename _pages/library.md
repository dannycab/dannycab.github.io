---
layout: page
permalink: /library/
title: library
#description: Materials for courses you taught. Replace this text with your description.
nav: false
nav_order: 7
---

Here's a list of the physical books in 1310A BPS and elsewhere that students are welcome to check out. If you want to check out a book, just drop by or [send me an email](mailto:{{ site.email }}).

## checked out

Here's what currently checked out.

<table>
  <thead>
    <tr>
      <th>ID</th>
      <th>Book</th>
      <th>Due Date</th>
    </tr>
  </thead>
  <tbody>
    {% for checkout in site.data.checkouts %}
    {% assign book = site.data.books | where: "id", checkout.book_id | first %}
      <tr>
        <td>{{ checkout.book_id }}</td>
        <td>{{ book.title }}</td>
        <td>{{ checkout.due_date }}</td>
      </tr>
    {% endfor %}
  </tbody>
  </table>


## catalog
Below is a list of books available in 1310A BPS for checkout.:

<table>
  <thead>
    <tr>
      <th>ID</th>
      <th>Title</th>
      <th>Author</th>
      <th>Published Year</th>
      <th>Genre</th>
      <th>ISBN</th>
    </tr>
  </thead>
  <tbody>
    {% for book in site.data.books %}
      <tr>
        <td>{{ book.id }}</td>
        <td>{{ book.title }}</td>
        <td>{{ book.author }}</td>
        <td>{{ book.published_year }}</td>
        <td>{{ book.genre }}</td>
        <td>{{ book.isbn }}</td>
      </tr>
    {% endfor %}
  </tbody>
  </table>
