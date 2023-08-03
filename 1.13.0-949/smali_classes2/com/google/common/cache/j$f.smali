.class abstract enum Lcom/google/common/cache/j$f;
.super Ljava/lang/Enum;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/cache/j$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/cache/j$f;

.field public static final enum b:Lcom/google/common/cache/j$f;

.field public static final enum c:Lcom/google/common/cache/j$f;

.field public static final enum d:Lcom/google/common/cache/j$f;

.field public static final enum e:Lcom/google/common/cache/j$f;

.field public static final enum f:Lcom/google/common/cache/j$f;

.field public static final enum g:Lcom/google/common/cache/j$f;

.field public static final enum h:Lcom/google/common/cache/j$f;

.field static final i:I = 0x1

.field static final j:I = 0x2

.field static final k:I = 0x4

.field static final l:[Lcom/google/common/cache/j$f;

.field private static final synthetic m:[Lcom/google/common/cache/j$f;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/google/common/cache/j$f$a;

    const-string v1, "STRONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/j$f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/j$f;->a:Lcom/google/common/cache/j$f;

    .line 2
    new-instance v1, Lcom/google/common/cache/j$f$b;

    const-string v3, "STRONG_ACCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/common/cache/j$f$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/cache/j$f;->b:Lcom/google/common/cache/j$f;

    .line 3
    new-instance v3, Lcom/google/common/cache/j$f$c;

    const-string v5, "STRONG_WRITE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/common/cache/j$f$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/common/cache/j$f;->c:Lcom/google/common/cache/j$f;

    .line 4
    new-instance v5, Lcom/google/common/cache/j$f$d;

    const-string v7, "STRONG_ACCESS_WRITE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/common/cache/j$f$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/common/cache/j$f;->d:Lcom/google/common/cache/j$f;

    .line 5
    new-instance v7, Lcom/google/common/cache/j$f$e;

    const-string v9, "WEAK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/common/cache/j$f$e;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/common/cache/j$f;->e:Lcom/google/common/cache/j$f;

    .line 6
    new-instance v9, Lcom/google/common/cache/j$f$f;

    const-string v11, "WEAK_ACCESS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/common/cache/j$f$f;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/common/cache/j$f;->f:Lcom/google/common/cache/j$f;

    .line 7
    new-instance v11, Lcom/google/common/cache/j$f$g;

    const-string v13, "WEAK_WRITE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/common/cache/j$f$g;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/common/cache/j$f;->g:Lcom/google/common/cache/j$f;

    .line 8
    new-instance v13, Lcom/google/common/cache/j$f$h;

    const-string v15, "WEAK_ACCESS_WRITE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/google/common/cache/j$f$h;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/common/cache/j$f;->h:Lcom/google/common/cache/j$f;

    const/16 v15, 0x8

    new-array v14, v15, [Lcom/google/common/cache/j$f;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    aput-object v9, v14, v12

    const/16 v16, 0x6

    aput-object v11, v14, v16

    const/16 v17, 0x7

    aput-object v13, v14, v17

    .line 9
    sput-object v14, Lcom/google/common/cache/j$f;->m:[Lcom/google/common/cache/j$f;

    new-array v14, v15, [Lcom/google/common/cache/j$f;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    aput-object v9, v14, v12

    aput-object v11, v14, v16

    aput-object v13, v14, v17

    .line 10
    sput-object v14, Lcom/google/common/cache/j$f;->l:[Lcom/google/common/cache/j$f;

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
    invoke-direct {p0, p1, p2}, Lcom/google/common/cache/j$f;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static d(Lcom/google/common/cache/j$t;ZZ)Lcom/google/common/cache/j$f;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/common/cache/j$t;->c:Lcom/google/common/cache/j$t;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    or-int/2addr p0, p1

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    :cond_1
    or-int/2addr p0, v1

    .line 2
    sget-object p1, Lcom/google/common/cache/j$f;->l:[Lcom/google/common/cache/j$f;

    aget-object p0, p1, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/j$f;
    .locals 1

    const-class v0, Lcom/google/common/cache/j$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/cache/j$f;

    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/j$f;
    .locals 1

    sget-object v0, Lcom/google/common/cache/j$f;->m:[Lcom/google/common/cache/j$f;

    invoke-virtual {v0}, [Lcom/google/common/cache/j$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/j$f;

    return-object v0
.end method


# virtual methods
.method a(Lcom/google/common/cache/n;Lcom/google/common/cache/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/n;->o()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/cache/n;->n(J)V

    .line 2
    invoke-interface {p1}, Lcom/google/common/cache/n;->d()Lcom/google/common/cache/n;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/cache/j;->c(Lcom/google/common/cache/n;Lcom/google/common/cache/n;)V

    .line 3
    invoke-interface {p1}, Lcom/google/common/cache/n;->h()Lcom/google/common/cache/n;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/cache/j;->c(Lcom/google/common/cache/n;Lcom/google/common/cache/n;)V

    .line 4
    invoke-static {p1}, Lcom/google/common/cache/j;->F(Lcom/google/common/cache/n;)V

    return-void
.end method

.method b(Lcom/google/common/cache/j$r;Lcom/google/common/cache/n;Lcom/google/common/cache/n;)Lcom/google/common/cache/n;
    .locals 1
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
            "TK;TV;>;",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/common/cache/n;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/common/cache/n;->b()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/common/cache/j$f;->e(Lcom/google/common/cache/j$r;Ljava/lang/Object;ILcom/google/common/cache/n;)Lcom/google/common/cache/n;

    move-result-object p1

    return-object p1
.end method

.method c(Lcom/google/common/cache/n;Lcom/google/common/cache/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/n;->m()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/cache/n;->p(J)V

    .line 2
    invoke-interface {p1}, Lcom/google/common/cache/n;->k()Lcom/google/common/cache/n;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/cache/j;->d(Lcom/google/common/cache/n;Lcom/google/common/cache/n;)V

    .line 3
    invoke-interface {p1}, Lcom/google/common/cache/n;->e()Lcom/google/common/cache/n;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/cache/j;->d(Lcom/google/common/cache/n;Lcom/google/common/cache/n;)V

    .line 4
    invoke-static {p1}, Lcom/google/common/cache/j;->G(Lcom/google/common/cache/n;)V

    return-void
.end method

.method abstract e(Lcom/google/common/cache/j$r;Ljava/lang/Object;ILcom/google/common/cache/n;)Lcom/google/common/cache/n;
    .param p4    # Lcom/google/common/cache/n;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/j$r<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation
.end method
