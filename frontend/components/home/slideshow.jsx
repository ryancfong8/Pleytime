import React from 'react';
import SearchBar from '../greeting/search_bar';

class SlideShow extends React.Component {
  constructor (props) {
    super(props);
  }

  componentDidMount(){
    this.animate();
  }

 componentWillUnmount(animation){
    clearInterval(this.animation);
  }

 animate(){
    $("#slideshow > div:gt(0)").hide();
    this.animation = setInterval(function() {
      $('#slideshow > div:first')
        .fadeOut(2000)
        .next()
        .fadeIn(1000)
        .end()
        .appendTo('#slideshow');
    },  5000);
  }

 render(){
    return (
        <div id="slideshow">
          <div className="slide-border">
            <img className="slide-image" src="http://res.cloudinary.com/ryancfong8/image/upload/v1490289454/IMG_2619_gwrrtv.jpg"/>
          </div>
          <div className="slide-border">
            <img className="slide-image" src="http://res.cloudinary.com/ryancfong8/image/upload/v1490289472/IMG_2208_pslane.jpg"/>
          </div>
          <div className="slide-border">
            <img className="slide-image" src="http://res.cloudinary.com/ryancfong8/image/upload/v1490289490/IMG_3315_omccbb.jpg"/>
          </div>
          <div className="slide-border">
            <img className="slide-image" src="http://res.cloudinary.com/ryancfong8/image/upload/v1490289512/IMG_2620_lsakfx.jpg"/>
          </div>
        </div>
    );
  }
}

export default SlideShow;
