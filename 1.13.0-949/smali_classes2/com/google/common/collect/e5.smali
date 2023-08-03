.class public final Lcom/google/common/collect/e5;
.super Ljava/lang/Object;
.source "Tables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/e5$f;,
        Lcom/google/common/collect/e5$g;,
        Lcom/google/common/collect/e5$d;,
        Lcom/google/common/collect/e5$e;,
        Lcom/google/common/collect/e5$b;,
        Lcom/google/common/collect/e5$c;
    }
.end annotation

.annotation build Lh3/b;
.end annotation


# static fields
.field private static final a:Lcom/google/common/base/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/q<",
            "+",
            "Ljava/util/Map<",
            "**>;+",
            "Ljava/util/Map<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/e5$a;

    invoke-direct {v0}, Lcom/google/common/collect/e5$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/e5;->a:Lcom/google/common/base/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/common/base/q;
    .locals 1

    invoke-static {}, Lcom/google/common/collect/e5;->j()Lcom/google/common/base/q;

    move-result-object v0

    return-object v0
.end method

.method static b(Lcom/google/common/collect/d5;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/d5<",
            "***>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/d5;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/google/common/collect/d5;

    .line 3
    invoke-interface {p0}, Lcom/google/common/collect/d5;->cellSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/common/collect/d5;->cellSet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/d5$a;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TR;TC;TV;)",
            "Lcom/google/common/collect/d5$a<",
            "TR;TC;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/e5$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/e5$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static d(Ljava/util/Map;Lcom/google/common/base/i0;)Lcom/google/common/collect/d5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;",
            "Lcom/google/common/base/i0<",
            "+",
            "Ljava/util/Map<",
            "TC;TV;>;>;)",
            "Lcom/google/common/collect/d5<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/a0;->d(Z)V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/common/collect/b5;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/b5;-><init>(Ljava/util/Map;Lcom/google/common/base/i0;)V

    return-object v0
.end method

.method public static e(Lcom/google/common/collect/d5;)Lcom/google/common/collect/d5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/d5<",
            "TR;TC;TV;>;)",
            "Lcom/google/common/collect/d5<",
            "TR;TC;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/c5;->z(Lcom/google/common/collect/d5;Ljava/lang/Object;)Lcom/google/common/collect/d5;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/google/common/collect/d5;Lcom/google/common/base/q;)Lcom/google/common/collect/d5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/d5<",
            "TR;TC;TV1;>;",
            "Lcom/google/common/base/q<",
            "-TV1;TV2;>;)",
            "Lcom/google/common/collect/d5<",
            "TR;TC;TV2;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    new-instance v0, Lcom/google/common/collect/e5$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/e5$d;-><init>(Lcom/google/common/collect/d5;Lcom/google/common/base/q;)V

    return-object v0
.end method

.method public static g(Lcom/google/common/collect/d5;)Lcom/google/common/collect/d5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/d5<",
            "TR;TC;TV;>;)",
            "Lcom/google/common/collect/d5<",
            "TC;TR;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/e5$e;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/e5$e;

    iget-object p0, p0, Lcom/google/common/collect/e5$e;->c:Lcom/google/common/collect/d5;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/e5$e;

    invoke-direct {v0, p0}, Lcom/google/common/collect/e5$e;-><init>(Lcom/google/common/collect/d5;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static h(Lcom/google/common/collect/l4;)Lcom/google/common/collect/l4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/l4<",
            "TR;+TC;+TV;>;)",
            "Lcom/google/common/collect/l4<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    new-instance v0, Lcom/google/common/collect/e5$f;

    invoke-direct {v0, p0}, Lcom/google/common/collect/e5$f;-><init>(Lcom/google/common/collect/l4;)V

    return-object v0
.end method

.method public static i(Lcom/google/common/collect/d5;)Lcom/google/common/collect/d5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/d5<",
            "+TR;+TC;+TV;>;)",
            "Lcom/google/common/collect/d5<",
            "TR;TC;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/e5$g;

    invoke-direct {v0, p0}, Lcom/google/common/collect/e5$g;-><init>(Lcom/google/common/collect/d5;)V

    return-object v0
.end method

.method private static j()Lcom/google/common/base/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/q<",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/e5;->a:Lcom/google/common/base/q;

    return-object v0
.end method
