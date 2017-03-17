import React from 'react';
import Slider from 'react-slick';
import Coverflow from 'react-coverflow';

class PhotoSlider extends React.Component {
  constructor (props) {
    super(props);
  }

  render() {
    const settings = {
      infinite: true,
      dots: true,
      speed: 500,
      slidesToShow: 3,
      slidesToScroll: 1,
      arrows: true
    };
    return (
      <Slider className = "slider"{...settings}>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick-theme.min.css" />
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.min.css" />
        {this.props.photos.map((photo) => (
          <div>
            <img className="slider-images" key = {photo.id} src={photo.url} />
          </div>
          ))}
      </Slider>
    );
  }
}

export default PhotoSlider;




// <Coverflow
//   width={500}
//   height={300}
//   displayQuantityOfSide={2}
//   navigation={true}
//   enableHeading={false}
//   >
//   {this.props.photos.map((photo) => (
//     <img className="slider-images" key = {photo.id} src={photo.url} />
//     ))}
// </Coverflow>
