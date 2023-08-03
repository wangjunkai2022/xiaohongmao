.class public final Lcom/google/android/exoplayer2/video/z$a;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lcom/google/android/exoplayer2/video/z;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/z;)V
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/video/z;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/z$a;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/video/z$a;->b:Lcom/google/android/exoplayer2/video/z;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/video/z$a;Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/z$a;->s(Lcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/video/z$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/z$a;->r(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/video/z$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/z$a;->y(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/video/z$a;Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/z$a;->u(Lcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/video/z$a;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/z$a;->w(Ljava/lang/Object;J)V

    return-void
.end method

.method public static synthetic f(Lcom/google/android/exoplayer2/video/z$a;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/z$a;->t(IJ)V

    return-void
.end method

.method public static synthetic g(Lcom/google/android/exoplayer2/video/z$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/video/z$a;->q(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic h(Lcom/google/android/exoplayer2/video/z$a;Lcom/google/android/exoplayer2/video/b0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/z$a;->z(Lcom/google/android/exoplayer2/video/b0;)V

    return-void
.end method

.method public static synthetic i(Lcom/google/android/exoplayer2/video/z$a;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/video/z$a;->v(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public static synthetic j(Lcom/google/android/exoplayer2/video/z$a;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/z$a;->x(JI)V

    return-void
.end method

.method private synthetic q(Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/z$a;->b:Lcom/google/android/exoplayer2/video/z;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer2/video/z;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 2
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/video/z;->F(Ljava/lang/String;JJ)V

    return-void
.end method

.method private synthetic r(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/z$a;->b:Lcom/google/android/exoplayer2/video/z;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/z;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/z;->x(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic s(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/d;->c()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/z$a;->b:Lcom/google/android/exoplayer2/video/z;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/z;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/z;->T(Lcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method

.method private synthetic t(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/z$a;->b:Lcom/google/android/exoplayer2/video/z;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/z;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/z;->Z(IJ)V

    return-void
.end method

.method private synthetic u(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/z$a;->b:Lcom/google/android/exoplayer2/video/z;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/z;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/z;->f0(Lcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method

.method private synthetic v(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/z$a;->b:Lcom/google/android/exoplayer2/video/z;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/z;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/z;->P(Lcom/google/android/exoplayer2/Format;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/z$a;->b:Lcom/google/android/exoplayer2/video/z;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/z;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/video/z;->Q(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method private synthetic w(Ljava/lang/Object;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/z$a;->b:Lcom/google/android/exoplayer2/video/z;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/z;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/z;->d0(Ljava/lang/Object;J)V

    return-void
.end method

.method private synthetic x(JI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/z$a;->b:Lcom/google/android/exoplayer2/video/z;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/z;

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/z;->o0(JI)V

    return-void
.end method

.method private synthetic y(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/z$a;->b:Lcom/google/android/exoplayer2/video/z;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/z;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/z;->S(Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic z(Lcom/google/android/exoplayer2/video/b0;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/z$a;->b:Lcom/google/android/exoplayer2/video/z;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/z;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/z;->b(Lcom/google/android/exoplayer2/video/b0;)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/z$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/z$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/video/w;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/exoplayer2/video/w;-><init>(Lcom/google/android/exoplayer2/video/z$a;Ljava/lang/Object;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public B(JI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/z$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/video/q;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/q;-><init>(Lcom/google/android/exoplayer2/video/z$a;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public C(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/z$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/video/v;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/v;-><init>(Lcom/google/android/exoplayer2/video/z$a;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public D(Lcom/google/android/exoplayer2/video/b0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/z$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/video/u;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/u;-><init>(Lcom/google/android/exoplayer2/video/z$a;Lcom/google/android/exoplayer2/video/b0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/z$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v8, Lcom/google/android/exoplayer2/video/y;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/video/y;-><init>(Lcom/google/android/exoplayer2/video/z$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/z$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/video/x;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/x;-><init>(Lcom/google/android/exoplayer2/video/z$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public m(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/d;->c()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/z$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/video/s;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/s;-><init>(Lcom/google/android/exoplayer2/video/z$a;Lcom/google/android/exoplayer2/decoder/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public n(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/z$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/video/p;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/p;-><init>(Lcom/google/android/exoplayer2/video/z$a;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public o(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/z$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/video/t;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/t;-><init>(Lcom/google/android/exoplayer2/video/z$a;Lcom/google/android/exoplayer2/decoder/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public p(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 2
    .param p2    # Lcom/google/android/exoplayer2/decoder/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/z$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/video/r;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/video/r;-><init>(Lcom/google/android/exoplayer2/video/z$a;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
