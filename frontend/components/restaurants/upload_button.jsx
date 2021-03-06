import React from 'react';
import Dropzone from 'react-dropzone';
import request from 'superagent';
import Modal from 'react-modal';
import { hashHistory } from 'react-router';
import ModalStyle from '../sessions/modal_style';

const CLOUDINARY_UPLOAD_PRESET = 'jmpbzyij';
const CLOUDINARY_UPLOAD_URL = 'https://api.cloudinary.com/v1_1/ryancfong8/image/upload';

class UploadButton extends React.Component {
  constructor (props) {
    super(props);

    this.state = {
      modalOpen: false,
      url:"",
      caption: "",
      user_id: this.props.currentUser.id
    };
    this.openModal = this.openModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
    this.update = this.update.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
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

  update(field) {
    return (e) => {
      this.setState({
        [field]: e.target.value
      });
    };
  }


  onImageDrop(files) {
    this.setState({
      uploadedFile: files[0]
    });

    this.handleImageUpload(files[0]);
  }

  handleImageUpload(file) {
    let upload = request.post(CLOUDINARY_UPLOAD_URL)
                        .field('upload_preset', CLOUDINARY_UPLOAD_PRESET)
                        .field('file', file);

    upload.end((err, response) => {
      if (err) {
        console.error(err);
      }

      if (response.body.secure_url !== '') {
        this.setState({
          url: response.body.secure_url
        });
      }
    });
  }

  handleSubmit(e) {
    const url = this.state.url;
    const user_id = parseInt(this.state.user_id);
    const restaurant_id = parseInt(this.props.restaurantId);
    // const review_id = this.props.reviewId;
    e.preventDefault();
    this.props.createImage({
      restaurant_id,
      user_id,
      url
    });
    this.closeModal();
    this.setState({
      modalOpen: false,
      url:"",
      caption: "",
      user_id: this.props.currentUser.id,
      restaurant_id: this.props.restaurantId
    });
  }


  render() {
    return (
      <div>
        <button  className = "Upload-Button" onClick={this.openModal}>Add Photo</button>

        <Modal
          contentLabel="Modal"
          isOpen = {this.state.modalOpen}
          onRequestClose={this.closeModal}
          style={ModalStyle}>

          <form className="UploadForm"onSubmit={this.handleSubmit}>
            <input
              type="hidden"
              value={this.state.url}
              onChange={this.update("url")}
            />

            <div>
              { this.state.url === '' ? null :
                <div>
                  <text>Preview</text>
                  <img className="preview" src={this.state.url} />
                </div>}
            </div>
            <br />
            <div>
              <Dropzone
                multiple={false}
                accept="image/*"
                className="image-form-dropzone"
                onDrop={this.onImageDrop.bind(this)}
              >
                <p>Drop an image or click to select a file to upload.</p>
              </Dropzone>
            </div>
            <br />
            <br />


            <br />
            <br />
            <input
              className="submit-upload"
            type="submit"
            value="Upload"
            />

          </form>
        </Modal>
      </div>
    );
  }
}
export default UploadButton;

// upload (e) {
//   e.preventDefault();
//   window.cloudinary.openUploadWidget(
//     window.cloudinary_options,
//     (error, images) => {
//       if (error === null) {
//         this.props.postImage(images[0].url);
//       }
//     }
//   );
// }
//   render () {
//     return (
//       <button onClick={this.upload}>Add Picture</button>
//     );
//   }
// }

// <input
//   type="text"
//   placeholder="Insert Caption Here"
//   value={this.state.caption}
//   onChange={this.update("caption")}
// />
