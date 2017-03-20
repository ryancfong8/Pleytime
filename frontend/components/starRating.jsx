import React from 'react';

const starRating = (rating) => {
  const star = <text>★</text>;
  const emptyStar = <text>☆</text>;
  switch(rating) {
    case 5:
      return <text>{star}{star}{star}{star}{star}</text>;
    case 4:
      return <text>{star}{star}{star}{star}{emptyStar}</text>;
    case 3:
      return <text>{star}{star}{star}{emptyStar}{emptyStar}</text>;
    case 2:
      return <text>{star}{star}{emptyStar}{emptyStar}{emptyStar}</text>;
    case 1:
      return <text>{star}{emptyStar}{emptyStar}{emptyStar}{emptyStar}</text>;
  }
};

export default starRating;

// const star = <i className="fa fa-star" aria-hidden="true"></i>;
//   const emptyStar = <i className="fa fa-star-o" aria-hidden="true"></i>;
