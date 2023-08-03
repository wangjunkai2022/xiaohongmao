.class public final Lcom/im/freechat/shared/entities/message/Message$SystemEventType$Companion;
.super Ljava/lang/Object;
.source "Message.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/shared/entities/message/Message$SystemEventType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/message/Message$SystemEventType$Companion;",
        "",
        "()V",
        "fromString",
        "Lcom/im/freechat/shared/entities/message/Message$SystemEventType;",
        "event",
        "",
        "shared"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromString(Ljava/lang/String;)Lcom/im/freechat/shared/entities/message/Message$SystemEventType;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->ADD_MANAGER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->CREATE_GROUP:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->MESSAGE_DELETE:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_0

    .line 4
    :cond_2
    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->REMOVE_MANAGER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->ADD_MEMBER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->BANNED_MEMBER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->UNBANNED_MEMBER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    .line 8
    :cond_6
    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->MESSAGE_MODIFY:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    .line 9
    :cond_7
    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->MEMBER_LEFT:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_0

    .line 10
    :cond_8
    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->KICKED_MEMBER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    .line 11
    :cond_9
    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->CLEAR_CHAT_HISTORY:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
