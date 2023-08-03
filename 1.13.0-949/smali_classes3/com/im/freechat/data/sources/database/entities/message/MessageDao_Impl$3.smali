.class Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "MessageDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;


# direct methods
.method constructor <init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomDatabase;)V
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

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$3;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;)V
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
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getMessageId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 3
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getSenderId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 4
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getContent()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x4

    .line 7
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getChatId()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 8
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getSendTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 9
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$3;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getMessageStatus()Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/im/freechat/data/sources/database/Converters;->messageStatusToInt(Lcom/im/freechat/shared/entities/message/Message$MessageStatus;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_1

    .line 10
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 12
    :goto_1
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getEditTime()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_2

    .line 13
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getEditTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 15
    :goto_2
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getForwardSenderId()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_3

    .line 16
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 17
    :cond_3
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getForwardSenderId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 18
    :goto_3
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getForwardMessageId()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_4

    .line 19
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 20
    :cond_4
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getForwardMessageId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 21
    :goto_4
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getForwardChatId()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_5

    .line 22
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    .line 23
    :cond_5
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getForwardChatId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 24
    :goto_5
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getReplyToMessageId()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_6

    .line 25
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    .line 26
    :cond_6
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getReplyToMessageId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 27
    :goto_6
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getMentionAll()Z

    move-result v0

    const/16 v1, 0xc

    int-to-long v2, v0

    .line 28
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 29
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$3;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getMentions()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/im/freechat/data/sources/database/Converters;->stringMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    if-nez v0, :cond_7

    .line 30
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_7

    .line 31
    :cond_7
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 32
    :goto_7
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$3;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getStyles()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/im/freechat/data/sources/database/Converters;->messageStylesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    if-nez v0, :cond_8

    .line 33
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_8

    .line 34
    :cond_8
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 35
    :goto_8
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->isService()Z

    move-result v0

    const/16 v1, 0xf

    int-to-long v2, v0

    .line 36
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x10

    .line 37
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getMessageId()J

    move-result-wide v1

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
    check-cast p2, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `message` SET `message_id` = ?,`sender_id` = ?,`content` = ?,`parent_chat_id` = ?,`send_time` = ?,`status` = ?,`edit_time` = ?,`forward_sender_id` = ?,`forward_message_id` = ?,`forward_chat_id` = ?,`reply_to_message_id` = ?,`mention_all` = ?,`mentions` = ?,`styles` = ?,`is_service` = ? WHERE `message_id` = ?"

    return-object v0
.end method
