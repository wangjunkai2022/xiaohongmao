.class public final Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;
.super Ljava/lang/Object;
.source "LocalRoomMsg.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008(\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001Bk\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u0012\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0010J\t\u0010-\u001a\u00020\u0003H\u00c6\u0003J\t\u0010.\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u00100\u001a\u00020\u0008H\u00c6\u0003J\t\u00101\u001a\u00020\u0005H\u00c6\u0003J\t\u00102\u001a\u00020\u0008H\u00c6\u0003J\u0011\u00103\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000cH\u00c6\u0003J\t\u00104\u001a\u00020\u0008H\u00c6\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003Jo\u00106\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u00082\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00082\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u00c6\u0001J\u0013\u00107\u001a\u0002082\u0008\u00109\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010:\u001a\u00020\u0008H\u00d6\u0001J\t\u0010;\u001a\u00020\u0005H\u00d6\u0001R\u001e\u0010\r\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0012\"\u0004\u0008\u001a\u0010\u0014R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR&\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001e\u0010\n\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0012\"\u0004\u0008$\u0010\u0014R \u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u0016\"\u0004\u0008*\u0010\u0018R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0016\"\u0004\u0008,\u0010\u0018\u00a8\u0006<"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;",
        "",
        "role",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;",
        "type",
        "",
        "roomId",
        "promptTime",
        "",
        "promptContent",
        "rollmsgTime",
        "rollmsgContent",
        "",
        "hasNamecard",
        "roomAd",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;",
        "(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/util/List;ILcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;)V",
        "getHasNamecard",
        "()I",
        "setHasNamecard",
        "(I)V",
        "getPromptContent",
        "()Ljava/lang/String;",
        "setPromptContent",
        "(Ljava/lang/String;)V",
        "getPromptTime",
        "setPromptTime",
        "getRole",
        "()Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;",
        "setRole",
        "(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;)V",
        "getRollmsgContent",
        "()Ljava/util/List;",
        "setRollmsgContent",
        "(Ljava/util/List;)V",
        "getRollmsgTime",
        "setRollmsgTime",
        "getRoomAd",
        "()Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;",
        "setRoomAd",
        "(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;)V",
        "getRoomId",
        "setRoomId",
        "getType",
        "setType",
        "component1",
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
        "",
        "other",
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
.field private hasNamecard:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "has_namecard"
    .end annotation
.end field

.field private promptContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prompt_content"
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private promptTime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prompt_time"
    .end annotation
.end field

.field private role:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private rollmsgContent:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rollmsg_content"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private rollmsgTime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rollmsg_time"
    .end annotation
.end field

.field private roomAd:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "room_ad"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private roomId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "room_id"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;-><init>(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/util/List;ILcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/util/List;ILcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;",
            ")V"
        }
    .end annotation

    const-string v0, "role"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promptContent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->role:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->type:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->roomId:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->promptTime:I

    .line 6
    iput-object p5, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->promptContent:Ljava/lang/String;

    .line 7
    iput p6, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->rollmsgTime:I

    .line 8
    iput-object p7, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->rollmsgContent:Ljava/util/List;

    .line 9
    iput p8, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->hasNamecard:I

    .line 10
    iput-object p9, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->roomAd:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/util/List;ILcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 11
    sget-object v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;->Viewer:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const-string v3, ""

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move-object v4, v5

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    move v6, p4

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v3, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    move-object v9, v5

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v7, p8

    :goto_7
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v5, p9

    :goto_8
    move-object p1, p0

    move-object p2, v1

    move-object p3, v2

    move-object p4, v4

    move/from16 p5, v6

    move-object/from16 p6, v3

    move/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v7

    move-object/from16 p10, v5

    .line 12
    invoke-direct/range {p1 .. p10}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;-><init>(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/util/List;ILcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/util/List;ILcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;ILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->role:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->type:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->roomId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->promptTime:I

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->promptContent:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->rollmsgTime:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->rollmsgContent:Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->hasNamecard:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->roomAd:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move p4, v5

    move-object p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->copy(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/util/List;ILcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;)Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->role:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->promptTime:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->promptContent:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->rollmsgTime:I

    return v0
.end method

.method public final component7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->rollmsgContent:Ljava/util/List;

    return-object v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->hasNamecard:I

    return v0
.end method

.method public final component9()Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->roomAd:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;

    return-object v0
.end method

.method public final copy(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/util/List;ILcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;)Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;
    .locals 11
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;",
            ")",
            "Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "role"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promptContent"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;

    move-object v1, v0

    move-object v4, p3

    move v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;-><init>(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/util/List;ILcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;)V

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
    instance-of v1, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->role:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->role:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->roomId:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->roomId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->promptTime:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->promptTime:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->promptContent:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->promptContent:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->rollmsgTime:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->rollmsgTime:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->rollmsgContent:Ljava/util/List;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->rollmsgContent:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->hasNamecard:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->hasNamecard:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->roomAd:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;

    iget-object p1, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->roomAd:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getHasNamecard()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->hasNamecard:I

    return v0
.end method

.method public final getPromptContent()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->promptContent:Ljava/lang/String;

    return-object v0
.end method

.method public final getPromptTime()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->promptTime:I

    return v0
.end method

.method public final getRole()Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->role:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;

    return-object v0
.end method

.method public final getRollmsgContent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->rollmsgContent:Ljava/util/List;

    return-object v0
.end method

.method public final getRollmsgTime()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->rollmsgTime:I

    return v0
.end method

.method public final getRoomAd()Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->roomAd:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;

    return-object v0
.end method

.method public final getRoomId()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->role:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->roomId:Ljava/lang/String;

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

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->promptTime:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->promptContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->rollmsgTime:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->rollmsgContent:Ljava/util/List;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->hasNamecard:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->roomAd:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final setHasNamecard(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->hasNamecard:I

    return-void
.end method

.method public final setPromptContent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->promptContent:Ljava/lang/String;

    return-void
.end method

.method public final setPromptTime(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->promptTime:I

    return-void
.end method

.method public final setRole(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->role:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;

    return-void
.end method

.method public final setRollmsgContent(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->rollmsgContent:Ljava/util/List;

    return-void
.end method

.method public final setRollmsgTime(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->rollmsgTime:I

    return-void
.end method

.method public final setRoomAd(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;)V
    .locals 0
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->roomAd:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;

    return-void
.end method

.method public final setRoomId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->roomId:Ljava/lang/String;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalRoomMsg(role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->role:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", roomId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", promptTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->promptTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", promptContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->promptContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rollmsgTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->rollmsgTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rollmsgContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->rollmsgContent:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasNamecard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->hasNamecard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", roomAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->roomAd:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
