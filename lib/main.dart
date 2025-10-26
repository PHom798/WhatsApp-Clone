import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(WhatsAppClone());
}

class WhatsAppClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    ChatsScreen(),
    UpdatesScreen(),
    CommunitiesScreen(),
    CallsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp',
            style: TextStyle(
                color: Color(0xFF25D366),
                fontWeight: FontWeight.bold,
                fontSize: 22
            )
        ),
        backgroundColor: Colors.white,
        elevation: 0.5,
        shadowColor: Colors.grey[200],
        actions: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.camera, color: Colors.black87, size: 20),
            onPressed: () {},
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.magnifyingGlass, color: Colors.black87, size: 20),
            onPressed: () {},
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.ellipsisVertical, color: Colors.black87, size: 20),
            onPressed: () {},
          ),
        ],
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Color(0xFF25D366),
        unselectedItemColor: Colors.grey[600],
        selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        unselectedLabelStyle: TextStyle(fontSize: 12),
        items: [
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                FaIcon(
                  FontAwesomeIcons.comment,
                  size: 20,
                ),
                if (_currentIndex == 0)
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Color(0xFF25D366),
                        shape: BoxShape.circle,
                      ),
                      constraints: BoxConstraints(
                        minWidth: 16,
                        minHeight: 16,
                      ),
                      child: Text(
                        '5',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
              ],
            ),
            activeIcon: Stack(
              children: [
                FaIcon(
                  FontAwesomeIcons.solidComment,
                  size: 20,
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Color(0xFF25D366),
                      shape: BoxShape.circle,
                    ),
                    constraints: BoxConstraints(
                      minWidth: 16,
                      minHeight: 16,
                    ),
                    child: Text(
                      '5',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.circleNotch,
              size: 20,
            ),
            activeIcon: FaIcon(
              FontAwesomeIcons.solidCircle,
              size: 20,
            ),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                FaIcon(
                  FontAwesomeIcons.users,
                  size: 20,
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Color(0xFF25D366),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Stack(
              children: [
                FaIcon(
                  FontAwesomeIcons.usersGear,
                  size: 20,
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Color(0xFF25D366),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.phone,
              size: 20,
            ),
            activeIcon: FaIcon(
              FontAwesomeIcons.phone,
              size: 20,
            ),
            label: 'Calls',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF25D366),
        child: FaIcon(FontAwesomeIcons.plus, color: Colors.white, size: 20),
      ),
    );
  }
}

class ChatsScreen extends StatelessWidget {
  final List<ChatData> chats = [
    ChatData(
      name: '+977',
      // name: '+977 986-1966510 (You)',
      message: '✓✓ Account Number is...',
      time: '1:40 pm',
      avatar: 'assets/profile1.jpg',
      unreadCount: 0,
      isVerified: true,
    ),
    ChatData(
      name: 'Google Cloud Arcade - 2025 (3)',
      message: 'Announcements  ▶  🔴 Update about...',
      time: '',
      avatar: 'assets/google_cloud.jpg',
      unreadCount: 179,
      isGroup: true,
    ),
    ChatData(
      name: '+977 986-6116874',
      message: 'You reacted ❤️ to "📄 20250706_1008...',
      time: '06/07/2025',
      avatar: 'assets/profile2.jpg',
      unreadCount: 0,
    ),
    ChatData(
      name: 'SPIT',
      message: '~ Er. Santosh Shrestha: 📄 SPIT Co...',
      time: '05/07/2025',
      avatar: 'assets/spit.jpg',
      unreadCount: 6,
    ),
    ChatData(
      name: 'Toolsmandu.com',
      message: 'okay',
      time: '30/06/2025',
      avatar: 'assets/toolsmandu.jpg',
      unreadCount: 0,
    ),
    ChatData(
      name: 'Cheap Mandu',
      message: 'Thankds...',
      time: '29/06/2025',
      avatar: 'assets/cheapmandu.jpg',
      unreadCount: 0,
    ),
    ChatData(
      name: '+977 980-8270280',
      message: '🚀 Master RCC Structural Design in...',
      time: '24/06/2025',
      avatar: 'assets/neac.jpg',
      unreadCount: 3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Archived section
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: FaIcon(
                  FontAwesomeIcons.boxArchive,
                  color: Colors.grey[600],
                  size: 18,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Text(
                  'Archived',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                '1',
                style: TextStyle(
                  color: Color(0xFF25D366),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context, index) {
              final chat = chats[index];
              return ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: _getAvatarColor(index),
                  child: Text(
                    chat.name[0].toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                title: Text(
                  chat.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: Text(
                    chat.message,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (chat.time.isNotEmpty)
                      Text(
                        chat.time,
                        style: TextStyle(
                          color: chat.unreadCount > 0 ? Color(0xFF25D366) : Colors.grey[600],
                          fontSize: 12,
                        ),
                      ),
                    if (chat.unreadCount > 0)
                      Container(
                        margin: EdgeInsets.only(top: 4),
                        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: Color(0xFF25D366),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        constraints: BoxConstraints(
                          minWidth: 20,
                          minHeight: 20,
                        ),
                        child: Text(
                          chat.unreadCount.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatScreen(chatData: chat),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Color _getAvatarColor(int index) {
    List<Color> colors = [
      Color(0xFF25D366),
      Color(0xFF075E54),
      Color(0xFF128C7E),
      Color(0xFF34B7F1),
      Color(0xFFECE5DD),
      Color(0xFFDCF8C6),
      Color(0xFF34B7F1),
    ];
    return colors[index % colors.length];
  }
}

class ChatScreen extends StatefulWidget {
  final ChatData chatData;

  ChatScreen({required this.chatData});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final List<Message> messages = [
    Message(text: 'Hey! How are you doing?', isMe: false, time: '12:30'),
    Message(text: 'I\'m good, thanks! How about you?', isMe: true, time: '12:32'),
    Message(text: 'Doing well. Are we still on for lunch tomorrow?', isMe: false, time: '12:35'),
    Message(text: 'Yes, absolutely! Same place as usual?', isMe: true, time: '12:36'),
    Message(text: 'Perfect! See you at 1 PM', isMe: false, time: '12:37'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF25D366),
        leading: IconButton(
          icon: FaIcon(FontAwesomeIcons.arrowLeft, color: Colors.white, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: Color(0xFF25D366),
              child: Text(
                widget.chatData.name[0].toUpperCase(),
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chatData.name,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                // Text(
                //   'last seen today at 12:30',
                //   style: TextStyle(color: Colors.white70, fontSize: 12),
                // ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.video, color: Colors.white, size: 20),
            onPressed: () {},
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.phone, color: Colors.white, size: 18),
            onPressed: () {},
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.ellipsisVertical, color: Colors.white, size: 20),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/chat_background.png'),
                  fit: BoxFit.cover,
                ),
                color: Color(0xFFE5DDD5),
              ),
              child: ListView.builder(
                padding: EdgeInsets.all(8),
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final message = messages[index];
                  return MessageBubble(message: message);
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.faceSmile, color: Colors.grey, size: 20),
                          onPressed: () {},
                        ),
                        Expanded(
                          child: TextField(
                            controller: _messageController,
                            decoration: InputDecoration(
                              hintText: 'Type a message',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.paperclip, color: Colors.grey, size: 18),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.camera, color: Colors.grey, size: 18),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 8),
                FloatingActionButton(
                  mini: true,
                  backgroundColor: Color(0xFF25D366),
                  onPressed: () {
                    if (_messageController.text.isNotEmpty) {
                      setState(() {
                        messages.add(Message(
                          text: _messageController.text,
                          isMe: true,
                          time: TimeOfDay.now().format(context),
                        ));
                        _messageController.clear();
                      });
                    }
                  },
                  child: FaIcon(FontAwesomeIcons.paperPlane, size: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final Message message;

  MessageBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: message.isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: message.isMe ? Color(0xFFDCF8C6) : Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              message.text,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 4),
            Text(
              message.time,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UpdatesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        // Status section
        Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey[300],
                  child: Icon(Icons.person, color: Colors.grey[600], size: 30),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Color(0xFF25D366),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: FaIcon(
                      FontAwesomeIcons.plus,
                      color: Colors.white,
                      size: 12,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My status',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Tap to add status update',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            FaIcon(FontAwesomeIcons.camera, color: Color(0xFF25D366), size: 20),
            SizedBox(width: 8),
            FaIcon(FontAwesomeIcons.pen, color: Color(0xFF25D366), size: 20),
          ],
        ),
        SizedBox(height: 24),
        Text(
          'Recent updates',
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 12),
        // Recent status updates would go here
        Center(
          child: Text(
            'No recent updates',
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}

class CommunitiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFF25D366).withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: FaIcon(
                    FontAwesomeIcons.users,
                    color: Color(0xFF25D366),
                    size: 28,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Stay connected with a community',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),
                Text(
                  'Communities bring members together in topic-based groups, and make it easy to get admin announcements. Any community you\'re added to will appear here.',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See example communities',
                        style: TextStyle(
                          color: Color(0xFF25D366),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Text(' > ', style: TextStyle(color: Color(0xFF25D366))),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 24),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF25D366),
                padding: EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Text(
                'Start your community',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CallsScreen extends StatelessWidget {
  final List<CallData> calls = [
    CallData(
      name: 'John Doe',
      time: '12:30',
      type: CallType.incoming,
      avatar: 'J',
    ),
    CallData(
      name: 'Sarah Wilson',
      time: 'Yesterday',
      type: CallType.outgoing,
      avatar: 'S',
    ),
    CallData(
      name: 'Mom',
      time: 'Tuesday',
      type: CallType.missed,
      avatar: 'M',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: calls.length,
      itemBuilder: (context, index) {
        final call = calls[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Color(0xFF25D366),
            child: Text(
              call.avatar,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          title: Text(call.name),
          subtitle: Row(
            children: [
              FaIcon(
                call.type == CallType.incoming
                    ? FontAwesomeIcons.phoneFlip
                    : call.type == CallType.outgoing
                    ? FontAwesomeIcons.phone
                    : FontAwesomeIcons.phoneSlash,
                color: call.type == CallType.missed ? Colors.red : Colors.green,
                size: 14,
              ),
              SizedBox(width: 4),
              Text(call.time),
            ],
          ),
          trailing: FaIcon(
            FontAwesomeIcons.phone,
            color: Color(0xFF25D366),
            size: 20,
          ),
        );
      },
    );
  }
}

class ChatData {
  final String name;
  final String message;
  final String time;
  final String avatar;
  final int unreadCount;
  final bool isVerified;
  final bool isGroup;

  ChatData({
    required this.name,
    required this.message,
    required this.time,
    required this.avatar,
    required this.unreadCount,
    this.isVerified = false,
    this.isGroup = false,
  });
}

class Message {
  final String text;
  final bool isMe;
  final String time;

  Message({
    required this.text,
    required this.isMe,
    required this.time,
  });
}

class CallData {
  final String name;
  final String time;
  final CallType type;
  final String avatar;

  CallData({
    required this.name,
    required this.time,
    required this.type,
    required this.avatar,
  });
}

enum CallType { incoming, outgoing, missed }