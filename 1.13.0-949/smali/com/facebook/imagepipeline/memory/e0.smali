.class public Lcom/facebook/imagepipeline/memory/e0;
.super Ljava/lang/Object;
.source "PoolFactory.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation build Ls7/c;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/memory/d0;

.field private b:Lcom/facebook/imagepipeline/memory/w;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private c:Lcom/facebook/imagepipeline/memory/e;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private d:Lcom/facebook/imagepipeline/memory/w;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private e:Lcom/facebook/imagepipeline/memory/r;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private f:Lcom/facebook/imagepipeline/memory/w;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private g:Lcom/facebook/common/memory/g;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private h:Lcom/facebook/common/memory/j;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private i:Lcom/facebook/imagepipeline/memory/h0;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private j:Lcom/facebook/common/memory/a;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/memory/d0;

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    return-void
.end method

.method private a()Lcom/facebook/imagepipeline/memory/w;
    .locals 8
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->b:Lcom/facebook/imagepipeline/memory/w;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v1, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunkPool;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    .line 3
    const-class v4, Lcom/facebook/common/memory/c;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/facebook/imagepipeline/memory/f0;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/facebook/imagepipeline/memory/g0;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 6
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/d0;->i()Lcom/facebook/common/memory/c;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 7
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/d0;->g()Lcom/facebook/imagepipeline/memory/f0;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 8
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/d0;->h()Lcom/facebook/imagepipeline/memory/g0;

    move-result-object v3

    aput-object v3, v2, v7

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/memory/w;

    iput-object v1, p0, Lcom/facebook/imagepipeline/memory/e0;->b:Lcom/facebook/imagepipeline/memory/w;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->b:Lcom/facebook/imagepipeline/memory/w;

    goto :goto_0

    .line 11
    :catch_1
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->b:Lcom/facebook/imagepipeline/memory/w;

    goto :goto_0

    .line 12
    :catch_2
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->b:Lcom/facebook/imagepipeline/memory/w;

    goto :goto_0

    .line 13
    :catch_3
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->b:Lcom/facebook/imagepipeline/memory/w;

    goto :goto_0

    .line 14
    :catch_4
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->b:Lcom/facebook/imagepipeline/memory/w;

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->b:Lcom/facebook/imagepipeline/memory/w;

    return-object v0
.end method

.method private f(I)Lcom/facebook/imagepipeline/memory/w;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memoryChunkType"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/e0;->a()Lcom/facebook/imagepipeline/memory/w;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid MemoryChunkType"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/e0;->c()Lcom/facebook/imagepipeline/memory/w;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/e0;->g()Lcom/facebook/imagepipeline/memory/w;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public b()Lcom/facebook/imagepipeline/memory/e;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->c:Lcom/facebook/imagepipeline/memory/e;

    if-nez v0, :cond_6

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/d0;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "dummy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "dummy_with_tracking"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "experimental"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "legacy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "legacy_default_params"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    :cond_0
    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    .line 4
    new-instance v0, Lcom/facebook/imagepipeline/memory/j;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 5
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/d0;->i()Lcom/facebook/common/memory/c;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 6
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/d0;->c()Lcom/facebook/imagepipeline/memory/f0;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 7
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/d0;->d()Lcom/facebook/imagepipeline/memory/g0;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 8
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/memory/d0;->l()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/imagepipeline/memory/j;-><init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/f0;Lcom/facebook/imagepipeline/memory/g0;Z)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->c:Lcom/facebook/imagepipeline/memory/e;

    goto :goto_2

    .line 9
    :cond_1
    new-instance v0, Lcom/facebook/imagepipeline/memory/j;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 10
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/d0;->i()Lcom/facebook/common/memory/c;

    move-result-object v1

    .line 11
    invoke-static {}, Lcom/facebook/imagepipeline/memory/l;->a()Lcom/facebook/imagepipeline/memory/f0;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 12
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/d0;->d()Lcom/facebook/imagepipeline/memory/g0;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 13
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/memory/d0;->l()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/imagepipeline/memory/j;-><init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/f0;Lcom/facebook/imagepipeline/memory/g0;Z)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->c:Lcom/facebook/imagepipeline/memory/e;

    goto :goto_2

    .line 14
    :cond_2
    new-instance v0, Lcom/facebook/imagepipeline/memory/t;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 15
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/d0;->b()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 16
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/d0;->a()I

    move-result v2

    .line 17
    invoke-static {}, Lcom/facebook/imagepipeline/memory/a0;->h()Lcom/facebook/imagepipeline/memory/a0;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 18
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/memory/d0;->m()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 19
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/memory/d0;->i()Lcom/facebook/common/memory/c;

    move-result-object v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/imagepipeline/memory/t;-><init>(IILcom/facebook/imagepipeline/memory/g0;Lcom/facebook/common/memory/c;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->c:Lcom/facebook/imagepipeline/memory/e;

    goto :goto_2

    .line 20
    :cond_4
    new-instance v0, Lcom/facebook/imagepipeline/memory/q;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/q;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->c:Lcom/facebook/imagepipeline/memory/e;

    goto :goto_2

    .line 21
    :cond_5
    new-instance v0, Lcom/facebook/imagepipeline/memory/p;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/p;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->c:Lcom/facebook/imagepipeline/memory/e;

    .line 22
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->c:Lcom/facebook/imagepipeline/memory/e;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f64eb86 -> :sswitch_4
        -0x41f50c37 -> :sswitch_3
        -0x181d2318 -> :sswitch_2
        -0x17f85147 -> :sswitch_1
        0x5b804a8 -> :sswitch_0
    .end sparse-switch
.end method

.method public c()Lcom/facebook/imagepipeline/memory/w;
    .locals 8
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->d:Lcom/facebook/imagepipeline/memory/w;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v1, Lcom/facebook/imagepipeline/memory/BufferMemoryChunkPool;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    .line 3
    const-class v4, Lcom/facebook/common/memory/c;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/facebook/imagepipeline/memory/f0;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/facebook/imagepipeline/memory/g0;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 6
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/d0;->i()Lcom/facebook/common/memory/c;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 7
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/d0;->g()Lcom/facebook/imagepipeline/memory/f0;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 8
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/d0;->h()Lcom/facebook/imagepipeline/memory/g0;

    move-result-object v3

    aput-object v3, v2, v7

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/memory/w;

    iput-object v1, p0, Lcom/facebook/imagepipeline/memory/e0;->d:Lcom/facebook/imagepipeline/memory/w;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->d:Lcom/facebook/imagepipeline/memory/w;

    goto :goto_0

    .line 11
    :catch_1
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->d:Lcom/facebook/imagepipeline/memory/w;

    goto :goto_0

    .line 12
    :catch_2
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->d:Lcom/facebook/imagepipeline/memory/w;

    goto :goto_0

    .line 13
    :catch_3
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->d:Lcom/facebook/imagepipeline/memory/w;

    goto :goto_0

    .line 14
    :catch_4
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->d:Lcom/facebook/imagepipeline/memory/w;

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->d:Lcom/facebook/imagepipeline/memory/w;

    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/memory/r;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->e:Lcom/facebook/imagepipeline/memory/r;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/memory/r;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 3
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/d0;->i()Lcom/facebook/common/memory/c;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/d0;->f()Lcom/facebook/imagepipeline/memory/f0;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/memory/r;-><init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/f0;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->e:Lcom/facebook/imagepipeline/memory/r;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->e:Lcom/facebook/imagepipeline/memory/r;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/d0;->f()Lcom/facebook/imagepipeline/memory/f0;

    move-result-object v0

    iget v0, v0, Lcom/facebook/imagepipeline/memory/f0;->g:I

    return v0
.end method

.method public g()Lcom/facebook/imagepipeline/memory/w;
    .locals 10
    .annotation runtime Lr7/h;
    .end annotation

    const-string v0, ""

    const-string v1, "PoolFactory"

    .line 1
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/e0;->f:Lcom/facebook/imagepipeline/memory/w;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    const-class v3, Lcom/facebook/imagepipeline/memory/NativeMemoryChunkPool;

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    .line 3
    const-class v6, Lcom/facebook/common/memory/c;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Lcom/facebook/imagepipeline/memory/f0;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-class v6, Lcom/facebook/imagepipeline/memory/g0;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    .line 4
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 5
    iget-object v5, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 6
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/memory/d0;->i()Lcom/facebook/common/memory/c;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 7
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/memory/d0;->g()Lcom/facebook/imagepipeline/memory/f0;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 8
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/memory/d0;->h()Lcom/facebook/imagepipeline/memory/g0;

    move-result-object v5

    aput-object v5, v4, v9

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/imagepipeline/memory/w;

    iput-object v3, p0, Lcom/facebook/imagepipeline/memory/e0;->f:Lcom/facebook/imagepipeline/memory/w;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 10
    invoke-static {v1, v0, v3}, Lp0/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    iput-object v2, p0, Lcom/facebook/imagepipeline/memory/e0;->f:Lcom/facebook/imagepipeline/memory/w;

    goto :goto_0

    :catch_1
    move-exception v3

    .line 12
    invoke-static {v1, v0, v3}, Lp0/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    iput-object v2, p0, Lcom/facebook/imagepipeline/memory/e0;->f:Lcom/facebook/imagepipeline/memory/w;

    goto :goto_0

    :catch_2
    move-exception v3

    .line 14
    invoke-static {v1, v0, v3}, Lp0/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    iput-object v2, p0, Lcom/facebook/imagepipeline/memory/e0;->f:Lcom/facebook/imagepipeline/memory/w;

    goto :goto_0

    :catch_3
    move-exception v3

    .line 16
    invoke-static {v1, v0, v3}, Lp0/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    iput-object v2, p0, Lcom/facebook/imagepipeline/memory/e0;->f:Lcom/facebook/imagepipeline/memory/w;

    goto :goto_0

    :catch_4
    move-exception v3

    .line 18
    invoke-static {v1, v0, v3}, Lp0/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    iput-object v2, p0, Lcom/facebook/imagepipeline/memory/e0;->f:Lcom/facebook/imagepipeline/memory/w;

    .line 20
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->f:Lcom/facebook/imagepipeline/memory/w;

    return-object v0
.end method

.method public h()Lcom/facebook/common/memory/g;
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/core/o;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/memory/e0;->i(I)Lcom/facebook/common/memory/g;

    move-result-object v0

    return-object v0
.end method

.method public i(I)Lcom/facebook/common/memory/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memoryChunkType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->g:Lcom/facebook/common/memory/g;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/e0;->f(I)Lcom/facebook/imagepipeline/memory/w;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get pool for chunk type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/facebook/common/internal/j;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Lcom/facebook/imagepipeline/memory/z;

    .line 5
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/e0;->j()Lcom/facebook/common/memory/j;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/facebook/imagepipeline/memory/z;-><init>(Lcom/facebook/imagepipeline/memory/w;Lcom/facebook/common/memory/j;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/e0;->g:Lcom/facebook/common/memory/g;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/e0;->g:Lcom/facebook/common/memory/g;

    return-object p1
.end method

.method public j()Lcom/facebook/common/memory/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->h:Lcom/facebook/common/memory/j;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/common/memory/j;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/e0;->l()Lcom/facebook/common/memory/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/common/memory/j;-><init>(Lcom/facebook/common/memory/a;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->h:Lcom/facebook/common/memory/j;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->h:Lcom/facebook/common/memory/j;

    return-object v0
.end method

.method public k()Lcom/facebook/imagepipeline/memory/h0;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->i:Lcom/facebook/imagepipeline/memory/h0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/memory/h0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 3
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/d0;->i()Lcom/facebook/common/memory/c;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/d0;->f()Lcom/facebook/imagepipeline/memory/f0;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/memory/h0;-><init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/f0;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->i:Lcom/facebook/imagepipeline/memory/h0;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->i:Lcom/facebook/imagepipeline/memory/h0;

    return-object v0
.end method

.method public l()Lcom/facebook/common/memory/a;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->j:Lcom/facebook/common/memory/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/memory/s;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 3
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/d0;->i()Lcom/facebook/common/memory/c;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 4
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/d0;->j()Lcom/facebook/imagepipeline/memory/f0;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/e0;->a:Lcom/facebook/imagepipeline/memory/d0;

    .line 5
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/d0;->k()Lcom/facebook/imagepipeline/memory/g0;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/memory/s;-><init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/f0;Lcom/facebook/imagepipeline/memory/g0;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->j:Lcom/facebook/common/memory/a;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/e0;->j:Lcom/facebook/common/memory/a;

    return-object v0
.end method
