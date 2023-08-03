.class public final Lcom/qennnsad/aknkaksd/data/bean/websocket/NewFanEvent$Companion;
.super Ljava/lang/Object;
.source "NewFanEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/data/bean/websocket/NewFanEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/NewFanEvent$Companion;",
        "",
        "()V",
        "createMock",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/NewFanEvent;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/NewFanEvent$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createMock()Lcom/qennnsad/aknkaksd/data/bean/websocket/NewFanEvent;
    .locals 10
    .annotation build Lm8/g;
    .end annotation

    new-instance v9, Lcom/qennnsad/aknkaksd/data/bean/websocket/NewFanEvent;

    const-string v1, "newFan"

    const-string v2, "newFan"

    const-string v3, "newFan"

    const/4 v4, 0x1

    const-string v5, "User"

    const-string v6, "User"

    const-string v7, "\u7528\u6237 USER \u8fdb\u5165\u4e3b\u64ad\u7684\u7c89\u4e1d\u56e2\uff01"

    const/4 v8, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/qennnsad/aknkaksd/data/bean/websocket/NewFanEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v9
.end method
