.class final Lcom/google/common/collect/f3$u;
.super Lcom/google/common/collect/f3$v;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/collect/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "u"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/f3$v<",
        "TK;TV;>;",
        "Lcom/google/common/collect/u<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final g:Lcom/google/common/collect/u;
    .annotation build Lcom/google/j2objc/annotations/RetainedWith;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/u<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/u;Lcom/google/common/base/b0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/u<",
            "TK;TV;>;",
            "Lcom/google/common/base/b0<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/f3$v;-><init>(Ljava/util/Map;Lcom/google/common/base/b0;)V

    .line 2
    new-instance v0, Lcom/google/common/collect/f3$u;

    .line 3
    invoke-interface {p1}, Lcom/google/common/collect/u;->inverse()Lcom/google/common/collect/u;

    move-result-object p1

    invoke-static {p2}, Lcom/google/common/collect/f3$u;->g(Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object p2

    invoke-direct {v0, p1, p2, p0}, Lcom/google/common/collect/f3$u;-><init>(Lcom/google/common/collect/u;Lcom/google/common/base/b0;Lcom/google/common/collect/u;)V

    iput-object v0, p0, Lcom/google/common/collect/f3$u;->g:Lcom/google/common/collect/u;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/u;Lcom/google/common/base/b0;Lcom/google/common/collect/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/u<",
            "TK;TV;>;",
            "Lcom/google/common/base/b0<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Lcom/google/common/collect/u<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/f3$v;-><init>(Ljava/util/Map;Lcom/google/common/base/b0;)V

    .line 5
    iput-object p3, p0, Lcom/google/common/collect/f3$u;->g:Lcom/google/common/collect/u;

    return-void
.end method

.method private static g(Lcom/google/common/base/b0;)Lcom/google/common/base/b0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/b0<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lcom/google/common/base/b0<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/f3$u$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/f3$u$a;-><init>(Lcom/google/common/base/b0;)V

    return-object v0
.end method


# virtual methods
.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/f3$n;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/a0;->d(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/f3$u;->h()Lcom/google/common/collect/u;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/u;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method h()Lcom/google/common/collect/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/u<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f3$n;->d:Ljava/util/Map;

    check-cast v0, Lcom/google/common/collect/u;

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/u<",
            "TV;TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f3$u;->g:Lcom/google/common/collect/u;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/f3$u;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/f3$u;->g:Lcom/google/common/collect/u;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
