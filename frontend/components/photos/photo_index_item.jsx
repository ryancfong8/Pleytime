import React from 'react';
import Modal from 'react-modal';
import ModalPhotoStyle from './modal_photo_style';

class PhotoIndexItem extends React.Component {
  constructor (props) {
    super (props);

    this.state = {
      modalOpen: false,
    };
    this.openModal = this.openModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
  }

  closeModal() {
    this.setState({
      modalOpen: false
    });
  }

  openModal() {
    return this.setState({
      modalOpen: true
    });
  }

  render () {
    return(
      <div>
        <img src={this.props.photo.url} onClick={this.openModal} className="Photo"  />

        <Modal
          contentLabel="Modal"
          isOpen = {this.state.modalOpen}
          onRequestClose={this.closeModal}
          style={ModalPhotoStyle}
          >
          <img className="BigPic" src={this.props.photo.url} />
        </Modal>


      </div>
    );
  }
}

export default PhotoIndexItem;
