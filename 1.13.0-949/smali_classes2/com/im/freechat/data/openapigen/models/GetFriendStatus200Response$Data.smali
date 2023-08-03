.class public final enum Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;
.super Ljava/lang/Enum;
.source "GetFriendStatus200Response.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "sent",
        "received",
        "accepted",
        "undefined",
        "rejected",
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


# static fields
.field private static final synthetic $VALUES:[Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;

.field public static final enum accepted:Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;
    .annotation runtime Lcom/squareup/moshi/g;
        name = "accepted"
    .end annotation
.end field

.field public static final enum received:Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;
    .annotation runtime Lcom/squareup/moshi/g;
        name = "received"
    .end annotation
.end field

.field public static final enum rejected:Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;
    .annotation runtime Lcom/squareup/moshi/g;
        name = "rejected"
    .end annotation
.end field

.field public static final enum sent:Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;
    .annotation runtime Lcom/squareup/moshi/g;
        name = "sent"
    .end annotation
.end field

.field public static final enum undefined:Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;
    .annotation runtime Lcom/squareup/moshi/g;
        name = "undefined"
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;

    sget-object v1, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;->sent:Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;->received:Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;->accepted:Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;->undefined:Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;->rejected:Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;

    const-string v1, "sent"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;->sent:Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;

    .line 2
    new-instance v0, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;

    const-string v1, "received"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;->received:Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;

    .line 3
    new-instance v0, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;

    const-string v1, "accepted"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;->accepted:Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;

    .line 4
    new-instance v0, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;

    const-string v1, "undefined"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;->undefined:Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;

    .line 5
    new-instance v0, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;

    const-string v1, "rejected"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;->rejected:Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;

    invoke-static {}, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;->$values()[Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;

    move-result-object v0

    sput-object v0, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;->$VALUES:[Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;
    .locals 1

    const-class v0, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;

    return-object p0
.end method

.method public static values()[Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;
    .locals 1

    sget-object v0, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;->$VALUES:[Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;->value:Ljava/lang/String;

    return-object v0
.end method
