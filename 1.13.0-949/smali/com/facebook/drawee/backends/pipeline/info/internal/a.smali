.class public Lcom/facebook/drawee/backends/pipeline/info/internal/a;
.super Li1/a;
.source "ImagePerfControllerListener2.java"

# interfaces
.implements Li1/h;
.implements Ljava/io/Closeable;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/backends/pipeline/info/internal/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li1/a<",
        "Lcom/facebook/imagepipeline/image/g;",
        ">;",
        "Li1/h<",
        "Lcom/facebook/imagepipeline/image/g;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static final g:I = 0x1

.field private static final h:I = 0x2

.field private static i:Landroid/os/Handler;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# instance fields
.field private final b:Ls0/c;

.field private final c:Lx0/l;

.field private final d:Lx0/k;

.field private final e:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls0/c;Lx0/l;Lx0/k;Lcom/facebook/common/internal/m;Lcom/facebook/common/internal/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "clock",
            "imagePerfState",
            "imagePerfNotifier",
            "asyncLogging",
            "useNewState"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls0/c;",
            "Lx0/l;",
            "Lx0/k;",
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li1/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->b:Ls0/c;

    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->c:Lx0/l;

    .line 4
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->d:Lx0/k;

    .line 5
    iput-object p4, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->e:Lcom/facebook/common/internal/m;

    .line 6
    iput-object p5, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->f:Lcom/facebook/common/internal/m;

    return-void
.end method

.method private E(Lx0/l;J)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "time"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lx0/l;->G(Z)V

    .line 2
    invoke-virtual {p1, p2, p3}, Lx0/l;->z(J)V

    const/4 p2, 0x2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->K(Lx0/l;I)V

    return-void
.end method

.method private I()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->e:Lcom/facebook/common/internal/m;

    invoke-interface {v0}, Lcom/facebook/common/internal/m;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->i:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->r()V

    :cond_0
    return v0
.end method

.method private J(Lx0/l;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "imageLoadStatus"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->i:Landroid/os/Handler;

    invoke-static {v0}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 5
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    sget-object p1, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->i:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->d:Lx0/k;

    invoke-interface {v0, p1, p2}, Lx0/k;->b(Lx0/l;I)V

    :goto_0
    return-void
.end method

.method private K(Lx0/l;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "visibilityState"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->i:Landroid/os/Handler;

    invoke-static {v0}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 5
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    sget-object p1, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->i:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->d:Lx0/k;

    invoke-interface {v0, p1, p2}, Lx0/k;->a(Lx0/l;I)V

    :goto_0
    return-void
.end method

.method private declared-synchronized r()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->i:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImagePerfControllerListener2Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    .line 6
    new-instance v1, Lcom/facebook/drawee/backends/pipeline/info/internal/a$a;

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->d:Lx0/k;

    invoke-direct {v1, v0, v2}, Lcom/facebook/drawee/backends/pipeline/info/internal/a$a;-><init>(Landroid/os/Looper;Lx0/k;)V

    sput-object v1, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->i:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private s()Lx0/l;
    .locals 1

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->f:Lcom/facebook/common/internal/m;

    invoke-interface {v0}, Lcom/facebook/common/internal/m;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lx0/l;

    invoke-direct {v0}, Lx0/l;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->c:Lx0/l;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public A(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Li1/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "info",
            "dimensionsInfo"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->s()Lx0/l;

    move-result-object p2

    .line 2
    invoke-virtual {p2, p1}, Lx0/l;->l(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->b:Ls0/c;

    invoke-interface {p1}, Ls0/c;->now()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lx0/l;->s(J)V

    .line 4
    invoke-virtual {p2, p3}, Lx0/l;->p(Li1/d;)V

    const/4 p1, 0x6

    .line 5
    invoke-direct {p0, p2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->J(Lx0/l;I)V

    return-void
.end method

.method public D(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;)V
    .locals 3
    .param p2    # Lcom/facebook/imagepipeline/image/g;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "imageInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->b:Ls0/c;

    invoke-interface {v0}, Ls0/c;->now()J

    move-result-wide v0

    .line 2
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->s()Lx0/l;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v0, v1}, Lx0/l;->n(J)V

    .line 4
    invoke-virtual {v2, p1}, Lx0/l;->l(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2, p2}, Lx0/l;->t(Lcom/facebook/imagepipeline/image/g;)V

    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->J(Lx0/l;I)V

    return-void
.end method

.method public G(Lx0/l;J)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "now"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Lx0/l;->G(Z)V

    .line 2
    invoke-virtual {p1, p2, p3}, Lx0/l;->F(J)V

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->K(Lx0/l;I)V

    return-void
.end method

.method public H()V
    .locals 1

    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->s()Lx0/l;

    move-result-object v0

    invoke-virtual {v0}, Lx0/l;->e()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "id",
            "imageInfo"
        }
    .end annotation

    check-cast p2, Lcom/facebook/imagepipeline/image/g;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->D(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/String;Ljava/lang/Object;Li1/c$a;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Li1/c$a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "id",
            "imageInfo",
            "extraData"
        }
    .end annotation

    check-cast p2, Lcom/facebook/imagepipeline/image/g;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->y(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Li1/c$a;)V

    return-void
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->H()V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;Li1/c$a;)V
    .locals 3
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Li1/c$a;
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
            "id",
            "throwable",
            "extras"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->b:Ls0/c;

    invoke-interface {v0}, Ls0/c;->now()J

    move-result-wide v0

    .line 2
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->s()Lx0/l;

    move-result-object v2

    .line 3
    invoke-virtual {v2, p3}, Lx0/l;->r(Li1/c$a;)V

    .line 4
    invoke-virtual {v2, v0, v1}, Lx0/l;->j(J)V

    .line 5
    invoke-virtual {v2, p1}, Lx0/l;->l(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, p2}, Lx0/l;->q(Ljava/lang/Throwable;)V

    const/4 p1, 0x5

    .line 7
    invoke-direct {p0, v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->J(Lx0/l;I)V

    .line 8
    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->E(Lx0/l;J)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/Object;Li1/c$a;)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Li1/c$a;
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
            "id",
            "callerContext",
            "extraData"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->b:Ls0/c;

    invoke-interface {v0}, Ls0/c;->now()J

    move-result-wide v0

    .line 2
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->s()Lx0/l;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lx0/l;->f()V

    .line 4
    invoke-virtual {v2, v0, v1}, Lx0/l;->o(J)V

    .line 5
    invoke-virtual {v2, p1}, Lx0/l;->l(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, p2}, Lx0/l;->g(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v2, p3}, Lx0/l;->r(Li1/c$a;)V

    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->J(Lx0/l;I)V

    .line 9
    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->G(Lx0/l;J)V

    return-void
.end method

.method public k(Ljava/lang/String;Li1/c$a;)V
    .locals 3
    .param p2    # Li1/c$a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "extras"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->b:Ls0/c;

    invoke-interface {v0}, Ls0/c;->now()J

    move-result-wide v0

    .line 2
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->s()Lx0/l;

    move-result-object v2

    .line 3
    invoke-virtual {v2, p2}, Lx0/l;->r(Li1/c$a;)V

    .line 4
    invoke-virtual {v2, p1}, Lx0/l;->l(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Lx0/l;->d()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    .line 6
    invoke-virtual {v2, v0, v1}, Lx0/l;->i(J)V

    const/4 p1, 0x4

    .line 7
    invoke-direct {p0, v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->J(Lx0/l;I)V

    .line 8
    :cond_0
    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->E(Lx0/l;J)V

    return-void
.end method

.method public bridge synthetic p(Ljava/lang/String;Ljava/lang/Object;Li1/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "id",
            "info",
            "dimensionsInfo"
        }
    .end annotation

    check-cast p2, Lcom/facebook/imagepipeline/image/g;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->A(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Li1/d;)V

    return-void
.end method

.method public y(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Li1/c$a;)V
    .locals 3
    .param p2    # Lcom/facebook/imagepipeline/image/g;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Li1/c$a;
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
            "id",
            "imageInfo",
            "extraData"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->b:Ls0/c;

    invoke-interface {v0}, Ls0/c;->now()J

    move-result-wide v0

    .line 2
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->s()Lx0/l;

    move-result-object v2

    .line 3
    invoke-virtual {v2, p3}, Lx0/l;->r(Li1/c$a;)V

    .line 4
    invoke-virtual {v2, v0, v1}, Lx0/l;->k(J)V

    .line 5
    invoke-virtual {v2, v0, v1}, Lx0/l;->x(J)V

    .line 6
    invoke-virtual {v2, p1}, Lx0/l;->l(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, p2}, Lx0/l;->t(Lcom/facebook/imagepipeline/image/g;)V

    const/4 p1, 0x3

    .line 8
    invoke-direct {p0, v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->J(Lx0/l;I)V

    return-void
.end method
