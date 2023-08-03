.class public abstract Lcom/im/freechat/data/sources/database/MainDatabase;
.super Landroidx/room/RoomDatabase;
.source "MainDatabase.kt"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;,
        Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;,
        Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;,
        Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;,
        Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;,
        Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;,
        Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;
    }
    version = 0x2b
    views = {
        Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;
    }
.end annotation

.annotation build Landroidx/room/TypeConverters;
    value = {
        Lcom/im/freechat/data/sources/database/Converters;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H&J\u0008\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\t\u001a\u00020\nH&J\u0008\u0010\u000b\u001a\u00020\u000cH&J\u0008\u0010\r\u001a\u00020\u000eH&J\u0008\u0010\u000f\u001a\u00020\u0010H&\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/MainDatabase;",
        "Landroidx/room/RoomDatabase;",
        "()V",
        "attachmentDao",
        "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;",
        "chatDao",
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;",
        "downloadDao",
        "Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;",
        "friendStatusDao",
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;",
        "memberDao",
        "Lcom/im/freechat/data/sources/database/entities/member/MemberDao;",
        "messageDao",
        "Lcom/im/freechat/data/sources/database/entities/message/MessageDao;",
        "userDao",
        "Lcom/im/freechat/data/sources/database/entities/contact/UserDao;",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract attachmentDao()Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract chatDao()Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract downloadDao()Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract friendStatusDao()Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract memberDao()Lcom/im/freechat/data/sources/database/entities/member/MemberDao;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract messageDao()Lcom/im/freechat/data/sources/database/entities/message/MessageDao;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract userDao()Lcom/im/freechat/data/sources/database/entities/contact/UserDao;
    .annotation build Lm8/g;
    .end annotation
.end method
