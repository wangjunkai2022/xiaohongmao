.class abstract enum Lcom/google/common/cache/j$t;
.super Ljava/lang/Enum;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/cache/j$t;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/cache/j$t;

.field public static final enum b:Lcom/google/common/cache/j$t;

.field public static final enum c:Lcom/google/common/cache/j$t;

.field private static final synthetic d:[Lcom/google/common/cache/j$t;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/common/cache/j$t$a;

    const-string v1, "STRONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/j$t$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/j$t;->a:Lcom/google/common/cache/j$t;

    .line 2
    new-instance v1, Lcom/google/common/cache/j$t$b;

    const-string v3, "SOFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/common/cache/j$t$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/cache/j$t;->b:Lcom/google/common/cache/j$t;

    .line 3
    new-instance v3, Lcom/google/common/cache/j$t$c;

    const-string v5, "WEAK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/common/cache/j$t$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/common/cache/j$t;->c:Lcom/google/common/cache/j$t;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/common/cache/j$t;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/google/common/cache/j$t;->d:[Lcom/google/common/cache/j$t;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/cache/j$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/cache/j$t;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/j$t;
    .locals 1

    const-class v0, Lcom/google/common/cache/j$t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/cache/j$t;

    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/j$t;
    .locals 1

    sget-object v0, Lcom/google/common/cache/j$t;->d:[Lcom/google/common/cache/j$t;

    invoke-virtual {v0}, [Lcom/google/common/cache/j$t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/j$t;

    return-object v0
.end method


# virtual methods
.method abstract a()Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method abstract b(Lcom/google/common/cache/j$r;Lcom/google/common/cache/n;Ljava/lang/Object;I)Lcom/google/common/cache/j$a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/j$r<",
            "TK;TV;>;",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;TV;I)",
            "Lcom/google/common/cache/j$a0<",
            "TK;TV;>;"
        }
    .end annotation
.end method
