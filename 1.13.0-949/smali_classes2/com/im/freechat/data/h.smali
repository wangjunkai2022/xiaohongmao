.class final enum Lcom/im/freechat/data/h;
.super Ljava/lang/Enum;
.source "ApiExtends.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/data/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/im/freechat/data/h;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0082\u0001\u0018\u0000 \u00042\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0004B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/im/freechat/data/h;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "a",
        "Code",
        "Msg",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/im/freechat/data/h$a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final enum b:Lcom/im/freechat/data/h;

.field public static final enum c:Lcom/im/freechat/data/h;

.field private static final synthetic d:[Lcom/im/freechat/data/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/im/freechat/data/h;

    const-string v1, "Code"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/im/freechat/data/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/im/freechat/data/h;->b:Lcom/im/freechat/data/h;

    .line 2
    new-instance v0, Lcom/im/freechat/data/h;

    const-string v1, "Msg"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/im/freechat/data/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/im/freechat/data/h;->c:Lcom/im/freechat/data/h;

    invoke-static {}, Lcom/im/freechat/data/h;->a()[Lcom/im/freechat/data/h;

    move-result-object v0

    sput-object v0, Lcom/im/freechat/data/h;->d:[Lcom/im/freechat/data/h;

    new-instance v0, Lcom/im/freechat/data/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/im/freechat/data/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/im/freechat/data/h;->a:Lcom/im/freechat/data/h$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Lcom/im/freechat/data/h;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/im/freechat/data/h;

    sget-object v1, Lcom/im/freechat/data/h;->b:Lcom/im/freechat/data/h;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/h;->c:Lcom/im/freechat/data/h;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/im/freechat/data/h;
    .locals 1

    const-class v0, Lcom/im/freechat/data/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/im/freechat/data/h;

    return-object p0
.end method

.method public static values()[Lcom/im/freechat/data/h;
    .locals 1

    sget-object v0, Lcom/im/freechat/data/h;->d:[Lcom/im/freechat/data/h;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/im/freechat/data/h;

    return-object v0
.end method
