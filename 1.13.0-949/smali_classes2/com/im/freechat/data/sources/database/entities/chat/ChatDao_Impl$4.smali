.class Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$4;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
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
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;",
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

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$4;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;)V
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
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 3
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 4
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getAvatar()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 7
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$4;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getType()Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/im/freechat/data/sources/database/Converters;->fromType(Lcom/im/freechat/shared/entities/chat/Chat$Type;)I

    move-result v0

    const/4 v1, 0x4

    int-to-long v2, v0

    .line 10
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 11
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getLastReadMessageId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_2

    .line 12
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getLastReadMessageId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 14
    :goto_2
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getLastChatMessageId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_3

    .line 15
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 16
    :cond_3
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getLastChatMessageId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 17
    :goto_3
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getLastSyncMessageId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_4

    .line 18
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 19
    :cond_4
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getLastSyncMessageId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_4
    const/16 v0, 0x8

    .line 20
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getUnreadCount()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 21
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getPinnedMessageId()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_5

    .line 22
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    .line 23
    :cond_5
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getPinnedMessageId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 24
    :goto_5
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getPinnedUserId()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_6

    .line 25
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    .line 26
    :cond_6
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getPinnedUserId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 27
    :goto_6
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getPinnedTime()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_7

    .line 28
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_7

    .line 29
    :cond_7
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getPinnedTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 30
    :goto_7
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->isPublic()Z

    move-result v0

    const/16 v1, 0xc

    int-to-long v2, v0

    .line 31
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 32
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getShowHistoryToNewMembers()Z

    move-result v0

    const/16 v1, 0xd

    int-to-long v2, v0

    .line 33
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 34
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getInvitationLink()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    if-nez v0, :cond_8

    .line 35
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_8

    .line 36
    :cond_8
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getInvitationLink()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 37
    :goto_8
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getDraftMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    if-nez v0, :cond_9

    .line 38
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_9

    .line 39
    :cond_9
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getDraftMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_9
    const/16 v0, 0x10

    .line 40
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getId()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

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
    check-cast p2, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$4;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `chat` SET `chat_id` = ?,`title` = ?,`avatar` = ?,`type` = ?,`opponent_last_read_message_id` = ?,`last_message_id` = ?,`last_sync_message_id` = ?,`unread_count` = ?,`pinned_message_id` = ?,`pinned_user_id` = ?,`pinned_time` = ?,`is_public` = ?,`history_new_member` = ?,`invitation_link` = ?,`draft_message` = ? WHERE `chat_id` = ?"

    return-object v0
.end method
