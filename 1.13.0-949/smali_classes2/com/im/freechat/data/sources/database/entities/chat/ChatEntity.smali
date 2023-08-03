.class public final Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;
.super Ljava/lang/Object;
.source "ChatEntity.kt"


# annotations
.annotation build Landroidx/room/Entity;
    foreignKeys = {
        .subannotation Landroidx/room/ForeignKey;
            childColumns = {
                "last_message_id"
            }
            entity = Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;
            onDelete = 0x3
            parentColumns = {
                "message_id"
            }
        .end subannotation
    }
    tableName = "chat"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u00087\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0016J\t\u00104\u001a\u00020\u0003H\u00c6\u0003J\u0010\u00105\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010,J\u0010\u00106\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010#J\t\u00107\u001a\u00020\u0012H\u00c6\u0003J\t\u00108\u001a\u00020\u0012H\u00c6\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010=\u001a\u00020\u0008H\u00c6\u0003J\u0010\u0010>\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010#J\u0010\u0010?\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010#J\u0010\u0010@\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010#J\t\u0010A\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010B\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010#J\u00b8\u0001\u0010C\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00122\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010DJ\u0013\u0010E\u001a\u00020\u00122\u0008\u0010F\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010G\u001a\u00020\u0003H\u00d6\u0001J\t\u0010H\u001a\u00020\u0005H\u00d6\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0018R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR \u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0018\"\u0004\u0008\u001d\u0010\u001eR\u001e\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010$\u001a\u0004\u0008\"\u0010#R\u001a\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010$\u001a\u0004\u0008%\u0010#R\u001a\u0010\u000c\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010$\u001a\u0004\u0008&\u0010#R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010$\u001a\u0004\u0008\'\u0010#R\"\u0010\u0010\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010$\u001a\u0004\u0008(\u0010#\"\u0004\u0008)\u0010*R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010-\u001a\u0004\u0008+\u0010,R\u001e\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u001f\"\u0004\u0008/\u0010!R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010\u0018R\u0016\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102R\u0016\u0010\r\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010\u001b\u00a8\u0006I"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;",
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
        "lastSyncMessageId",
        "unreadCount",
        "pinnedMessageId",
        "pinnedUserId",
        "pinnedTime",
        "isPublic",
        "",
        "showHistoryToNewMembers",
        "invitationLink",
        "draftMessage",
        "(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZZLjava/lang/String;Ljava/lang/String;)V",
        "getAvatar",
        "()Ljava/lang/String;",
        "getDraftMessage",
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
        "getLastSyncMessageId",
        "getPinnedMessageId",
        "getPinnedTime",
        "setPinnedTime",
        "(Ljava/lang/Long;)V",
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
        "component13",
        "component14",
        "component15",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZZLjava/lang/String;Ljava/lang/String;)Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;",
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

.field private final draftMessage:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "draft_message"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final id:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "chat_id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
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
        index = true
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

.field private final lastSyncMessageId:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        index = true
        name = "last_sync_message_id"
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

.field private pinnedTime:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        name = "pinned_time"
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
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
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
    .param p7    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p4

    const-string v2, "type"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v2, p1

    .line 2
    iput v2, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->id:I

    move-object v2, p2

    .line 3
    iput-object v2, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->title:Ljava/lang/String;

    move-object v2, p3

    .line 4
    iput-object v2, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->avatar:Ljava/lang/String;

    .line 5
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->type:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastReadMessageId:Ljava/lang/Long;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastChatMessageId:Ljava/lang/Long;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastSyncMessageId:Ljava/lang/Long;

    move v1, p8

    .line 9
    iput v1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->unreadCount:I

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedMessageId:Ljava/lang/Long;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedUserId:Ljava/lang/Integer;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedTime:Ljava/lang/Long;

    move v1, p12

    .line 13
    iput-boolean v1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->isPublic:Z

    move/from16 v1, p13

    .line 14
    iput-boolean v1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->showHistoryToNewMembers:Z

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->invitationLink:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->draftMessage:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->id:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->title:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->avatar:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->type:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastReadMessageId:Ljava/lang/Long;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastChatMessageId:Ljava/lang/Long;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastSyncMessageId:Ljava/lang/Long;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->unreadCount:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedMessageId:Ljava/lang/Long;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedUserId:Ljava/lang/Integer;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedTime:Ljava/lang/Long;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-boolean v13, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->isPublic:Z

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-boolean v14, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->showHistoryToNewMembers:Z

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->invitationLink:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->draftMessage:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v1, p15

    :goto_e
    move/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, v1

    invoke-virtual/range {p0 .. p15}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->copy(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZZLjava/lang/String;Ljava/lang/String;)Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->id:I

    return v0
.end method

.method public final component10()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedUserId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component11()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->isPublic:Z

    return v0
.end method

.method public final component13()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->showHistoryToNewMembers:Z

    return v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->invitationLink:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->draftMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/im/freechat/shared/entities/chat/Chat$Type;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->type:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    return-object v0
.end method

.method public final component5()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastReadMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final component6()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastChatMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final component7()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastSyncMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->unreadCount:I

    return v0
.end method

.method public final component9()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZZLjava/lang/String;Ljava/lang/String;)Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;
    .locals 17
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
    .param p7    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "type"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;

    move-object v1, v0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    invoke-direct/range {v1 .. v16}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZZLjava/lang/String;Ljava/lang/String;)V

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
    instance-of v1, p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;

    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->id:I

    iget v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->avatar:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->avatar:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->type:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->type:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastReadMessageId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastReadMessageId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastChatMessageId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastChatMessageId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastSyncMessageId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastSyncMessageId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->unreadCount:I

    iget v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->unreadCount:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedMessageId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedMessageId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedUserId:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedUserId:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedTime:Ljava/lang/Long;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedTime:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->isPublic:Z

    iget-boolean v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->isPublic:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->showHistoryToNewMembers:Z

    iget-boolean v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->showHistoryToNewMembers:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->invitationLink:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->invitationLink:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->draftMessage:Ljava/lang/String;

    iget-object p1, p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->draftMessage:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final getAvatar()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getDraftMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->draftMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->id:I

    return v0
.end method

.method public final getInvitationLink()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->invitationLink:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastChatMessageId()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastChatMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getLastReadMessageId()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastReadMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getLastSyncMessageId()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastSyncMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getPinnedMessageId()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getPinnedTime()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final getPinnedUserId()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedUserId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getShowHistoryToNewMembers()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->showHistoryToNewMembers:Z

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/im/freechat/shared/entities/chat/Chat$Type;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->type:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    return-object v0
.end method

.method public final getUnreadCount()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->unreadCount:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->title:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->avatar:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->type:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastReadMessageId:Ljava/lang/Long;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastChatMessageId:Ljava/lang/Long;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastSyncMessageId:Ljava/lang/Long;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->unreadCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedMessageId:Ljava/lang/Long;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedUserId:Ljava/lang/Integer;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedTime:Ljava/lang/Long;

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->isPublic:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :cond_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->showHistoryToNewMembers:Z

    if-eqz v1, :cond_9

    goto :goto_8

    :cond_9
    move v3, v1

    :goto_8
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->invitationLink:Ljava/lang/String;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_9

    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->draftMessage:Ljava/lang/String;

    if-nez v1, :cond_b

    goto :goto_a

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    return v0
.end method

.method public final isPublic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->isPublic:Z

    return v0
.end method

.method public final setInvitationLink(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->invitationLink:Ljava/lang/String;

    return-void
.end method

.method public final setPinnedTime(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedTime:Ljava/lang/Long;

    return-void
.end method

.method public final setPublic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->isPublic:Z

    return-void
.end method

.method public final setShowHistoryToNewMembers(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->showHistoryToNewMembers:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatEntity(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->type:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastReadMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastReadMessageId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastChatMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastChatMessageId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastSyncMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->lastSyncMessageId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unreadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->unreadCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pinnedMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedMessageId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pinnedUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedUserId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pinnedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->pinnedTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPublic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->isPublic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showHistoryToNewMembers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->showHistoryToNewMembers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", invitationLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->invitationLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", draftMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->draftMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
