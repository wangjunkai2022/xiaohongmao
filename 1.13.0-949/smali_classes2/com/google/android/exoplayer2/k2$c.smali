.class final Lcom/google/android/exoplayer2/k2$c;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/video/z;
.implements Lcom/google/android/exoplayer2/audio/u;
.implements Lcom/google/android/exoplayer2/text/j;
.implements Lcom/google/android/exoplayer2/metadata/e;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$b;
.implements Lcom/google/android/exoplayer2/d$c;
.implements Lcom/google/android/exoplayer2/b$b;
.implements Lcom/google/android/exoplayer2/n2$b;
.implements Lcom/google/android/exoplayer2/v1$f;
.implements Lcom/google/android/exoplayer2/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/k2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/k2;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/k2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/k2;Lcom/google/android/exoplayer2/k2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k2$c;-><init>(Lcom/google/android/exoplayer2/k2;)V

    return-void
.end method


# virtual methods
.method public synthetic B(Lcom/google/android/exoplayer2/b1;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/w1;->f(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/b1;I)V

    return-void
.end method

.method public C(ZI)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {p1}, Lcom/google/android/exoplayer2/k2;->u2(Lcom/google/android/exoplayer2/k2;)V

    return-void
.end method

.method public synthetic E(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->d(Lcom/google/android/exoplayer2/v1$f;Z)V

    return-void
.end method

.method public F(Ljava/lang/String;JJ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->R1(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/analytics/h1;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/analytics/h1;->F(Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic G(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->e(Lcom/google/android/exoplayer2/v1$f;Z)V

    return-void
.end method

.method public H(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {p1}, Lcom/google/android/exoplayer2/k2;->m2(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/n2;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/k2;->n2(Lcom/google/android/exoplayer2/n2;)Lcom/google/android/exoplayer2/device/b;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->o2(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/device/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/device/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k2;->p2(Lcom/google/android/exoplayer2/k2;Lcom/google/android/exoplayer2/device/b;)Lcom/google/android/exoplayer2/device/b;

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->q2(Lcom/google/android/exoplayer2/k2;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/device/d;

    .line 5
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/device/d;->D(Lcom/google/android/exoplayer2/device/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public I()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/k2;->l2(Lcom/google/android/exoplayer2/k2;ZII)V

    return-void
.end method

.method public J(Landroid/view/Surface;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/k2;->g2(Lcom/google/android/exoplayer2/k2;Ljava/lang/Object;)V

    return-void
.end method

.method public K(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k2;->g2(Lcom/google/android/exoplayer2/k2;Ljava/lang/Object;)V

    return-void
.end method

.method public L(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->R1(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/analytics/h1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->L(Ljava/lang/String;)V

    return-void
.end method

.method public M(Ljava/lang/String;JJ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->R1(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/analytics/h1;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/analytics/h1;->M(Ljava/lang/String;JJ)V

    return-void
.end method

.method public N(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->q2(Lcom/google/android/exoplayer2/k2;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/device/d;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer2/device/d;->p(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public O(Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {p1}, Lcom/google/android/exoplayer2/k2;->u2(Lcom/google/android/exoplayer2/k2;)V

    return-void
.end method

.method public synthetic P(Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/video/o;->i(Lcom/google/android/exoplayer2/video/z;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public Q(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/decoder/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k2;->S1(Lcom/google/android/exoplayer2/k2;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->R1(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/analytics/h1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->Q(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public R(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->R1(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/analytics/h1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->R(J)V

    return-void
.end method

.method public S(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->R1(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/analytics/h1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->S(Ljava/lang/Exception;)V

    return-void
.end method

.method public T(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->R1(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/analytics/h1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->T(Lcom/google/android/exoplayer2/decoder/d;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/k2;->S1(Lcom/google/android/exoplayer2/k2;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/k2;->Q1(Lcom/google/android/exoplayer2/k2;Lcom/google/android/exoplayer2/decoder/d;)Lcom/google/android/exoplayer2/decoder/d;

    return-void
.end method

.method public synthetic U(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->n(Lcom/google/android/exoplayer2/v1$f;I)V

    return-void
.end method

.method public V(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->R1(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/analytics/h1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->V(Lcom/google/android/exoplayer2/decoder/d;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/k2;->X1(Lcom/google/android/exoplayer2/k2;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/k2;->W1(Lcom/google/android/exoplayer2/k2;Lcom/google/android/exoplayer2/decoder/d;)Lcom/google/android/exoplayer2/decoder/d;

    return-void
.end method

.method public W(F)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {p1}, Lcom/google/android/exoplayer2/k2;->j2(Lcom/google/android/exoplayer2/k2;)V

    return-void
.end method

.method public synthetic X()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/w1;->q(Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method public Y(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k2;->Q0()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k2;->k2(ZI)I

    move-result v2

    .line 4
    invoke-static {v1, v0, p1, v2}, Lcom/google/android/exoplayer2/k2;->l2(Lcom/google/android/exoplayer2/k2;ZII)V

    return-void
.end method

.method public Z(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->R1(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/analytics/h1;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/h1;->Z(IJ)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->Y1(Lcom/google/android/exoplayer2/k2;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k2;->Z1(Lcom/google/android/exoplayer2/k2;Z)Z

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {p1}, Lcom/google/android/exoplayer2/k2;->a2(Lcom/google/android/exoplayer2/k2;)V

    return-void
.end method

.method public synthetic a0(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/w1;->m(Lcom/google/android/exoplayer2/v1$f;ZI)V

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/video/b0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k2;->T1(Lcom/google/android/exoplayer2/k2;Lcom/google/android/exoplayer2/video/b0;)Lcom/google/android/exoplayer2/video/b0;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->R1(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/analytics/h1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->b(Lcom/google/android/exoplayer2/video/b0;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->U1(Lcom/google/android/exoplayer2/k2;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/n;

    .line 4
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/video/n;->b(Lcom/google/android/exoplayer2/video/b0;)V

    .line 5
    iget v2, p1, Lcom/google/android/exoplayer2/video/b0;->a:I

    iget v3, p1, Lcom/google/android/exoplayer2/video/b0;->b:I

    iget v4, p1, Lcom/google/android/exoplayer2/video/b0;->c:I

    iget v5, p1, Lcom/google/android/exoplayer2/video/b0;->d:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/video/n;->c0(IIIF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b0(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/decoder/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k2;->X1(Lcom/google/android/exoplayer2/k2;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->R1(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/analytics/h1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->b0(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public synthetic c(Lcom/google/android/exoplayer2/t1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->i(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/t1;)V

    return-void
.end method

.method public synthetic c0(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r;->a(Lcom/google/android/exoplayer2/q$b;Z)V

    return-void
.end method

.method public d(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->R1(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/analytics/h1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->d(Ljava/lang/Exception;)V

    return-void
.end method

.method public d0(Ljava/lang/Object;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->R1(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/analytics/h1;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/h1;->d0(Ljava/lang/Object;J)V

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {p2}, Lcom/google/android/exoplayer2/k2;->V1(Lcom/google/android/exoplayer2/k2;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {p1}, Lcom/google/android/exoplayer2/k2;->U1(Lcom/google/android/exoplayer2/k2;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/video/n;

    .line 4
    invoke-interface {p2}, Lcom/google/android/exoplayer2/video/n;->q()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic e(Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/w1;->o(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;I)V

    return-void
.end method

.method public synthetic e0(Lcom/google/android/exoplayer2/s2;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/w1;->u(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/s2;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic f(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->k(Lcom/google/android/exoplayer2/v1$f;I)V

    return-void
.end method

.method public f0(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k2;->Q1(Lcom/google/android/exoplayer2/k2;Lcom/google/android/exoplayer2/decoder/d;)Lcom/google/android/exoplayer2/decoder/d;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->R1(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/analytics/h1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->f0(Lcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method

.method public synthetic g(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->s(Lcom/google/android/exoplayer2/v1$f;Ljava/util/List;)V

    return-void
.end method

.method public synthetic h(Lcom/google/android/exoplayer2/v1$c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->a(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/v1$c;)V

    return-void
.end method

.method public h0(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->R1(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/analytics/h1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->h0(Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic i(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->p(Lcom/google/android/exoplayer2/v1$f;I)V

    return-void
.end method

.method public synthetic i0(Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/audio/j;->f(Lcom/google/android/exoplayer2/audio/u;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public synthetic j(Lcom/google/android/exoplayer2/s2;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/w1;->t(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/s2;I)V

    return-void
.end method

.method public l(I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {p1}, Lcom/google/android/exoplayer2/k2;->u2(Lcom/google/android/exoplayer2/k2;)V

    return-void
.end method

.method public synthetic m(Lcom/google/android/exoplayer2/f1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->g(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/f1;)V

    return-void
.end method

.method public m0(IJJ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->R1(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/analytics/h1;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/analytics/h1;->m0(IJJ)V

    return-void
.end method

.method public synthetic n(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->r(Lcom/google/android/exoplayer2/v1$f;Z)V

    return-void
.end method

.method public o(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->R1(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/analytics/h1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->o(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->d2(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/p0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p0;->Y2(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->e2(Lcom/google/android/exoplayer2/k2;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/metadata/e;

    .line 4
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/metadata/e;->o(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o0(JI)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->R1(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/analytics/h1;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/h1;->o0(JI)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k2;->i2(Lcom/google/android/exoplayer2/k2;Landroid/graphics/SurfaceTexture;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/k2;->h2(Lcom/google/android/exoplayer2/k2;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/k2;->g2(Lcom/google/android/exoplayer2/k2;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/google/android/exoplayer2/k2;->h2(Lcom/google/android/exoplayer2/k2;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/k2;->h2(Lcom/google/android/exoplayer2/k2;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public r(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k2;->b2(Lcom/google/android/exoplayer2/k2;Ljava/util/List;)Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->c2(Lcom/google/android/exoplayer2/k2;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/j;

    .line 3
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/text/j;->r(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic s(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/m;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/w1;->v(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/m;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {p1, p3, p4}, Lcom/google/android/exoplayer2/k2;->h2(Lcom/google/android/exoplayer2/k2;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->f2(Lcom/google/android/exoplayer2/k2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k2;->g2(Lcom/google/android/exoplayer2/k2;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {p1}, Lcom/google/android/exoplayer2/k2;->f2(Lcom/google/android/exoplayer2/k2;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/k2;->g2(Lcom/google/android/exoplayer2/k2;Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/google/android/exoplayer2/k2;->h2(Lcom/google/android/exoplayer2/k2;II)V

    return-void
.end method

.method public synthetic u(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->l(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public v(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->r2(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v1}, Lcom/google/android/exoplayer2/k2;->s2(Lcom/google/android/exoplayer2/k2;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {p1}, Lcom/google/android/exoplayer2/k2;->r2(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->a(I)V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/k2;->t2(Lcom/google/android/exoplayer2/k2;Z)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {p1}, Lcom/google/android/exoplayer2/k2;->s2(Lcom/google/android/exoplayer2/k2;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {p1}, Lcom/google/android/exoplayer2/k2;->r2(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->e(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/k2;->t2(Lcom/google/android/exoplayer2/k2;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->R1(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/analytics/h1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->x(Ljava/lang/String;)V

    return-void
.end method

.method public y(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/k2;->W1(Lcom/google/android/exoplayer2/k2;Lcom/google/android/exoplayer2/decoder/d;)Lcom/google/android/exoplayer2/decoder/d;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2$c;->a:Lcom/google/android/exoplayer2/k2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->R1(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/analytics/h1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->y(Lcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method

.method public synthetic z(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$g;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/w1;->b(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$g;)V

    return-void
.end method
