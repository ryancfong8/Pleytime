import React from 'react';

const starRating = (rating) => {
  const star = <text>★</text>;
  const emptyStar = <text>☆</text>;
  switch(rating) {
    case 5:
      return <text className="Star-Rating-5">{star}{star}{star}{star}{star}</text>;
    case 4:
      return <text className="Star-Rating-4">{star}{star}{star}{star}{emptyStar}</text>;
    case 3:
      return <text className="Star-Rating-3">{star}{star}{star}{emptyStar}{emptyStar}</text>;
    case 2:
      return <text className="Star-Rating-2">{star}{star}{emptyStar}{emptyStar}{emptyStar}</text>;
    case 1:
      return <text className="Star-Rating-1">{star}{emptyStar}{emptyStar}{emptyStar}{emptyStar}</text>;
  }
};

export default starRating;

// const star = <i className="fa fa-star" aria-hidden="true"></i>;
//   const emptyStar = <i className="fa fa-star-o" aria-hidden="true"></i>;
