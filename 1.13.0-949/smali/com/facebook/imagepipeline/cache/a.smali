.class public abstract Lcom/facebook/imagepipeline/cache/a;
.super Ljava/lang/Object;
.source "AbstractAdaptiveCountingMemoryCache.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/j;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/cache/a$d;,
        Lcom/facebook/imagepipeline/cache/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/j<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Ls7/d;
.end annotation


# static fields
.field private static final o:Ljava/lang/String; = "AbstractArcCountingMemoryCache"

.field static final p:I = 0x1f4

.field static final q:I = 0x3e8

.field static final r:I = 0x64
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final s:I = 0x384

.field static final t:I = 0xa


# instance fields
.field final a:Lcom/facebook/imagepipeline/cache/i;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/i<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field final b:Lcom/facebook/imagepipeline/cache/i;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/i<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field final c:Lcom/facebook/imagepipeline/cache/i;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/i<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field private final d:Lcom/facebook/imagepipeline/cache/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/a0<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/imagepipeline/cache/u$a;

.field private final f:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/imagepipeline/cache/v;",
            ">;"
        }
    .end annotation
.end field

.field g:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field private final h:I

.field final i:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field final j:Lcom/facebook/imagepipeline/cache/a$d;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/a<",
            "TK;TV;>.d<TK;>;"
        }
    .end annotation

    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field final k:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TK;>;"
        }
    .end annotation

    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field final l:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field protected m:Lcom/facebook/imagepipeline/cache/v;
    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field private n:J
    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/common/internal/m;Lcom/facebook/imagepipeline/cache/u$a;Lcom/facebook/imagepipeline/cache/a0;IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "memoryCacheParamsSupplier",
            "cacheTrimStrategy",
            "valueDescriptor",
            "adaptiveRatePromil",
            "frequentlyUsedThreshold",
            "ghostListMaxSize",
            "lfuFractionPromil"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/imagepipeline/cache/v;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/u$a;",
            "Lcom/facebook/imagepipeline/cache/a0<",
            "TV;>;IIII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AbstractArcCountingMemoryCache"

    const-string v1, "Create Adaptive Replacement Cache"

    .line 2
    invoke-static {v0, v1}, Lp0/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/a;->d:Lcom/facebook/imagepipeline/cache/a0;

    .line 4
    new-instance v0, Lcom/facebook/imagepipeline/cache/i;

    .line 5
    invoke-direct {p0, p3}, Lcom/facebook/imagepipeline/cache/a;->S(Lcom/facebook/imagepipeline/cache/a0;)Lcom/facebook/imagepipeline/cache/a0;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/cache/i;-><init>(Lcom/facebook/imagepipeline/cache/a0;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->a:Lcom/facebook/imagepipeline/cache/i;

    .line 6
    new-instance v0, Lcom/facebook/imagepipeline/cache/i;

    .line 7
    invoke-direct {p0, p3}, Lcom/facebook/imagepipeline/cache/a;->S(Lcom/facebook/imagepipeline/cache/a0;)Lcom/facebook/imagepipeline/cache/a0;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/cache/i;-><init>(Lcom/facebook/imagepipeline/cache/a0;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->b:Lcom/facebook/imagepipeline/cache/i;

    .line 8
    new-instance v0, Lcom/facebook/imagepipeline/cache/i;

    invoke-direct {p0, p3}, Lcom/facebook/imagepipeline/cache/a;->S(Lcom/facebook/imagepipeline/cache/a0;)Lcom/facebook/imagepipeline/cache/a0;

    move-result-object p3

    invoke-direct {v0, p3}, Lcom/facebook/imagepipeline/cache/i;-><init>(Lcom/facebook/imagepipeline/cache/a0;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->c:Lcom/facebook/imagepipeline/cache/i;

    .line 9
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/a;->e:Lcom/facebook/imagepipeline/cache/u$a;

    .line 10
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/a;->f:Lcom/facebook/common/internal/m;

    .line 11
    invoke-interface {p1}, Lcom/facebook/common/internal/m;->get()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "mMemoryCacheParamsSupplier returned null"

    .line 12
    invoke-static {p1, p2}, Lcom/facebook/common/internal/j;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/cache/v;

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/a;->m:Lcom/facebook/imagepipeline/cache/v;

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/facebook/imagepipeline/cache/a;->n:J

    .line 14
    iput p5, p0, Lcom/facebook/imagepipeline/cache/a;->h:I

    .line 15
    iput p6, p0, Lcom/facebook/imagepipeline/cache/a;->l:I

    .line 16
    new-instance p1, Lcom/facebook/imagepipeline/cache/a$d;

    invoke-direct {p1, p0, p6}, Lcom/facebook/imagepipeline/cache/a$d;-><init>(Lcom/facebook/imagepipeline/cache/a;I)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/a;->j:Lcom/facebook/imagepipeline/cache/a$d;

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/a;->k:Ljava/util/ArrayList;

    const/16 p1, 0x64

    if-lt p7, p1, :cond_1

    const/16 p1, 0x384

    if-le p7, p1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    iput p7, p0, Lcom/facebook/imagepipeline/cache/a;->g:I

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x1f4

    .line 19
    iput p1, p0, Lcom/facebook/imagepipeline/cache/a;->g:I

    .line 20
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/a;->z()V

    :goto_1
    if-lez p4, :cond_3

    const/16 p1, 0x3e8

    if-lt p4, p1, :cond_2

    goto :goto_2

    .line 21
    :cond_2
    iput p4, p0, Lcom/facebook/imagepipeline/cache/a;->i:I

    goto :goto_3

    :cond_3
    :goto_2
    const/16 p1, 0xa

    .line 22
    iput p1, p0, Lcom/facebook/imagepipeline/cache/a;->i:I

    .line 23
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/a;->y()V

    :goto_3
    return-void
.end method

.method private declared-synchronized A(Lcom/facebook/imagepipeline/cache/j$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/j;->o(Z)V

    .line 3
    iput-boolean v1, p1, Lcom/facebook/imagepipeline/cache/j$a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized B(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/j$a;

    .line 2
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/a;->A(Lcom/facebook/imagepipeline/cache/j$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 3
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized C(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldEntries1",
            "oldEntries2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/a;->B(Ljava/util/ArrayList;)V

    .line 2
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/cache/a;->B(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized D(Lcom/facebook/imagepipeline/cache/j$a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->d:Z

    if-nez v0, :cond_1

    iget v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->c:I

    if-nez v0, :cond_1

    .line 2
    iget v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->f:I

    iget v1, p0, Lcom/facebook/imagepipeline/cache/a;->h:I

    if-le v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->b:Lcom/facebook/imagepipeline/cache/i;

    iget-object v1, p1, Lcom/facebook/imagepipeline/cache/j$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/cache/i;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->a:Lcom/facebook/imagepipeline/cache/i;

    iget-object v1, p1, Lcom/facebook/imagepipeline/cache/j$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/cache/i;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 p1, 0x1

    .line 5
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 6
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private E(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/j$a;

    .line 2
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/a;->O(Lcom/facebook/imagepipeline/cache/j$a;)Lcom/facebook/common/references/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private F(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldEntries1",
            "oldEntries2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/a;->E(Ljava/util/ArrayList;)V

    .line 2
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/cache/a;->E(Ljava/util/ArrayList;)V

    return-void
.end method

.method private G(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entries1",
            "entries2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/a;->K(Ljava/util/ArrayList;)V

    .line 2
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/cache/a;->K(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static H(Lcom/facebook/imagepipeline/cache/j$a;)V
    .locals 2
    .param p0    # Lcom/facebook/imagepipeline/cache/j$a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/j$a;->e:Lcom/facebook/imagepipeline/cache/j$b;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/j$a;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/facebook/imagepipeline/cache/j$b;->a(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method private static I(Lcom/facebook/imagepipeline/cache/j$a;)V
    .locals 2
    .param p0    # Lcom/facebook/imagepipeline/cache/j$a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/j$a;->e:Lcom/facebook/imagepipeline/cache/j$b;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/j$a;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/facebook/imagepipeline/cache/j$b;->a(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method private J(Lcom/facebook/imagepipeline/cache/j$a;Lcom/facebook/imagepipeline/cache/j$a;)V
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/cache/j$a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/imagepipeline/cache/j$a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry1",
            "entry2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/cache/a;->I(Lcom/facebook/imagepipeline/cache/j$a;)V

    .line 2
    invoke-static {p2}, Lcom/facebook/imagepipeline/cache/a;->I(Lcom/facebook/imagepipeline/cache/j$a;)V

    return-void
.end method

.method private K(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/j$a;

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/a;->I(Lcom/facebook/imagepipeline/cache/j$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized L(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->j:Lcom/facebook/imagepipeline/cache/a$d;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/a$d;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/facebook/imagepipeline/cache/a;->g:I

    iget v1, p0, Lcom/facebook/imagepipeline/cache/a;->i:I

    add-int v2, v0, v1

    const/16 v3, 0x384

    if-gt v2, v3, :cond_0

    add-int/2addr v0, v1

    .line 3
    iput v0, p0, Lcom/facebook/imagepipeline/cache/a;->g:I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->j:Lcom/facebook/imagepipeline/cache/a$d;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/a$d;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lcom/facebook/imagepipeline/cache/a;->g:I

    iget v1, p0, Lcom/facebook/imagepipeline/cache/a;->i:I

    sub-int/2addr v0, v1

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->k:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget p1, p0, Lcom/facebook/imagepipeline/cache/a;->g:I

    iget v0, p0, Lcom/facebook/imagepipeline/cache/a;->i:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/facebook/imagepipeline/cache/a;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized M()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/imagepipeline/cache/a;->n:J

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/a;->m:Lcom/facebook/imagepipeline/cache/v;

    iget-wide v2, v2, Lcom/facebook/imagepipeline/cache/v;->f:J

    add-long/2addr v0, v2

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/cache/a;->n:J

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->f:Lcom/facebook/common/internal/m;

    .line 6
    invoke-interface {v0}, Lcom/facebook/common/internal/m;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mMemoryCacheParamsSupplier returned null"

    .line 7
    invoke-static {v0, v1}, Lcom/facebook/common/internal/j;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/v;

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->m:Lcom/facebook/imagepipeline/cache/v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized N(Lcom/facebook/imagepipeline/cache/j$a;)Lcom/facebook/common/references/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/a;->x(Lcom/facebook/imagepipeline/cache/j$a;)V

    .line 2
    iget-object v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->b:Lcom/facebook/common/references/a;

    .line 3
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/cache/a$b;

    invoke-direct {v1, p0, p1}, Lcom/facebook/imagepipeline/cache/a$b;-><init>(Lcom/facebook/imagepipeline/cache/a;Lcom/facebook/imagepipeline/cache/j$a;)V

    .line 4
    invoke-static {v0, v1}, Lcom/facebook/common/references/a;->G(Ljava/lang/Object;Lcom/facebook/common/references/h;)Lcom/facebook/common/references/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized O(Lcom/facebook/imagepipeline/cache/j$a;)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->d:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->c:I

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/j$a;->b:Lcom/facebook/common/references/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private P(Lcom/facebook/imagepipeline/cache/j$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/a;->u(Lcom/facebook/imagepipeline/cache/j$a;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/a;->D(Lcom/facebook/imagepipeline/cache/j$a;)Z

    move-result v0

    .line 5
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/a;->O(Lcom/facebook/imagepipeline/cache/j$a;)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {v1}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/cache/a;->H(Lcom/facebook/imagepipeline/cache/j$a;)V

    .line 9
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/a;->M()V

    .line 10
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/a;->p()V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized R(IILcom/facebook/imagepipeline/cache/i;Lcom/facebook/imagepipeline/cache/a$c;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "count",
            "size",
            "ExclusixeEntries",
            "evictionType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/facebook/imagepipeline/cache/i<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;",
            "Lcom/facebook/imagepipeline/cache/a$c;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3
    invoke-virtual {p3}, Lcom/facebook/imagepipeline/cache/i;->d()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p3}, Lcom/facebook/imagepipeline/cache/i;->h()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, p2, :cond_0

    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return-object p1

    .line 5
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :goto_0
    invoke-virtual {p3}, Lcom/facebook/imagepipeline/cache/i;->d()I

    move-result v1

    if-gt v1, p1, :cond_2

    invoke-virtual {p3}, Lcom/facebook/imagepipeline/cache/i;->h()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v1, p2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    monitor-exit p0

    return-object v0

    .line 8
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p3}, Lcom/facebook/imagepipeline/cache/i;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    invoke-virtual {p3, v1}, Lcom/facebook/imagepipeline/cache/i;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/cache/j$a;

    iget v2, v2, Lcom/facebook/imagepipeline/cache/j$a;->f:I

    .line 10
    invoke-direct {p0, v1, v2, p4}, Lcom/facebook/imagepipeline/cache/a;->s(Ljava/lang/Object;ILcom/facebook/imagepipeline/cache/a$c;)V

    .line 11
    invoke-virtual {p3, v1}, Lcom/facebook/imagepipeline/cache/i;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/a;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/cache/i;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private S(Lcom/facebook/imagepipeline/cache/a0;)Lcom/facebook/imagepipeline/cache/a0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "evictableValueDescriptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/a0<",
            "TV;>;)",
            "Lcom/facebook/imagepipeline/cache/a0<",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/cache/a$a;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/cache/a$a;-><init>(Lcom/facebook/imagepipeline/cache/a;Lcom/facebook/imagepipeline/cache/a0;)V

    return-object v0
.end method

.method static synthetic r(Lcom/facebook/imagepipeline/cache/a;Lcom/facebook/imagepipeline/cache/j$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/a;->P(Lcom/facebook/imagepipeline/cache/j$a;)V

    return-void
.end method

.method private declared-synchronized s(Ljava/lang/Object;ILcom/facebook/imagepipeline/cache/a$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "accessCount",
            "evictionType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/facebook/imagepipeline/cache/a$c;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/cache/a$c;->a:Lcom/facebook/imagepipeline/cache/a$c;

    if-ne p3, v0, :cond_0

    .line 2
    iget-object p3, p0, Lcom/facebook/imagepipeline/cache/a;->j:Lcom/facebook/imagepipeline/cache/a$d;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/facebook/imagepipeline/cache/a$d;->a(Ljava/lang/Object;Ljava/lang/Integer;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/facebook/imagepipeline/cache/a;->k:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget p3, p0, Lcom/facebook/imagepipeline/cache/a;->l:I

    if-ne p2, p3, :cond_1

    .line 4
    iget-object p2, p0, Lcom/facebook/imagepipeline/cache/a;->k:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/facebook/imagepipeline/cache/a;->k:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized t(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->d:Lcom/facebook/imagepipeline/cache/a0;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/a0;->a(Ljava/lang/Object;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->m:Lcom/facebook/imagepipeline/cache/v;

    iget v0, v0, Lcom/facebook/imagepipeline/cache/v;->e:I

    const/4 v1, 0x1

    if-gt p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/a;->v()I

    move-result v0

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/a;->m:Lcom/facebook/imagepipeline/cache/v;

    iget v2, v2, Lcom/facebook/imagepipeline/cache/v;->b:I

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/a;->o()I

    move-result v0

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/a;->m:Lcom/facebook/imagepipeline/cache/v;

    iget v2, v2, Lcom/facebook/imagepipeline/cache/v;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, p1

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized u(Lcom/facebook/imagepipeline/cache/j$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->c:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/j;->o(Z)V

    .line 3
    iget v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->c:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized w(Lcom/facebook/imagepipeline/cache/j$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/j;->o(Z)V

    .line 3
    iget v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->f:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized x(Lcom/facebook/imagepipeline/cache/j$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/j;->o(Z)V

    .line 3
    iget v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->c:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->c:I

    .line 4
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/a;->w(Lcom/facebook/imagepipeline/cache/j$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public Q()Ljava/lang/String;
    .locals 3

    const-string v0, "CountingMemoryCache"

    .line 1
    invoke-static {v0}, Lcom/facebook/common/internal/i;->f(Ljava/lang/String;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/a;->c:Lcom/facebook/imagepipeline/cache/i;

    .line 2
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/i;->d()I

    move-result v1

    const-string v2, "cached_entries_count:"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/a;->q()I

    move-result v1

    const-string v2, "exclusive_entries_count"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/facebook/common/internal/i$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->a:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/i;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/j$a;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/i;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/facebook/imagepipeline/cache/j$a;

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/a;->w(Lcom/facebook/imagepipeline/cache/j$a;)V

    .line 6
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/a;->D(Lcom/facebook/imagepipeline/cache/j$a;)Z

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized b()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/i;->h()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/Object;Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "valueRef"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/a<",
            "TV;>;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/cache/a;->j(Ljava/lang/Object;Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/cache/j$b;)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->a:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/i;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/a;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/i;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/a;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/i;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 5
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/cache/a;->B(Ljava/util/ArrayList;)V

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/cache/a;->E(Ljava/util/ArrayList;)V

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/cache/a;->G(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 9
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/a;->M()V

    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/i;->b(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Lcom/facebook/imagepipeline/cache/i;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->c:Lcom/facebook/imagepipeline/cache/i;

    return-object v0
.end method

.method public declared-synchronized f()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->a:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/i;->h()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/a;->b:Lcom/facebook/imagepipeline/cache/i;

    .line 2
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/i;->h()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    .line 3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lcom/facebook/common/references/a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->a:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/i;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/j$a;

    .line 4
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/a;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/i;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/cache/j$a;

    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/a;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v2, p1}, Lcom/facebook/imagepipeline/cache/i;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/cache/j$a;

    if-eqz v2, :cond_0

    .line 6
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/cache/a;->N(Lcom/facebook/imagepipeline/cache/j$a;)Lcom/facebook/common/references/a;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/a;->L(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 8
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/cache/a;->J(Lcom/facebook/imagepipeline/cache/j$a;Lcom/facebook/imagepipeline/cache/j$a;)V

    .line 10
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/a;->M()V

    .line 11
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/a;->p()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/i;->d()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()Lcom/facebook/imagepipeline/cache/v;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->m:Lcom/facebook/imagepipeline/cache/v;

    return-object v0
.end method

.method public j(Ljava/lang/Object;Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/cache/j$b;)Lcom/facebook/common/references/a;
    .locals 6
    .param p3    # Lcom/facebook/imagepipeline/cache/j$b;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "key",
            "valueRef",
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/a<",
            "TV;>;",
            "Lcom/facebook/imagepipeline/cache/j$b<",
            "TK;>;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/a;->M()V

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->a:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/i;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/j$a;

    .line 6
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/a;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/i;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/cache/j$a;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 7
    :goto_1
    invoke-static {v3}, Lcom/facebook/common/internal/j;->o(Z)V

    .line 8
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/a;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v3, p1}, Lcom/facebook/imagepipeline/cache/i;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/imagepipeline/cache/j$a;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 9
    invoke-direct {p0, v3}, Lcom/facebook/imagepipeline/cache/a;->A(Lcom/facebook/imagepipeline/cache/j$a;)V

    .line 10
    invoke-direct {p0, v3}, Lcom/facebook/imagepipeline/cache/a;->O(Lcom/facebook/imagepipeline/cache/j$a;)Lcom/facebook/common/references/a;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v4

    .line 11
    :goto_2
    invoke-virtual {p2}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/facebook/imagepipeline/cache/a;->t(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 12
    invoke-static {p1, p2, p3}, Lcom/facebook/imagepipeline/cache/j$a;->b(Ljava/lang/Object;Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/cache/j$b;)Lcom/facebook/imagepipeline/cache/j$a;

    move-result-object p2

    .line 13
    iget-object p3, p0, Lcom/facebook/imagepipeline/cache/a;->j:Lcom/facebook/imagepipeline/cache/a$d;

    invoke-virtual {p3, p1}, Lcom/facebook/imagepipeline/cache/a$d;->c(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 14
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_3
    iput v2, p2, Lcom/facebook/imagepipeline/cache/j$a;->f:I

    .line 15
    iget-object p3, p0, Lcom/facebook/imagepipeline/cache/a;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {p3, p1, p2}, Lcom/facebook/imagepipeline/cache/i;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/cache/a;->N(Lcom/facebook/imagepipeline/cache/j$a;)Lcom/facebook/common/references/a;

    move-result-object v4

    .line 17
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {v3}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    .line 19
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/cache/a;->J(Lcom/facebook/imagepipeline/cache/j$a;Lcom/facebook/imagepipeline/cache/j$a;)V

    .line 20
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/a;->p()V

    return-object v4

    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public k(Lcom/facebook/common/internal/k;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/k<",
            "TK;>;)I"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->a:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/i;->m(Lcom/facebook/common/internal/k;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/a;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/i;->m(Lcom/facebook/common/internal/k;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/a;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v2, p1}, Lcom/facebook/imagepipeline/cache/i;->m(Lcom/facebook/common/internal/k;)Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/a;->B(Ljava/util/ArrayList;)V

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/a;->E(Ljava/util/ArrayList;)V

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/cache/a;->G(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 9
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/a;->M()V

    .line 10
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/a;->p()V

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized l(Lcom/facebook/common/internal/k;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/k<",
            "TK;>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/i;->g(Lcom/facebook/common/internal/k;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p1, p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public m(Lcom/facebook/common/memory/MemoryTrimType;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trimType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->e:Lcom/facebook/imagepipeline/cache/u$a;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/u$a;->a(Lcom/facebook/common/memory/MemoryTrimType;)D

    move-result-wide v0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/cache/a;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/cache/i;->h()I

    move-result p1

    int-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    mul-double v2, v2, v4

    double-to-int p1, v2

    .line 4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/a;->o()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/a;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/i;->h()I

    move-result v1

    sub-int v2, p1, v1

    .line 6
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    move v0, v2

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/a;->a:Lcom/facebook/imagepipeline/cache/i;

    sget-object v2, Lcom/facebook/imagepipeline/cache/a$c;->a:Lcom/facebook/imagepipeline/cache/a$c;

    const v3, 0x7fffffff

    .line 8
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/facebook/imagepipeline/cache/a;->R(IILcom/facebook/imagepipeline/cache/i;Lcom/facebook/imagepipeline/cache/a$c;)Ljava/util/ArrayList;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/a;->b:Lcom/facebook/imagepipeline/cache/i;

    sget-object v2, Lcom/facebook/imagepipeline/cache/a$c;->b:Lcom/facebook/imagepipeline/cache/a$c;

    .line 10
    invoke-direct {p0, v3, p1, v1, v2}, Lcom/facebook/imagepipeline/cache/a;->R(IILcom/facebook/imagepipeline/cache/i;Lcom/facebook/imagepipeline/cache/a$c;)Ljava/util/ArrayList;

    move-result-object p1

    .line 11
    invoke-direct {p0, v0, p1}, Lcom/facebook/imagepipeline/cache/a;->C(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-direct {p0, v0, p1}, Lcom/facebook/imagepipeline/cache/a;->F(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 14
    invoke-direct {p0, v0, p1}, Lcom/facebook/imagepipeline/cache/a;->G(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 15
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/a;->M()V

    .line 16
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/a;->p()V

    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public n(Ljava/lang/Object;)Lcom/facebook/common/references/a;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->a:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/i;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/j$a;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/i;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/j$a;

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 5
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/a;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v3, p1}, Lcom/facebook/imagepipeline/cache/i;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/cache/j$a;

    .line 6
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget v3, p1, Lcom/facebook/imagepipeline/cache/j$a;->c:I

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Lcom/facebook/common/internal/j;->o(Z)V

    .line 8
    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/j$a;->b:Lcom/facebook/common/references/a;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 9
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 10
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/a;->I(Lcom/facebook/imagepipeline/cache/j$a;)V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized o()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/i;->h()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/a;->a:Lcom/facebook/imagepipeline/cache/i;

    .line 2
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/i;->h()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/a;->b:Lcom/facebook/imagepipeline/cache/i;

    .line 3
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/i;->h()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    .line 4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public p()V
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->m:Lcom/facebook/imagepipeline/cache/v;

    iget v1, v0, Lcom/facebook/imagepipeline/cache/v;->d:I

    iget v0, v0, Lcom/facebook/imagepipeline/cache/v;->b:I

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/a;->v()I

    move-result v2

    sub-int/2addr v0, v2

    .line 4
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/a;->m:Lcom/facebook/imagepipeline/cache/v;

    iget v2, v1, Lcom/facebook/imagepipeline/cache/v;->c:I

    iget v1, v1, Lcom/facebook/imagepipeline/cache/v;->a:I

    .line 6
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/a;->o()I

    move-result v3

    sub-int/2addr v1, v3

    .line 7
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-long v2, v0

    .line 8
    iget v4, p0, Lcom/facebook/imagepipeline/cache/a;->g:I

    int-to-long v5, v4

    mul-long v2, v2, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    long-to-int v3, v2

    int-to-long v7, v1

    int-to-long v9, v4

    mul-long v7, v7, v9

    .line 9
    div-long/2addr v7, v5

    long-to-int v2, v7

    .line 10
    iget-object v4, p0, Lcom/facebook/imagepipeline/cache/a;->a:Lcom/facebook/imagepipeline/cache/i;

    sget-object v5, Lcom/facebook/imagepipeline/cache/a$c;->a:Lcom/facebook/imagepipeline/cache/a$c;

    .line 11
    invoke-direct {p0, v3, v2, v4, v5}, Lcom/facebook/imagepipeline/cache/a;->R(IILcom/facebook/imagepipeline/cache/i;Lcom/facebook/imagepipeline/cache/a$c;)Ljava/util/ArrayList;

    move-result-object v4

    sub-int/2addr v0, v3

    sub-int/2addr v1, v2

    .line 12
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/a;->b:Lcom/facebook/imagepipeline/cache/i;

    sget-object v3, Lcom/facebook/imagepipeline/cache/a$c;->b:Lcom/facebook/imagepipeline/cache/a$c;

    .line 13
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/imagepipeline/cache/a;->R(IILcom/facebook/imagepipeline/cache/i;Lcom/facebook/imagepipeline/cache/a$c;)Ljava/util/ArrayList;

    move-result-object v0

    .line 14
    invoke-direct {p0, v4, v0}, Lcom/facebook/imagepipeline/cache/a;->C(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-direct {p0, v4, v0}, Lcom/facebook/imagepipeline/cache/a;->F(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 17
    invoke-direct {p0, v4, v0}, Lcom/facebook/imagepipeline/cache/a;->G(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    :catchall_0
    move-exception v0

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized q()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->a:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/i;->d()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/a;->b:Lcom/facebook/imagepipeline/cache/i;

    .line 2
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/i;->d()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    .line 3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized v()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/a;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/i;->d()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/a;->a:Lcom/facebook/imagepipeline/cache/i;

    .line 2
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/i;->d()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/a;->b:Lcom/facebook/imagepipeline/cache/i;

    .line 3
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/i;->d()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    .line 4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract y()V
.end method

.method protected abstract z()V
.end method
