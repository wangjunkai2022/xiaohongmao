.class Lcom/facebook/imagepipeline/producers/o0$b;
.super Lcom/facebook/imagepipeline/producers/p;
.source "PostprocessorProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/p<",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final i:Lcom/facebook/imagepipeline/producers/u0;

.field private final j:Lcom/facebook/imagepipeline/producers/s0;

.field private final k:Lcom/facebook/imagepipeline/request/d;

.field private l:Z
    .annotation build Ls7/a;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field

.field private m:Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .annotation build Ls7/a;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field

.field private n:I
    .annotation build Ls7/a;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field

.field private o:Z
    .annotation build Ls7/a;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field

.field private p:Z
    .annotation build Ls7/a;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field

.field final synthetic q:Lcom/facebook/imagepipeline/producers/o0;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/o0;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/request/d;Lcom/facebook/imagepipeline/producers/s0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "consumer",
            "listener",
            "postprocessor",
            "producerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/u0;",
            "Lcom/facebook/imagepipeline/request/d;",
            "Lcom/facebook/imagepipeline/producers/s0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/o0$b;->q:Lcom/facebook/imagepipeline/producers/o0;

    .line 2
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/p;-><init>(Lcom/facebook/imagepipeline/producers/l;)V

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/o0$b;->m:Lcom/facebook/common/references/a;

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/facebook/imagepipeline/producers/o0$b;->n:I

    .line 5
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/producers/o0$b;->o:Z

    .line 6
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/producers/o0$b;->p:Z

    .line 7
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/o0$b;->i:Lcom/facebook/imagepipeline/producers/u0;

    .line 8
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/o0$b;->k:Lcom/facebook/imagepipeline/request/d;

    .line 9
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/o0$b;->j:Lcom/facebook/imagepipeline/producers/s0;

    .line 10
    new-instance p2, Lcom/facebook/imagepipeline/producers/o0$b$a;

    invoke-direct {p2, p0, p1}, Lcom/facebook/imagepipeline/producers/o0$b$a;-><init>(Lcom/facebook/imagepipeline/producers/o0$b;Lcom/facebook/imagepipeline/producers/o0;)V

    invoke-interface {p5, p2}, Lcom/facebook/imagepipeline/producers/s0;->f(Lcom/facebook/imagepipeline/producers/t0;)V

    return-void
.end method

.method private A()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/o0$b;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/o0$b;->m:Lcom/facebook/common/references/a;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/facebook/imagepipeline/producers/o0$b;->m:Lcom/facebook/common/references/a;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/producers/o0$b;->l:Z

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {v0}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    return v1

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private B(Lcom/facebook/common/references/a;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceImageRef",
            "status"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/references/a;->A(Lcom/facebook/common/references/a;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/j;->d(Ljava/lang/Boolean;)V

    .line 2
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/image/c;

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/o0$b;->K(Lcom/facebook/imagepipeline/image/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/o0$b;->G(Lcom/facebook/common/references/a;I)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/o0$b;->i:Lcom/facebook/imagepipeline/producers/u0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/o0$b;->j:Lcom/facebook/imagepipeline/producers/s0;

    const-string v2, "PostprocessorProducer"

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/u0;->d(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/image/c;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/o0$b;->I(Lcom/facebook/imagepipeline/image/c;)Lcom/facebook/common/references/a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/o0$b;->i:Lcom/facebook/imagepipeline/producers/u0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/o0$b;->j:Lcom/facebook/imagepipeline/producers/s0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/o0$b;->k:Lcom/facebook/imagepipeline/request/d;

    .line 7
    invoke-direct {p0, p1, v1, v3}, Lcom/facebook/imagepipeline/producers/o0$b;->C(Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/imagepipeline/request/d;)Ljava/util/Map;

    move-result-object v3

    .line 8
    invoke-interface {p1, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/u0;->j(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    invoke-direct {p0, v0, p2}, Lcom/facebook/imagepipeline/producers/o0$b;->G(Lcom/facebook/common/references/a;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-static {v0}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    :try_start_2
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/o0$b;->i:Lcom/facebook/imagepipeline/producers/u0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/o0$b;->j:Lcom/facebook/imagepipeline/producers/s0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/o0$b;->k:Lcom/facebook/imagepipeline/request/d;

    .line 12
    invoke-direct {p0, p2, v1, v3}, Lcom/facebook/imagepipeline/producers/o0$b;->C(Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/imagepipeline/request/d;)Ljava/util/Map;

    move-result-object v3

    .line 13
    invoke-interface {p2, v1, v2, p1, v3}, Lcom/facebook/imagepipeline/producers/u0;->k(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/o0$b;->F(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    invoke-static {v0}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    return-void

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    .line 16
    throw p1
.end method

.method private C(Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/imagepipeline/request/d;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "listener",
            "producerContext",
            "postprocessor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/u0;",
            "Lcom/facebook/imagepipeline/producers/s0;",
            "Lcom/facebook/imagepipeline/request/d;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    const-string v0, "PostprocessorProducer"

    .line 1
    invoke-interface {p1, p2, v0}, Lcom/facebook/imagepipeline/producers/u0;->f(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p3}, Lcom/facebook/imagepipeline/request/d;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Postprocessor"

    invoke-static {p2, p1}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized D()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/o0$b;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private E()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/o0$b;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/l;->b()V

    :cond_0
    return-void
.end method

.method private F(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/o0$b;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/l;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private G(Lcom/facebook/common/references/a;I)V
    .locals 2
    .param p1    # Lcom/facebook/common/references/a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newRef",
            "status"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->f(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/o0$b;->D()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/o0$b;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/l;->c(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private I(Lcom/facebook/imagepipeline/image/c;)Lcom/facebook/common/references/a;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceImage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/c;",
            ")",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/facebook/imagepipeline/image/d;

    .line 2
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/d;->k()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/o0$b;->k:Lcom/facebook/imagepipeline/request/d;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/o0$b;->q:Lcom/facebook/imagepipeline/producers/o0;

    invoke-static {v3}, Lcom/facebook/imagepipeline/producers/o0;->d(Lcom/facebook/imagepipeline/producers/o0;)Lcom/facebook/imagepipeline/bitmaps/f;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/facebook/imagepipeline/request/d;->c(Landroid/graphics/Bitmap;Lcom/facebook/imagepipeline/bitmaps/f;)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/d;->D()I

    move-result v2

    .line 5
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/d;->A()I

    move-result v3

    .line 6
    :try_start_0
    new-instance v4, Lcom/facebook/imagepipeline/image/d;

    .line 7
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/c;->a()Lcom/facebook/imagepipeline/image/j;

    move-result-object p1

    invoke-direct {v4, v1, p1, v2, v3}, Lcom/facebook/imagepipeline/image/d;-><init>(Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/image/j;II)V

    .line 8
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/c;->getExtras()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/facebook/imagepipeline/image/c;->i(Ljava/util/Map;)V

    .line 9
    invoke-static {v4}, Lcom/facebook/common/references/a;->D(Ljava/io/Closeable;)Lcom/facebook/common/references/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {v1}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    .line 11
    throw p1
.end method

.method private declared-synchronized J()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/o0$b;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/o0$b;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/o0$b;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/o0$b;->m:Lcom/facebook/common/references/a;

    .line 2
    invoke-static {v0}, Lcom/facebook/common/references/a;->A(Lcom/facebook/common/references/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/o0$b;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private K(Lcom/facebook/imagepipeline/image/c;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceImage"
        }
    .end annotation

    instance-of p1, p1, Lcom/facebook/imagepipeline/image/d;

    return p1
.end method

.method private L()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/o0$b;->q:Lcom/facebook/imagepipeline/producers/o0;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/o0;->c(Lcom/facebook/imagepipeline/producers/o0;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/producers/o0$b$b;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/producers/o0$b$b;-><init>(Lcom/facebook/imagepipeline/producers/o0$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private M(Lcom/facebook/common/references/a;I)V
    .locals 1
    .param p1    # Lcom/facebook/common/references/a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceImageRef",
            "status"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;I)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/o0$b;->l:Z

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/o0$b;->m:Lcom/facebook/common/references/a;

    .line 5
    invoke-static {p1}, Lcom/facebook/common/references/a;->h(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/o0$b;->m:Lcom/facebook/common/references/a;

    .line 6
    iput p2, p0, Lcom/facebook/imagepipeline/producers/o0$b;->n:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/producers/o0$b;->o:Z

    .line 8
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/o0$b;->J()Z

    move-result p1

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {v0}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    if-eqz p1, :cond_1

    .line 11
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/o0$b;->L()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic s(Lcom/facebook/imagepipeline/producers/o0$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/o0$b;->E()V

    return-void
.end method

.method static synthetic t(Lcom/facebook/imagepipeline/producers/o0$b;)Lcom/facebook/common/references/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/o0$b;->m:Lcom/facebook/common/references/a;

    return-object p0
.end method

.method static synthetic u(Lcom/facebook/imagepipeline/producers/o0$b;Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;
    .locals 0

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/o0$b;->m:Lcom/facebook/common/references/a;

    return-object p1
.end method

.method static synthetic v(Lcom/facebook/imagepipeline/producers/o0$b;)I
    .locals 0

    iget p0, p0, Lcom/facebook/imagepipeline/producers/o0$b;->n:I

    return p0
.end method

.method static synthetic w(Lcom/facebook/imagepipeline/producers/o0$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/producers/o0$b;->o:Z

    return p1
.end method

.method static synthetic x(Lcom/facebook/imagepipeline/producers/o0$b;Lcom/facebook/common/references/a;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/o0$b;->B(Lcom/facebook/common/references/a;I)V

    return-void
.end method

.method static synthetic y(Lcom/facebook/imagepipeline/producers/o0$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/o0$b;->z()V

    return-void
.end method

.method private z()V
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/o0$b;->p:Z

    .line 3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/o0$b;->J()Z

    move-result v0

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/o0$b;->L()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected H(Lcom/facebook/common/references/a;I)V
    .locals 1
    .param p1    # Lcom/facebook/common/references/a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newResult",
            "status"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/references/a;->A(Lcom/facebook/common/references/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->f(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/o0$b;->G(Lcom/facebook/common/references/a;I)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/o0$b;->M(Lcom/facebook/common/references/a;I)V

    return-void
.end method

.method protected h()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/o0$b;->E()V

    return-void
.end method

.method protected i(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/o0$b;->F(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected bridge synthetic j(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "newResult",
            "status"
        }
    .end annotation

    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/o0$b;->H(Lcom/facebook/common/references/a;I)V

    return-void
.end method
