.class Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "FriendStatusDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;


# direct methods
.method constructor <init>(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Landroidx/room/RoomDatabase;)V
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

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$3;->this$0:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;)V
    .locals 3
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
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->getUserId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 3
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->getInvitedTime()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 4
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->getReason()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 7
    :goto_0
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->getStatus()Lcom/im/freechat/shared/entities/chat/Status;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 8
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$3;->this$0:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;

    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->getStatus()Lcom/im/freechat/shared/entities/chat/Status;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Lcom/im/freechat/shared/entities/chat/Status;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x5

    .line 10
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->getUserId()I

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
    check-cast p2, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `friend_status` SET `target_user_id` = ?,`invited_time` = ?,`reason` = ?,`status` = ? WHERE `target_user_id` = ?"

    return-object v0
.end method
