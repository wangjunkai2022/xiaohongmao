.class Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "MemberDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;


# direct methods
.method constructor <init>(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;Landroidx/room/RoomDatabase;)V
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

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$3;->this$0:Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;)V
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
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;->getContactId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 3
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;->getChatId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 4
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$3;->this$0:Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;->getRole()Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/im/freechat/data/sources/database/Converters;->fromRole(Lcom/im/freechat/shared/entities/chat/ChatMember$Role;)I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    .line 5
    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 6
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$3;->this$0:Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;->getStatus()Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/im/freechat/data/sources/database/Converters;->fromStatus(Lcom/im/freechat/shared/entities/chat/ChatMember$Status;)I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    .line 7
    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 8
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;->getChatId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 9
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;->getContactId()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x6

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
    check-cast p2, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `member` SET `user_id` = ?,`chat_id` = ?,`role` = ?,`status` = ? WHERE `chat_id` = ? AND `user_id` = ?"

    return-object v0
.end method
