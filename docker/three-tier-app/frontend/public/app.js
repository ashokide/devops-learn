$(document).ready(async () => {
  const data = await fruits_data();
  $("#fruits-table").DataTable({
    columnDefs: [
      {
        defaultContent: "-",
        targets: "_all",
      },
    ],
    columns: [
      { title: "_id", data: "_id" },
      { title: "name", data: "name" },
      { title: "id", data: "id" },
      { title: "family", data: "family" },
      { title: "order", data: "order" },
      { title: "genus", data: "genus" },
      { title: "calories", data: "nutritions.calories" },
      { title: "fat", data: "nutritions.fat" },
      { title: "sugar", data: "nutritions.sugar" },
      { title: "carbohydrates", data: "nutritions.carbohydrates" },
      { title: "protein", data: "nutritions.protein" },
    ],
    data: data,
  });
});

async function fruits_data() {
  return fetch("http://localhost:8000/get-data")
    .then((response) => response.json())
    .then((response) => response)
    .catch(function (err) {
      console.warn("Something went wrong.", err);
    });
}
