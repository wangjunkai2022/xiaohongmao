.class public final Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;
.super Ljava/lang/Object;
.source "MessageEntity.kt"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "message"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u00081\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00b3\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u0012\u0018\u0008\u0002\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0014\u0012\u0010\u0008\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0019J\t\u00103\u001a\u00020\u0003H\u00c6\u0003J\u0010\u00104\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\"J\u0010\u00105\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001fJ\t\u00106\u001a\u00020\u0012H\u00c6\u0003J\u0019\u00107\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0014H\u00c6\u0003J\u0011\u00108\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016H\u00c6\u0003J\t\u00109\u001a\u00020\u0012H\u00c6\u0003J\t\u0010:\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010<\u001a\u00020\u0005H\u00c6\u0003J\t\u0010=\u001a\u00020\u0003H\u00c6\u0003J\t\u0010>\u001a\u00020\u000bH\u00c6\u0003J\u0010\u0010?\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001fJ\u0010\u0010@\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\"J\u0010\u0010A\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001fJ\u00c8\u0001\u0010B\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0018\u0008\u0002\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u00142\u0010\u0008\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00162\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0012H\u00c6\u0001\u00a2\u0006\u0002\u0010CJ\u0013\u0010D\u001a\u00020\u00122\u0008\u0010E\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010F\u001a\u00020\u0005H\u00d6\u0001J\t\u0010G\u001a\u00020\u0007H\u00d6\u0001R\u0016\u0010\u0008\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u000c\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010 \u001a\u0004\u0008\u001e\u0010\u001fR\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010#\u001a\u0004\u0008!\u0010\"R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010 \u001a\u0004\u0008$\u0010\u001fR\u001a\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010#\u001a\u0004\u0008%\u0010\"R\u0016\u0010\u0018\u001a\u00020\u00128\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010&R\u0016\u0010\u0011\u001a\u00020\u00128\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010&R&\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u00148\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-R\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010 \u001a\u0004\u0008.\u0010\u001fR\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010+R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010\u001bR\u001e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102\u00a8\u0006H"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
        "",
        "messageId",
        "",
        "senderId",
        "",
        "content",
        "",
        "chatId",
        "sendTime",
        "messageStatus",
        "Lcom/im/freechat/shared/entities/message/Message$MessageStatus;",
        "editTime",
        "forwardSenderId",
        "forwardMessageId",
        "forwardChatId",
        "replyToMessageId",
        "mentionAll",
        "",
        "mentions",
        "",
        "styles",
        "",
        "Lcom/im/freechat/shared/entities/message/MessageStyle;",
        "isService",
        "(JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;Z)V",
        "getChatId",
        "()I",
        "getContent",
        "()Ljava/lang/String;",
        "getEditTime",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getForwardChatId",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getForwardMessageId",
        "getForwardSenderId",
        "()Z",
        "getMentionAll",
        "getMentions",
        "()Ljava/util/Map;",
        "getMessageId",
        "()J",
        "getMessageStatus",
        "()Lcom/im/freechat/shared/entities/message/Message$MessageStatus;",
        "getReplyToMessageId",
        "getSendTime",
        "getSenderId",
        "getStyles",
        "()Ljava/util/List;",
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
        "(JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;Z)Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
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
.field private final chatId:I
    .annotation build Landroidx/room/ColumnInfo;
        index = true
        name = "parent_chat_id"
    .end annotation
.end field

.field private final content:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "content"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final editTime:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        name = "edit_time"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final forwardChatId:Ljava/lang/Integer;
    .annotation build Landroidx/room/ColumnInfo;
        name = "forward_chat_id"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final forwardMessageId:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        name = "forward_message_id"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final forwardSenderId:Ljava/lang/Integer;
    .annotation build Landroidx/room/ColumnInfo;
        name = "forward_sender_id"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final isService:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "is_service"
    .end annotation
.end field

.field private final mentionAll:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "mention_all"
    .end annotation
.end field

.field private final mentions:Ljava/util/Map;
    .annotation build Landroidx/room/ColumnInfo;
        name = "mentions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final messageId:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "message_id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field private final messageStatus:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;
    .annotation build Landroidx/room/ColumnInfo;
        name = "status"
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final replyToMessageId:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        name = "reply_to_message_id"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final sendTime:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "send_time"
    .end annotation
.end field

.field private final senderId:I
    .annotation build Landroidx/room/ColumnInfo;
        index = true
        name = "sender_id"
    .end annotation
.end field

.field private final styles:Ljava/util/List;
    .annotation build Landroidx/room/ColumnInfo;
        name = "styles"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/MessageStyle;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;Z)V
    .locals 4
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Lcom/im/freechat/shared/entities/message/Message$MessageStatus;
        .annotation build Lm8/g;
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
    .param p12    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p15    # Ljava/util/Map;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p16    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "IJ",
            "Lcom/im/freechat/shared/entities/message/Message$MessageStatus;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/MessageStyle;",
            ">;Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p8

    const-string v2, "messageStatus"

    invoke-static {p8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v2, p1

    .line 2
    iput-wide v2, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->messageId:J

    move v2, p3

    .line 3
    iput v2, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->senderId:I

    move-object v2, p4

    .line 4
    iput-object v2, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->content:Ljava/lang/String;

    move v2, p5

    .line 5
    iput v2, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->chatId:I

    move-wide v2, p6

    .line 6
    iput-wide v2, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->sendTime:J

    .line 7
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->messageStatus:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    move-object v1, p9

    .line 8
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->editTime:Ljava/lang/Long;

    move-object v1, p10

    .line 9
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardSenderId:Ljava/lang/Integer;

    move-object v1, p11

    .line 10
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardMessageId:Ljava/lang/Long;

    move-object/from16 v1, p12

    .line 11
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardChatId:Ljava/lang/Integer;

    move-object/from16 v1, p13

    .line 12
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->replyToMessageId:Ljava/lang/Long;

    move/from16 v1, p14

    .line 13
    iput-boolean v1, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->mentionAll:Z

    move-object/from16 v1, p15

    .line 14
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->mentions:Ljava/util/Map;

    move-object/from16 v1, p16

    .line 15
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->styles:Ljava/util/List;

    move/from16 v1, p17

    .line 16
    iput-boolean v1, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->isService:Z

    return-void
.end method

.method public synthetic constructor <init>(JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 21

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v12, v2

    goto :goto_0

    :cond_0
    move-object/from16 v12, p9

    :goto_0
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    move-object v13, v2

    goto :goto_1

    :cond_1
    move-object/from16 v13, p10

    :goto_1
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2

    move-object v14, v2

    goto :goto_2

    :cond_2
    move-object/from16 v14, p11

    :goto_2
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_3

    move-object v15, v2

    goto :goto_3

    :cond_3
    move-object/from16 v15, p12

    :goto_3
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_4

    move-object/from16 v16, v2

    goto :goto_4

    :cond_4
    move-object/from16 v16, p13

    :goto_4
    and-int/lit16 v1, v0, 0x800

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    const/16 v17, 0x0

    goto :goto_5

    :cond_5
    move/from16 v17, p14

    :goto_5
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_6

    move-object/from16 v18, v2

    goto :goto_6

    :cond_6
    move-object/from16 v18, p15

    :goto_6
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_7

    move-object/from16 v19, v2

    goto :goto_7

    :cond_7
    move-object/from16 v19, p16

    :goto_7
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_8

    const/16 v20, 0x0

    goto :goto_8

    :cond_8
    move/from16 v20, p17

    :goto_8
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-object/from16 v11, p8

    .line 17
    invoke-direct/range {v3 .. v20}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;-><init>(JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;ZILjava/lang/Object;)Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p18

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->messageId:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->senderId:I

    goto :goto_1

    :cond_1
    move/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->content:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget v6, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->chatId:I

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-wide v7, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->sendTime:J

    goto :goto_4

    :cond_4
    move-wide/from16 v7, p6

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->messageStatus:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->editTime:Ljava/lang/Long;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-object v11, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardSenderId:Ljava/lang/Integer;

    goto :goto_7

    :cond_7
    move-object/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-object v12, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardMessageId:Ljava/lang/Long;

    goto :goto_8

    :cond_8
    move-object/from16 v12, p11

    :goto_8
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_9

    iget-object v13, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardChatId:Ljava/lang/Integer;

    goto :goto_9

    :cond_9
    move-object/from16 v13, p12

    :goto_9
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_a

    iget-object v14, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->replyToMessageId:Ljava/lang/Long;

    goto :goto_a

    :cond_a
    move-object/from16 v14, p13

    :goto_a
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget-boolean v15, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->mentionAll:Z

    goto :goto_b

    :cond_b
    move/from16 v15, p14

    :goto_b
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->mentions:Ljava/util/Map;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p15

    :goto_c
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->styles:Ljava/util/List;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p16

    :goto_d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    iget-boolean v1, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->isService:Z

    goto :goto_e

    :cond_e
    move/from16 v1, p17

    :goto_e
    move-wide/from16 p1, v2

    move/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move-wide/from16 p6, v7

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p16, v15

    move/from16 p17, v1

    invoke-virtual/range {p0 .. p17}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->copy(JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;Z)Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->messageId:J

    return-wide v0
.end method

.method public final component10()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardChatId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component11()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->replyToMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->mentionAll:Z

    return v0
.end method

.method public final component13()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->mentions:Ljava/util/Map;

    return-object v0
.end method

.method public final component14()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/MessageStyle;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->styles:Ljava/util/List;

    return-object v0
.end method

.method public final component15()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->isService:Z

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->senderId:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->chatId:I

    return v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->sendTime:J

    return-wide v0
.end method

.method public final component6()Lcom/im/freechat/shared/entities/message/Message$MessageStatus;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->messageStatus:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    return-object v0
.end method

.method public final component7()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->editTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final component8()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardSenderId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component9()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final copy(JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;Z)Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;
    .locals 19
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Lcom/im/freechat/shared/entities/message/Message$MessageStatus;
        .annotation build Lm8/g;
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
    .param p12    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p15    # Ljava/util/Map;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p16    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "IJ",
            "Lcom/im/freechat/shared/entities/message/Message$MessageStatus;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/MessageStyle;",
            ">;Z)",
            "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move/from16 v17, p17

    const-string v0, "messageStatus"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v18, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-direct/range {v0 .. v17}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;-><init>(JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;Z)V

    return-object v18
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-wide v3, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->messageId:J

    iget-wide v5, p1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->messageId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->senderId:I

    iget v3, p1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->senderId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->content:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->content:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->chatId:I

    iget v3, p1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->chatId:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->sendTime:J

    iget-wide v5, p1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->sendTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->messageStatus:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->messageStatus:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->editTime:Ljava/lang/Long;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->editTime:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardSenderId:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardSenderId:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardMessageId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardMessageId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardChatId:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardChatId:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->replyToMessageId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->replyToMessageId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->mentionAll:Z

    iget-boolean v3, p1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->mentionAll:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->mentions:Ljava/util/Map;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->mentions:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->styles:Ljava/util/List;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->styles:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->isService:Z

    iget-boolean p1, p1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->isService:Z

    if-eq v1, p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final getChatId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->chatId:I

    return v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getEditTime()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->editTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final getForwardChatId()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardChatId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getForwardMessageId()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getForwardSenderId()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardSenderId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMentionAll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->mentionAll:Z

    return v0
.end method

.method public final getMentions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->mentions:Ljava/util/Map;

    return-object v0
.end method

.method public final getMessageId()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->messageId:J

    return-wide v0
.end method

.method public final getMessageStatus()Lcom/im/freechat/shared/entities/message/Message$MessageStatus;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->messageStatus:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    return-object v0
.end method

.method public final getReplyToMessageId()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->replyToMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSendTime()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->sendTime:J

    return-wide v0
.end method

.method public final getSenderId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->senderId:I

    return v0
.end method

.method public final getStyles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/MessageStyle;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->styles:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->messageId:J

    invoke-static {v0, v1}, La5/a;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->senderId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->content:Ljava/lang/String;

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

    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->chatId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->sendTime:J

    invoke-static {v3, v4}, La5/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->messageStatus:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->editTime:Ljava/lang/Long;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardSenderId:Ljava/lang/Integer;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardMessageId:Ljava/lang/Long;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardChatId:Ljava/lang/Integer;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->replyToMessageId:Ljava/lang/Long;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->mentionAll:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :cond_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->mentions:Ljava/util/Map;

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_6

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->styles:Ljava/util/List;

    if-nez v1, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->isService:Z

    if-eqz v1, :cond_9

    goto :goto_8

    :cond_9
    move v3, v1

    :goto_8
    add-int/2addr v0, v3

    return v0
.end method

.method public final isService()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->isService:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageEntity(messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->messageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", senderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->senderId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", chatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->chatId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sendTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->sendTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", messageStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->messageStatus:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", editTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->editTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", forwardSenderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardSenderId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", forwardMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardMessageId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", forwardChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->forwardChatId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", replyToMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->replyToMessageId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mentionAll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->mentionAll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mentions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->mentions:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", styles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->styles:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->isService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
