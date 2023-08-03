.class public abstract Lcom/facebook/imagepipeline/datasource/a;
.super Lcom/facebook/datasource/a;
.source "AbstractProducerToDataSourceAdapter.java"

# interfaces
.implements Lcom/facebook/imagepipeline/request/c;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/datasource/a<",
        "TT;>;",
        "Lcom/facebook/imagepipeline/request/c;"
    }
.end annotation

.annotation build Ls7/d;
.end annotation


# instance fields
.field private final i:Lcom/facebook/imagepipeline/producers/z0;

.field private final j:Lq1/e;


# direct methods
.method protected constructor <init>(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/z0;Lq1/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "producer",
            "settableProducerContext",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/z0;",
            "Lq1/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/datasource/a;-><init>()V

    .line 2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbstractProducerToDataSourceAdapter()"

    .line 3
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    iput-object p2, p0, Lcom/facebook/imagepipeline/datasource/a;->i:Lcom/facebook/imagepipeline/producers/z0;

    .line 5
    iput-object p3, p0, Lcom/facebook/imagepipeline/datasource/a;->j:Lq1/e;

    .line 6
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/a;->H()V

    .line 7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AbstractProducerToDataSourceAdapter()->onRequestStart"

    .line 8
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 9
    :cond_1
    invoke-interface {p3, p2}, Lq1/e;->a(Lcom/facebook/imagepipeline/producers/s0;)V

    .line 10
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 11
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 12
    :cond_2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p3, "AbstractProducerToDataSourceAdapter()->produceResult"

    .line 13
    invoke-static {p3}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 14
    :cond_3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/a;->C()Lcom/facebook/imagepipeline/producers/l;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lcom/facebook/imagepipeline/producers/q0;->b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V

    .line 15
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 17
    :cond_4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 18
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_5
    return-void
.end method

.method static synthetic A(Lcom/facebook/imagepipeline/datasource/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/a;->E()V

    return-void
.end method

.method static synthetic B(Lcom/facebook/imagepipeline/datasource/a;F)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/facebook/datasource/a;->s(F)Z

    move-result p0

    return p0
.end method

.method private C()Lcom/facebook/imagepipeline/producers/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/datasource/a$a;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/datasource/a$a;-><init>(Lcom/facebook/imagepipeline/datasource/a;)V

    return-object v0
.end method

.method private declared-synchronized E()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/datasource/a;->isClosed()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/j;->o(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private F(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a;->i:Lcom/facebook/imagepipeline/producers/z0;

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/datasource/a;->D(Lcom/facebook/imagepipeline/producers/s0;)Ljava/util/Map;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/facebook/datasource/a;->q(Ljava/lang/Throwable;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a;->j:Lq1/e;

    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/a;->i:Lcom/facebook/imagepipeline/producers/z0;

    invoke-interface {v0, v1, p1}, Lq1/e;->i(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private H()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a;->i:Lcom/facebook/imagepipeline/producers/z0;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/d;->getExtras()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/datasource/a;->o(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic y(Lcom/facebook/imagepipeline/datasource/a;)Lcom/facebook/imagepipeline/producers/z0;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/datasource/a;->i:Lcom/facebook/imagepipeline/producers/z0;

    return-object p0
.end method

.method static synthetic z(Lcom/facebook/imagepipeline/datasource/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/datasource/a;->F(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected D(Lcom/facebook/imagepipeline/producers/s0;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "producerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/s0;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->getExtras()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected G(Ljava/lang/Object;ILcom/facebook/imagepipeline/producers/s0;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "status",
            "producerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Lcom/facebook/imagepipeline/producers/s0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->f(I)Z

    move-result p2

    .line 2
    invoke-virtual {p0, p3}, Lcom/facebook/imagepipeline/datasource/a;->D(Lcom/facebook/imagepipeline/producers/s0;)Ljava/util/Map;

    move-result-object p3

    invoke-super {p0, p1, p2, p3}, Lcom/facebook/datasource/a;->v(Ljava/lang/Object;ZLjava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/datasource/a;->j:Lq1/e;

    iget-object p2, p0, Lcom/facebook/imagepipeline/datasource/a;->i:Lcom/facebook/imagepipeline/producers/z0;

    invoke-interface {p1, p2}, Lq1/e;->e(Lcom/facebook/imagepipeline/producers/s0;)V

    :cond_0
    return-void
.end method

.method public c()Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a;->i:Lcom/facebook/imagepipeline/producers/z0;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/d;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    return-object v0
.end method

.method public close()Z
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/facebook/datasource/a;->close()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/facebook/datasource/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a;->j:Lq1/e;

    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/a;->i:Lcom/facebook/imagepipeline/producers/z0;

    invoke-interface {v0, v1}, Lq1/e;->g(Lcom/facebook/imagepipeline/producers/s0;)V

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a;->i:Lcom/facebook/imagepipeline/producers/z0;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/d;->v()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
