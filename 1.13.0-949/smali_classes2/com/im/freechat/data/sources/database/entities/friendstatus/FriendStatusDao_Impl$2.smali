.class Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$2;
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

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$2;->this$0:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;)V
    .locals 2
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

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

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

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `friend_status` WHERE `target_user_id` = ?"

    return-object v0
.end method
