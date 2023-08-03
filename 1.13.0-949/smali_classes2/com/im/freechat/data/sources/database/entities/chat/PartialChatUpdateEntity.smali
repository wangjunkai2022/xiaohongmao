.class public final Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;
.super Ljava/lang/Object;
.source "ChatEntity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008.\u0008\u0086\u0008\u0018\u00002\u00020\u0001Bs\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0013J\t\u0010,\u001a\u00020\u0003H\u00c6\u0003J\t\u0010-\u001a\u00020\u0010H\u00c6\u0003J\t\u0010.\u001a\u00020\u0010H\u00c6\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u00102\u001a\u00020\u0008H\u00c6\u0003J\u0010\u00103\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001fJ\u0010\u00104\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001fJ\t\u00105\u001a\u00020\u0003H\u00c6\u0003J\u0010\u00106\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001fJ\u0010\u00107\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010$J\u0094\u0001\u00108\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u00109J\u0013\u0010:\u001a\u00020\u00102\u0008\u0010;\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010<\u001a\u00020\u0003H\u00d6\u0001J\t\u0010=\u001a\u00020\u0005H\u00d6\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R \u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015\"\u0004\u0008\u0019\u0010\u001aR\u001e\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010 \u001a\u0004\u0008\u001e\u0010\u001fR\u001a\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010 \u001a\u0004\u0008!\u0010\u001fR\u001a\u0010\r\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010 \u001a\u0004\u0008\"\u0010\u001fR\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010%\u001a\u0004\u0008#\u0010$R\u001e\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u001b\"\u0004\u0008\'\u0010\u001dR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u0015R\u0016\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0016\u0010\u000c\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u0017\u00a8\u0006>"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;",
        "",
        "id",
        "",
        "title",
        "",
        "avatar",
        "type",
        "Lcom/im/freechat/shared/entities/chat/Chat$Type;",
        "lastReadMessageId",
        "",
        "lastChatMessageId",
        "unreadCount",
        "pinnedMessageId",
        "pinnedUserId",
        "isPublic",
        "",
        "showHistoryToNewMembers",
        "invitationLink",
        "(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;ZZLjava/lang/String;)V",
        "getAvatar",
        "()Ljava/lang/String;",
        "getId",
        "()I",
        "getInvitationLink",
        "setInvitationLink",
        "(Ljava/lang/String;)V",
        "()Z",
        "setPublic",
        "(Z)V",
        "getLastChatMessageId",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getLastReadMessageId",
        "getPinnedMessageId",
        "getPinnedUserId",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getShowHistoryToNewMembers",
        "setShowHistoryToNewMembers",
        "getTitle",
        "getType",
        "()Lcom/im/freechat/shared/entities/chat/Chat$Type;",
        "getUnreadCount",
        "component1",
        "component10",
        "component11",
        "component12",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;ZZLjava/lang/String;)Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;",
        "equals",
        "other",
        "hashCode",
        "toString",
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


# instance fields
.field private final avatar:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "avatar"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final id:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "chat_id"
    .end annotation
.end field

.field private invitationLink:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "invitation_link"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private isPublic:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "is_public"
    .end annotation
.end field

.field private final lastChatMessageId:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        name = "last_message_id"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final lastReadMessageId:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        name = "opponent_last_read_message_id"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final pinnedMessageId:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        name = "pinned_message_id"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final pinnedUserId:Ljava/lang/Integer;
    .annotation build Landroidx/room/ColumnInfo;
        name = "pinned_user_id"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private showHistoryToNewMembers:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "history_new_member"
    .end annotation
.end field

.field private final title:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "title"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final type:Lcom/im/freechat/shared/entities/chat/Chat$Type;
    .annotation build Landroidx/room/ColumnInfo;
        name = "type"
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final unreadCount:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "unread_count"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;ZZLjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lcom/im/freechat/shared/entities/chat/Chat$Type;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->id:I

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->title:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->avatar:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->type:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    .line 6
    iput-object p5, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->lastReadMessageId:Ljava/lang/Long;

    .line 7
    iput-object p6, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->lastChatMessageId:Ljava/lang/Long;

    .line 8
    iput p7, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->unreadCount:I

    .line 9
    iput-object p8, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->pinnedMessageId:Ljava/lang/Long;

    .line 10
    iput-object p9, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->pinnedUserId:Ljava/lang/Integer;

    .line 11
    iput-boolean p10, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->isPublic:Z

    .line 12
    iput-boolean p11, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->showHistoryToNewMembers:Z

    .line 13
    iput-object p12, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->invitationLink:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;ZZLjava/lang/String;ILjava/lang/Object;)Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->id:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->title:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->avatar:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->type:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->lastReadMessageId:Ljava/lang/Long;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->lastChatMessageId:Ljava/lang/Long;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->unreadCount:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->pinnedMessageId:Ljava/lang/Long;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->pinnedUserId:Ljava/lang/Integer;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->isPublic:Z

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-boolean v12, v0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->showHistoryToNewMembers:Z

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->invitationLink:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v1, p12

    :goto_b
    move p1, v2

    move-object p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move-object/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->copy(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;ZZLjava/lang/String;)Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->id:I

    return v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->isPublic:Z

    return v0
.end method

.method public final component11()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->showHistoryToNewMembers:Z

    return v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->invitationLink:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/im/freechat/shared/entities/chat/Chat$Type;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->type:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    return-object v0
.end method

.method public final component5()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->lastReadMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final component6()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->lastChatMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->unreadCount:I

    return v0
.end method

.method public final component8()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->pinnedMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final component9()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->pinnedUserId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;ZZLjava/lang/String;)Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;
    .locals 14
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lcom/im/freechat/shared/entities/chat/Chat$Type;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "type"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;

    move-object v1, v0

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;ZZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;

    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->id:I

    iget v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->avatar:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->avatar:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->type:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->type:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->lastReadMessageId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->lastReadMessageId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->lastChatMessageId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->lastChatMessageId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->unreadCount:I

    iget v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->unreadCount:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->pinnedMessageId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->pinnedMessageId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->pinnedUserId:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->pinnedUserId:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->isPublic:Z

    iget-boolean v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->isPublic:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->showHistoryToNewMembers:Z

    iget-boolean v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->showHistoryToNewMembers:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->invitationLink:Ljava/lang/String;

    iget-object p1, p1, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->invitationLink:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getAvatar()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->id:I

    return v0
.end method

.method public final getInvitationLink()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->invitationLink:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastChatMessageId()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->lastChatMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getLastReadMessageId()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->lastReadMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getPinnedMessageId()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->pinnedMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getPinnedUserId()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->pinnedUserId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getShowHistoryToNewMembers()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->showHistoryToNewMembers:Z

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/im/freechat/shared/entities/chat/Chat$Type;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->type:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    return-object v0
.end method

.method public final getUnreadCount()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->unreadCount:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->title:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->avatar:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->type:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->lastReadMessageId:Ljava/lang/Long;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->lastChatMessageId:Ljava/lang/Long;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->unreadCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->pinnedMessageId:Ljava/lang/Long;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->pinnedUserId:Ljava/lang/Integer;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->isPublic:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :cond_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->showHistoryToNewMembers:Z

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    move v3, v1

    :goto_6
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->invitationLink:Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    return v0
.end method

.method public final isPublic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->isPublic:Z

    return v0
.end method

.method public final setInvitationLink(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->invitationLink:Ljava/lang/String;

    return-void
.end method

.method public final setPublic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->isPublic:Z

    return-void
.end method

.method public final setShowHistoryToNewMembers(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->showHistoryToNewMembers:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PartialChatUpdateEntity(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->type:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastReadMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->lastReadMessageId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastChatMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->lastChatMessageId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unreadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->unreadCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pinnedMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->pinnedMessageId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pinnedUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->pinnedUserId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPublic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->isPublic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showHistoryToNewMembers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->showHistoryToNewMembers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", invitationLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;->invitationLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
