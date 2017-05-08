import React from 'react';
import GreetingContainer from './greeting/greeting_container';

const App = ({ children, location }) => (
  <div>
    <GreetingContainer location = {location.pathname}/>
    { children }
  </div>
);

export default App;
// <div className = "Footer">
//   <a href="https://github.com/ryancfong8/Pleytime">
//     <img className="Github" src="http://res.cloudinary.com/ryancfong8/image/upload/v1494284221/GitHub-Mark-64px_k8oysy.png" alt="Github" />
//   </a>
//   <a href="https://www.linkedin.com/in/ryanfong8">
//     <img className="LinkedIn" src="http://res.cloudinary.com/ryancfong8/image/upload/v1494284174/In-Black-128px-TM_ybwajw.png" alt="LinkedIn" />
//   </a>
// </div>

// className="fa-github">
// className="fa-linkedin">

// const customStyles = {
//   content : {
//     top                   : '50%',
//     left                  : '50%',
//     right                 : 'auto',
//     bottom                : 'auto',
//     marginRight           : '-50%',
//     transform             : 'translate(-50%, -50%)'
//   }
// };
//
// class App extends React.Component {
//   constructor() {
//     super();
//
//     this.state = {
//       modalIsOpen: false
//     };
//
//     this.openModal = this.openModal.bind(this);
//     this.afterOpenModal = this.afterOpenModal.bind(this);
//     this.closeModal = this.closeModal.bind(this);
//   }
//
//   openModal() {
//     this.setState({modalIsOpen: true});
//   }
//
//   afterOpenModal() {
//     // references are now sync'd and can be accessed.
//     this.refs.subtitle.style.color = '#f00';
//   }
//
//   closeModal() {
//     this.setState({modalIsOpen: false});
//   }
//
//   render() {
//     return (
//       <div>
//         <button onClick={this.openModal}>Open Modal</button>
//         <Modal
//           isOpen={this.state.modalIsOpen}
//           onAfterOpen={this.afterOpenModal}
//           onRequestClose={this.closeModal}
//           style={customStyles}
//           contentLabel="Example Modal"
//         >
//
//           <h2 ref="subtitle">Hello</h2>
//           <button onClick={this.closeModal}>close</button>
//           <div>I am a modal</div>
//           <form>
//             <input />
//             <button>tab navigation</button>
//             <button>stays</button>
//             <button>inside</button>
//             <button>the modal</button>
//           </form>
//         </Modal>
//       </div>
//     );
//   }
// }
