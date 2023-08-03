.class abstract enum Lcom/google/common/collect/f3$r;
.super Ljava/lang/Enum;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/base/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/f3$r;",
        ">;",
        "Lcom/google/common/base/q<",
        "Ljava/util/Map$Entry<",
        "**>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/collect/f3$r;

.field public static final enum b:Lcom/google/common/collect/f3$r;

.field private static final synthetic c:[Lcom/google/common/collect/f3$r;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/common/collect/f3$r$a;

    const-string v1, "KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/f3$r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/f3$r;->a:Lcom/google/common/collect/f3$r;

    .line 2
    new-instance v1, Lcom/google/common/collect/f3$r$b;

    const-string v3, "VALUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/common/collect/f3$r$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/collect/f3$r;->b:Lcom/google/common/collect/f3$r;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/common/collect/f3$r;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/google/common/collect/f3$r;->c:[Lcom/google/common/collect/f3$r;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/f3$e;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/f3$r;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/f3$r;
    .locals 1

    const-class v0, Lcom/google/common/collect/f3$r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/f3$r;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/f3$r;
    .locals 1

    sget-object v0, Lcom/google/common/collect/f3$r;->c:[Lcom/google/common/collect/f3$r;

    invoke-virtual {v0}, [Lcom/google/common/collect/f3$r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/f3$r;

    return-object v0
.end method
