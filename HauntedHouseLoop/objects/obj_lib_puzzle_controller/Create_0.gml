highlighted_books = ds_list_create();
chosen_books = ds_list_create();
total_correct_books = 0;
lib_puzzle_completed = false;

correct_books = ds_list_create();

ds_list_add(correct_books, obj_book_1_3);
ds_list_add(correct_books, obj_book_2_3);
ds_list_add(correct_books, obj_book_3_2);
ds_list_add(correct_books, obj_book_4_1);
ds_list_add(correct_books, obj_book_5_4);
ds_list_add(correct_books, obj_book_6_5);

// 1_3
// 2_3
// 3_2
// 4_1
// 5_4
// 6_5