.class Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$2;
.super Landroidx/room/EntityInsertionAdapter;
.source "ChatDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;


# direct methods
.method constructor <init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$2;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 3
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 4
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->getAvatar()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 7
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$2;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->getType()Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/im/freechat/data/sources/database/Converters;->fromType(Lcom/im/freechat/shared/entities/chat/Chat$Type;)I

    move-result v0

    const/4 v1, 0x4

    int-to-long v2, v0

    .line 10
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 11
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->getLastReadMessageId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_2

    .line 12
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->getLastReadMessageId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 14
    :goto_2
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->getLastChatMessageId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_3

    .line 15
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 16
    :cond_3
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->getLastChatMessageId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_3
    const/4 v0, 0x7

    .line 17
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->getUnreadCount()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 18
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->getPinnedMessageId()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_4

    .line 19
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 20
    :cond_4
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->getPinnedMessageId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 21
    :goto_4
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->getPinnedUserId()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_5

    .line 22
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    .line 23
    :cond_5
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->getPinnedUserId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 24
    :goto_5
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->isPublic()Z

    move-result v0

    const/16 v1, 0xa

    int-to-long v2, v0

    .line 25
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 26
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->getShowHistoryToNewMembers()Z

    move-result v0

    const/16 v1, 0xb

    int-to-long v2, v0

    .line 27
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 28
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->getInvitationLink()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_6

    .line 29
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    .line 30
    :cond_6
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->getInvitationLink()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_6
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `chat` (`chat_id`,`title`,`avatar`,`type`,`opponent_last_read_message_id`,`last_message_id`,`unread_count`,`pinned_message_id`,`pinned_user_id`,`is_public`,`history_new_member`,`invitation_link`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
