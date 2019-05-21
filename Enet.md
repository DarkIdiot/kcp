```asm
    typedef struct _ENetProtocolHeader{
        enet_uint16 peerID;
        enet_uint16 sentTime;
    } ENET_PACKED ENetProtocolHeader;
    
    typedef struct _ENetProtocolCommandHeader{
        enet_uint8 command;
        enet_uint8 channelID;
        enet_uint16 reliableSequenceNumber;
    } ENET_PACKED ENetProtocolCommandHeader;
```