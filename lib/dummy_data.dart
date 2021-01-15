import 'package:flutter/material.dart';
import 'package:worldtime/models/Category.dart';
import 'package:worldtime/routes/meals.dart';

const DUMMY_DATA = const [
  Category(
    id:'c1',
    title:'Asian',
    color:Colors.green


  ),
   Category(
    id:'c2',
    title:'Chinese',
    color:Colors.red


  ),
   Category(
    id:'c3',
    title:'American',
    color:Colors.blue


  ),
   Category(
    id:'c4',
    title:'Japanse',
    color:Colors.pink


  ),
   Category(
    id:'c5',
    title:'Turkish',
    color:Colors.orange


  ),

 


];
 const DUMMY_MEALS=const[
    Meal(imageURL:'https://cdn.pixabay.com/photo/2019/11/04/12/16/rice-4601049_960_720.jpg',
     id: 'm1', 
     title: 'Biryani',
      categories: ['c1'],
       ingredients: ['abc','sd','asd','zxnc,m'], 
       complexity: Complexity.Difficut, 
       duration: 45, steps: ['ad','sada','asdd','lsdfj'], 
       isCholestrolfree: false, 
       isSugarFree: false),

     Meal(imageURL:'https://cdn.pixabay.com/photo/2018/05/07/14/00/chicken-chowmein-3380834_960_720.jpg',
     id: 'm2', 
     title: 'Chowmein',
      categories: ['c2','c3'],
       ingredients: ['abc','sd','asd','zxnc,m'], 
       complexity: Complexity.Simple, 
       duration: 45, steps: ['ad','sada','asdd','lsdfj'], 
       isCholestrolfree: true, 
       isSugarFree: false),

    Meal(imageURL:'https://cdn.pixabay.com/photo/2020/05/11/15/06/food-5158702_960_720.jpg',
     id: 'm3', 
     title: 'Baklava',
      categories: ['c5'],
       ingredients: ['abc','sd','asd','zxnc,m'], 
       complexity: Complexity.Challenging, 
       duration: 45, steps: ['ad','sada','asdd','lsdfj'], 
       isCholestrolfree: false, 
       isSugarFree: false),

     Meal(imageURL:'https://cdn.pixabay.com/photo/2018/08/03/08/33/food-3581341__340.jpg',
     id: 'm4', 
     title: 'Sushi',
      categories: ['c4','c2','c3'],
       ingredients: ['abc','sd','asd','zxnc,m'], 
       complexity: Complexity.Challenging, 
       duration: 45, steps: ['ad','sada','asdd','lsdfj'], 
       isCholestrolfree: false, 
       isSugarFree: false),
       


  ];
  
