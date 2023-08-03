.class public final Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;
.super Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomMysterableMsg;
.source "UserPublicMsg.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0002\u0010\u0016J\u0006\u00101\u001a\u000202J\t\u00103\u001a\u00020\u0003H\u00c6\u0003J\t\u00104\u001a\u00020\u0003H\u00c6\u0003J\t\u00105\u001a\u00020\u0003H\u00c6\u0003J\t\u00106\u001a\u00020\u0007H\u00c6\u0003J\t\u00107\u001a\u00020\u0007H\u00c6\u0003J\t\u00108\u001a\u00020\u0003H\u00c6\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003J\t\u0010:\u001a\u00020\u0015H\u00c6\u0003J\t\u0010;\u001a\u00020\u0003H\u00c6\u0003J\t\u0010<\u001a\u00020\u0003H\u00c6\u0003J\t\u0010=\u001a\u00020\u0007H\u00c6\u0003J\t\u0010>\u001a\u00020\u0003H\u00c6\u0003J\t\u0010?\u001a\u00020\u0003H\u00c6\u0003J\t\u0010@\u001a\u00020\u0007H\u00c6\u0003J\t\u0010A\u001a\u00020\u0007H\u00c6\u0003J\t\u0010B\u001a\u00020\u0003H\u00c6\u0003J\u00ab\u0001\u0010C\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00032\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015H\u00c6\u0001J\u0013\u0010D\u001a\u00020\u00152\u0008\u0010E\u001a\u0004\u0018\u00010FH\u00d6\u0003J\t\u0010G\u001a\u00020\u0007H\u00d6\u0001J\t\u0010H\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001cR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001c\"\u0004\u0008#\u0010$R\u0016\u0010\u0010\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0016\u0010\u0011\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u001cR\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u001cR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u001cR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u001cR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010&R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u001cR\u0016\u0010\u000b\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010&R\u0016\u0010\u000f\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010&R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010\u001cR\u0016\u0010\n\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010&\u00a8\u0006I"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomMysterableMsg;",
        "fromUserId",
        "",
        "fromClientName",
        "fromUserRole",
        "fromUserPeerageId",
        "",
        "content",
        "time",
        "vipLevel",
        "level",
        "fly",
        "avatar",
        "anchorBalance",
        "roomId",
        "fanLevel",
        "fanclubNickname",
        "charSequence",
        "",
        "alreadyTranslated",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/CharSequence;Z)V",
        "getAlreadyTranslated",
        "()Z",
        "setAlreadyTranslated",
        "(Z)V",
        "getAnchorBalance",
        "()Ljava/lang/String;",
        "getAvatar",
        "getCharSequence",
        "()Ljava/lang/CharSequence;",
        "setCharSequence",
        "(Ljava/lang/CharSequence;)V",
        "getContent",
        "setContent",
        "(Ljava/lang/String;)V",
        "getFanLevel",
        "()I",
        "getFanclubNickname",
        "getFly",
        "getFromClientName",
        "getFromUserId",
        "getFromUserPeerageId",
        "getFromUserRole",
        "getLevel",
        "getRoomId",
        "getTime",
        "getVipLevel",
        "asUserInfo",
        "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "app_pron_playerRelease"
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
.field private transient alreadyTranslated:Z

.field private final anchorBalance:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final avatar:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private transient charSequence:Ljava/lang/CharSequence;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private content:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final fanLevel:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fan_level"
    .end annotation
.end field

.field private final fanclubNickname:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fanclub_nickname"
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final fly:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final fromClientName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "from_client_name"
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final fromUserId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "from_user_id"
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final fromUserPeerageId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "from_user_peerage_id"
    .end annotation
.end field

.field private final fromUserRole:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "from_user_role"
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final level:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "levelid"
    .end annotation
.end field

.field private final roomId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "room_id"
    .end annotation
.end field

.field private final time:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final vipLevel:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vip"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/CharSequence;Z)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p15    # Ljava/lang/CharSequence;
        .annotation build Lm8/h;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p14

    const-string v10, "fromUserId"

    invoke-static {p1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "fromClientName"

    invoke-static {p2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "fromUserRole"

    invoke-static {p3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "content"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "time"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "fly"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "avatar"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "anchorBalance"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "fanclubNickname"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomMysterableMsg;-><init>()V

    .line 3
    iput-object v1, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserId:Ljava/lang/String;

    .line 4
    iput-object v2, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromClientName:Ljava/lang/String;

    .line 5
    iput-object v3, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserRole:Ljava/lang/String;

    move v1, p4

    .line 6
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserPeerageId:I

    .line 7
    iput-object v4, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->content:Ljava/lang/String;

    .line 8
    iput-object v5, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->time:Ljava/lang/String;

    move/from16 v1, p7

    .line 9
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->vipLevel:I

    move/from16 v1, p8

    .line 10
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->level:I

    .line 11
    iput-object v6, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fly:Ljava/lang/String;

    .line 12
    iput-object v7, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->avatar:Ljava/lang/String;

    .line 13
    iput-object v8, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->anchorBalance:Ljava/lang/String;

    move/from16 v1, p12

    .line 14
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->roomId:I

    move/from16 v1, p13

    .line 15
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fanLevel:I

    .line 16
    iput-object v9, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fanclubNickname:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 17
    iput-object v1, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->charSequence:Ljava/lang/CharSequence;

    move/from16 v1, p16

    .line 18
    iput-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->alreadyTranslated:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/CharSequence;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 20

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v10, 0x0

    goto :goto_0

    :cond_0
    move/from16 v10, p7

    :goto_0
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    move/from16 v11, p8

    :goto_1
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2

    const-string v1, ""

    move-object v12, v1

    goto :goto_2

    :cond_2
    move-object/from16 v12, p9

    :goto_2
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    move-object/from16 v18, v1

    goto :goto_3

    :cond_3
    move-object/from16 v18, p15

    :goto_3
    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    const/16 v19, 0x0

    goto :goto_4

    :cond_4
    move/from16 v19, p16

    :goto_4
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move-object/from16 v17, p14

    .line 1
    invoke-direct/range {v3 .. v19}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/CharSequence;ZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromClientName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserRole:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserPeerageId:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->content:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->time:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->vipLevel:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->level:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fly:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->avatar:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->anchorBalance:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget v13, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->roomId:I

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget v14, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fanLevel:I

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fanclubNickname:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->charSequence:Ljava/lang/CharSequence;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->alreadyTranslated:Z

    goto :goto_f

    :cond_f
    move/from16 v1, p16

    :goto_f
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p15, v15

    move/from16 p16, v1

    invoke-virtual/range {p0 .. p16}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/CharSequence;Z)Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final asUserInfo()Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->setId(Ljava/lang/String;)V

    const-string v1, ""

    .line 3
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->setAvatar(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromClientName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->setNickname(Ljava/lang/String;)V

    .line 5
    iget v2, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->vipLevel:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->setVip(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getLevel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->setLevel(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->setCurrentRoomNum(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->setSay(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserPeerageId:I

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->setPeerage_id(I)V

    .line 10
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->getIsMystery()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->setIsMystery(I)V

    return-object v0
.end method

.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->anchorBalance:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->roomId:I

    return v0
.end method

.method public final component13()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fanLevel:I

    return v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fanclubNickname:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->charSequence:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final component16()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->alreadyTranslated:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromClientName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserRole:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserPeerageId:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->time:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->vipLevel:I

    return v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->level:I

    return v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fly:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/CharSequence;Z)Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;
    .locals 19
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p15    # Ljava/lang/CharSequence;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    const-string v0, "fromUserId"

    move-object/from16 v17, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromClientName"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromUserRole"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "time"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fly"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatar"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchorBalance"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fanclubNickname"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v18, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct/range {v0 .. v16}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/CharSequence;Z)V

    return-object v18
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
    instance-of v1, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserId:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromClientName:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromClientName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserRole:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserRole:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserPeerageId:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserPeerageId:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->content:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->content:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->time:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->time:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->vipLevel:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->vipLevel:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->level:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->level:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fly:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fly:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->avatar:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->avatar:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->anchorBalance:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->anchorBalance:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->roomId:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->roomId:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fanLevel:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fanLevel:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fanclubNickname:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fanclubNickname:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->charSequence:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->charSequence:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->alreadyTranslated:Z

    iget-boolean p1, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->alreadyTranslated:Z

    if-eq v1, p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public final getAlreadyTranslated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->alreadyTranslated:Z

    return v0
.end method

.method public final getAnchorBalance()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->anchorBalance:Ljava/lang/String;

    return-object v0
.end method

.method public final getAvatar()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getCharSequence()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->charSequence:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getFanLevel()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fanLevel:I

    return v0
.end method

.method public final getFanclubNickname()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fanclubNickname:Ljava/lang/String;

    return-object v0
.end method

.method public final getFly()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fly:Ljava/lang/String;

    return-object v0
.end method

.method public final getFromClientName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromClientName:Ljava/lang/String;

    return-object v0
.end method

.method public final getFromUserId()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getFromUserPeerageId()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserPeerageId:I

    return v0
.end method

.method public final getFromUserRole()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserRole:Ljava/lang/String;

    return-object v0
.end method

.method public final getLevel()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->level:I

    return v0
.end method

.method public final getRoomId()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->roomId:I

    return v0
.end method

.method public final getTime()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->time:Ljava/lang/String;

    return-object v0
.end method

.method public final getVipLevel()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->vipLevel:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromClientName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserRole:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserPeerageId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->time:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->vipLevel:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->level:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fly:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->avatar:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->anchorBalance:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->roomId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fanLevel:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fanclubNickname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->charSequence:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->alreadyTranslated:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAlreadyTranslated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->alreadyTranslated:Z

    return-void
.end method

.method public final setCharSequence(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->charSequence:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->content:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserPublicMsg(fromUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fromClientName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromClientName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fromUserRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserRole:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fromUserPeerageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fromUserPeerageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vipLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->vipLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fly:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", anchorBalance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->anchorBalance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", roomId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->roomId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fanLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fanLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fanclubNickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->fanclubNickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", charSequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->charSequence:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alreadyTranslated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->alreadyTranslated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
