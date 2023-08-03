.class public final enum Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;
.super Ljava/lang/Enum;
.source "LoggedInSuccessfully.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "outdated",
        "fresh",
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
.field private static final synthetic $VALUES:[Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;

.field public static final enum fresh:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;
    .annotation runtime Lcom/squareup/moshi/g;
        name = "fresh"
    .end annotation
.end field

.field public static final enum outdated:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;
    .annotation runtime Lcom/squareup/moshi/g;
        name = "outdated"
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;

    sget-object v1, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;->outdated:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;->fresh:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;

    const-string v1, "outdated"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;->outdated:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;

    .line 2
    new-instance v0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;

    const-string v1, "fresh"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;->fresh:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;

    invoke-static {}, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;->$values()[Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;

    move-result-object v0

    sput-object v0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;->$VALUES:[Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;

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

    iput-object p3, p0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;
    .locals 1

    const-class v0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;

    return-object p0
.end method

.method public static values()[Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;
    .locals 1

    sget-object v0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;->$VALUES:[Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;->value:Ljava/lang/String;

    return-object v0
.end method
