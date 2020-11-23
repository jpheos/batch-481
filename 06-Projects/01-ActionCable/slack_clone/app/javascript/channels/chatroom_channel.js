import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.querySelector('#messages');

  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;
    console.log('Create subscription');
    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        messagesContainer.insertAdjacentHTML('beforeend', data);
      },
    });
  }
}

export { initChatroomCable };
