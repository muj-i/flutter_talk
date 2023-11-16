import 'package:flutter/material.dart';

import '../../../../data/model/message_model.dart';

TextEditingController userMessage = TextEditingController();

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.userName});

  // final User user;
  final String userName;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Message message, bool isMe) {
    final Container msg = Container(
      constraints: BoxConstraints(
        minWidth: 0,
        // maxWidth: MediaQuery.of(context).size.width * 0.75,
        maxWidth:  MediaQuery.of(context).size.width * 0.75,
      ),
      margin: isMe
          ? const EdgeInsets.only(
              top: 8,
              bottom: 8,
              left: 65,
              right: 15,
            )
          : const EdgeInsets.only(
              top: 8,
              bottom: 8,
              left: 15,
              // right: 80,
            ),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      decoration: BoxDecoration(
        color: isMe
            ? const Color.fromARGB(255, 32, 160, 144)
            : const Color.fromARGB(255, 242, 247, 251),
        borderRadius: isMe
            ? const BorderRadius.only(
                topLeft: Radius.circular(25),
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              )
            : const BorderRadius.only(
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /*   Text(
            message.time,
            style: const TextStyle(
              color: Colors.blueGrey,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),*/
          /*   const SizedBox(
            height: 8,
          ),*/
          Text(
            message.text,
            style: TextStyle(
              color: isMe ? Colors.white : Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );

    if (isMe) {
      return msg;
    }
    return Row(
      children: [
        msg,
        //button for favorite icon
        !isMe
            ? IconButton(
                onPressed: () {
                  message.isLiked = !message.isLiked;
                  print(' is like ${message.isLiked}');
                  setState(() {});
                },
                icon: message.isLiked
                    ? const Icon(Icons.favorite)
                    : const Icon(Icons.favorite_border),
                color: message.isLiked ? Colors.redAccent : Colors.blueGrey,
              )
            : Text(''),
      ],
    );
  }

//method
  _buildMessageComposer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 70.0,
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.photo,
                size: 25,
                color: Theme.of(context).primaryColor,
              )),
          Expanded(
              child: TextField(
            controller: userMessage,
            textCapitalization:
                TextCapitalization.sentences, // first word of sentence
            decoration: const InputDecoration.collapsed(
              //to disappear underlie form below textField, use InputDecoration.collapsed
              hintText: 'Send a message...',
            ),
          )),
          IconButton(
              onPressed: () {
                // messages[1].text = userMessage.text;
                messages.add(Message(
                    sender: currentUser,
                    time: '${DateTime.now().hour}',
                    text: userMessage.text,
                    isLiked: false,
                    unread: false));
                setState(() {});
                userMessage.clear();
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Message send')));
              },
              icon: Icon(
                Icons.send,
                size: 25,
                color: Theme.of(context).primaryColor,
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          // widget.user.name,
          widget.userName,
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                /*  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),*/
                ),
                child: ListView.builder(
                  reverse: false,
                  //chat screen should display data bottom to top, that means reverse
                  padding: const EdgeInsets.only(top: 15.0),
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final Message message = messages[index];
                    final bool isMe = message.sender.id == currentUser.id;
                    return Align(
                      alignment: Alignment.centerRight,
                      child: _buildMessage(message, isMe),
                    );
                  },
                ),
              ),
            ),
            //
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }
}
