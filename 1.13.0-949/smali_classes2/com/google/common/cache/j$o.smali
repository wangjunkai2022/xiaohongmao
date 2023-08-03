.class Lcom/google/common/cache/j$o;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lcom/google/common/cache/c;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/cache/c<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final b:J = 0x1L


# instance fields
.field final a:Lcom/google/common/cache/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/j<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/cache/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/d<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/cache/j;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/common/cache/j;-><init>(Lcom/google/common/cache/d;Lcom/google/common/cache/CacheLoader;)V

    invoke-direct {p0, v0}, Lcom/google/common/cache/j$o;-><init>(Lcom/google/common/cache/j;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/cache/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/j<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/common/cache/j$o;->a:Lcom/google/common/cache/j;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/cache/j;Lcom/google/common/cache/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/cache/j$o;-><init>(Lcom/google/common/cache/j;)V

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/j$o;->a:Lcom/google/common/cache/j;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/j;->o(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method public J()Lcom/google/common/cache/f;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/common/cache/a$a;

    invoke-direct {v0}, Lcom/google/common/cache/a$a;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/common/cache/j$o;->a:Lcom/google/common/cache/j;

    iget-object v1, v1, Lcom/google/common/cache/j;->r:Lcom/google/common/cache/a$b;

    invoke-virtual {v0, v1}, Lcom/google/common/cache/a$a;->g(Lcom/google/common/cache/a$b;)V

    .line 3
    iget-object v1, p0, Lcom/google/common/cache/j$o;->a:Lcom/google/common/cache/j;

    iget-object v1, v1, Lcom/google/common/cache/j;->c:[Lcom/google/common/cache/j$r;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 4
    iget-object v4, v4, Lcom/google/common/cache/j$r;->n:Lcom/google/common/cache/a$b;

    invoke-virtual {v0, v4}, Lcom/google/common/cache/a$a;->g(Lcom/google/common/cache/a$b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/cache/a$a;->f()Lcom/google/common/cache/f;

    move-result-object v0

    return-object v0
.end method

.method public K()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/j$o;->a:Lcom/google/common/cache/j;

    invoke-virtual {v0}, Lcom/google/common/cache/j;->clear()V

    return-void
.end method

.method a()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/common/cache/j$p;

    iget-object v1, p0, Lcom/google/common/cache/j$o;->a:Lcom/google/common/cache/j;

    invoke-direct {v0, v1}, Lcom/google/common/cache/j$p;-><init>(Lcom/google/common/cache/j;)V

    return-object v0
.end method

.method public asMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/j$o;->a:Lcom/google/common/cache/j;

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/j$o;->a:Lcom/google/common/cache/j;

    invoke-virtual {v0}, Lcom/google/common/cache/j;->b()V

    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/concurrent/Callable<",
            "+TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/j$o;->a:Lcom/google/common/cache/j;

    new-instance v1, Lcom/google/common/cache/j$o$a;

    invoke-direct {v1, p0, p2}, Lcom/google/common/cache/j$o$a;-><init>(Lcom/google/common/cache/j$o;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/common/cache/j;->m(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/j$o;->a:Lcom/google/common/cache/j;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/cache/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/j$o;->a:Lcom/google/common/cache/j;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/j;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public q(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/j$o;->a:Lcom/google/common/cache/j;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/j$o;->a:Lcom/google/common/cache/j;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/j;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()J
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/j$o;->a:Lcom/google/common/cache/j;

    invoke-virtual {v0}, Lcom/google/common/cache/j;->A()J

    move-result-wide v0

    return-wide v0
.end method

.method public u(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/j$o;->a:Lcom/google/common/cache/j;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/j;->v(Ljava/lang/Iterable;)V

    return-void
.end method
