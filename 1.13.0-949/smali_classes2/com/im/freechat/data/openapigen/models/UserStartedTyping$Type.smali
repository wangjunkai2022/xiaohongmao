.class public final enum Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;
.super Ljava/lang/Enum;
.source "UserStartedTyping.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/data/openapigen/models/UserStartedTyping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "userStartedTyping",
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
.field private static final synthetic $VALUES:[Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;

.field public static final enum userStartedTyping:Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;
    .annotation runtime Lcom/squareup/moshi/g;
        name = "UserStartedTyping"
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;

    sget-object v1, Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;->userStartedTyping:Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;

    const-string v1, "userStartedTyping"

    const/4 v2, 0x0

    const-string v3, "UserStartedTyping"

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;->userStartedTyping:Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;

    invoke-static {}, Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;->$values()[Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;

    move-result-object v0

    sput-object v0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;->$VALUES:[Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;

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

    iput-object p3, p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;
    .locals 1

    const-class v0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;

    return-object p0
.end method

.method public static values()[Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;
    .locals 1

    sget-object v0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;->$VALUES:[Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;->value:Ljava/lang/String;

    return-object v0
.end method
