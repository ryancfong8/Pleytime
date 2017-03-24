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
            <img className="slide-image" src="http://res.cloudinary.com/ryancfong8/image/upload/v1490348070/IMG_3694_ckrqgu.jpg"/>
          </div>
          <div className="slide-border">
            <img className="slide-image" src="http://res.cloudinary.com/ryancfong8/image/upload/v1490289472/IMG_2208_pslane.jpg"/>
          </div>
          <div className="slide-border">
            <img className="slide-image" src="http://res.cloudinary.com/ryancfong8/image/upload/v1490346694/brendas-003_e89sie.jpg"/>
          </div>
          <div className="slide-border">
            <img className="slide-image" src="http://res.cloudinary.com/ryancfong8/image/upload/v1490346857/aina-1010595_vlyxpp.jpg"/>
          </div>
        </div>
    );
  }
}

export default SlideShow;
