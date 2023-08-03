.class public Lcom/xw/repo/a;
.super Ljava/lang/Object;
.source "BubbleConfigBuilder.java"


# instance fields
.field A:Z

.field B:I

.field C:I

.field D:I

.field E:Z

.field F:J

.field G:Z

.field H:Z

.field private I:Lcom/xw/repo/BubbleSeekBar;

.field a:F

.field b:F

.field c:F

.field d:Z

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:Z

.field n:Z

.field o:Z

.field p:I

.field q:I

.field r:I

.field s:I

.field t:Z

.field u:I

.field v:I

.field w:Z

.field x:J

.field y:Z

.field z:Z


# direct methods
.method constructor <init>(Lcom/xw/repo/BubbleSeekBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xw/repo/a;->I:Lcom/xw/repo/BubbleSeekBar;

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Lcom/xw/repo/a;->h:I

    return v0
.end method

.method public B()I
    .locals 1

    iget v0, p0, Lcom/xw/repo/a;->v:I

    return v0
.end method

.method public C()I
    .locals 1

    iget v0, p0, Lcom/xw/repo/a;->u:I

    return v0
.end method

.method public D()I
    .locals 1

    iget v0, p0, Lcom/xw/repo/a;->i:I

    return v0
.end method

.method public E()I
    .locals 1

    iget v0, p0, Lcom/xw/repo/a;->e:I

    return v0
.end method

.method public F()Lcom/xw/repo/a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xw/repo/a;->G:Z

    return-object p0
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xw/repo/a;->E:Z

    return v0
.end method

.method public H()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xw/repo/a;->n:Z

    return v0
.end method

.method public I()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xw/repo/a;->d:Z

    return v0
.end method

.method public J()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xw/repo/a;->G:Z

    return v0
.end method

.method public K()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xw/repo/a;->H:Z

    return v0
.end method

.method public L()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xw/repo/a;->A:Z

    return v0
.end method

.method public M()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xw/repo/a;->z:Z

    return v0
.end method

.method public N()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xw/repo/a;->w:Z

    return v0
.end method

.method public O()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xw/repo/a;->m:Z

    return v0
.end method

.method public P()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xw/repo/a;->o:Z

    return v0
.end method

.method public Q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xw/repo/a;->t:Z

    return v0
.end method

.method public R()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xw/repo/a;->y:Z

    return v0
.end method

.method public S(F)Lcom/xw/repo/a;
    .locals 0

    iput p1, p0, Lcom/xw/repo/a;->b:F

    return-object p0
.end method

.method public T(F)Lcom/xw/repo/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/xw/repo/a;->a:F

    .line 2
    iput p1, p0, Lcom/xw/repo/a;->c:F

    return-object p0
.end method

.method public U(F)Lcom/xw/repo/a;
    .locals 0

    iput p1, p0, Lcom/xw/repo/a;->c:F

    return-object p0
.end method

.method public V(Z)Lcom/xw/repo/a;
    .locals 0

    iput-boolean p1, p0, Lcom/xw/repo/a;->H:Z

    return-object p0
.end method

.method public W(I)Lcom/xw/repo/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/xw/repo/a;->j:I

    .line 2
    iput p1, p0, Lcom/xw/repo/a;->k:I

    .line 3
    iput p1, p0, Lcom/xw/repo/a;->v:I

    .line 4
    iput p1, p0, Lcom/xw/repo/a;->B:I

    return-object p0
.end method

.method public X(I)Lcom/xw/repo/a;
    .locals 0

    invoke-static {p1}, Lcom/xw/repo/b;->a(I)I

    move-result p1

    iput p1, p0, Lcom/xw/repo/a;->f:I

    return-object p0
.end method

.method public Y(I)Lcom/xw/repo/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    iput p1, p0, Lcom/xw/repo/a;->l:I

    return-object p0
.end method

.method public Z(I)Lcom/xw/repo/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/xw/repo/a;->q:I

    return-object p0
.end method

.method public a()Lcom/xw/repo/a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xw/repo/a;->E:Z

    return-object p0
.end method

.method public a0(I)Lcom/xw/repo/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    iput p1, p0, Lcom/xw/repo/a;->s:I

    return-object p0
.end method

.method public b(J)Lcom/xw/repo/a;
    .locals 0

    iput-wide p1, p0, Lcom/xw/repo/a;->F:J

    return-object p0
.end method

.method public b0(I)Lcom/xw/repo/a;
    .locals 0

    iput p1, p0, Lcom/xw/repo/a;->r:I

    return-object p0
.end method

.method public c(J)Lcom/xw/repo/a;
    .locals 0

    iput-wide p1, p0, Lcom/xw/repo/a;->x:J

    return-object p0
.end method

.method public c0(I)Lcom/xw/repo/a;
    .locals 0

    invoke-static {p1}, Lcom/xw/repo/b;->c(I)I

    move-result p1

    iput p1, p0, Lcom/xw/repo/a;->p:I

    return-object p0
.end method

.method public d()Lcom/xw/repo/a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xw/repo/a;->n:Z

    return-object p0
.end method

.method public d0()Lcom/xw/repo/a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xw/repo/a;->A:Z

    return-object p0
.end method

.method public e(I)Lcom/xw/repo/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/xw/repo/a;->B:I

    return-object p0
.end method

.method public e0()Lcom/xw/repo/a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xw/repo/a;->z:Z

    return-object p0
.end method

.method public f(I)Lcom/xw/repo/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/xw/repo/a;->D:I

    return-object p0
.end method

.method public f0()Lcom/xw/repo/a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xw/repo/a;->w:Z

    return-object p0
.end method

.method public g(I)Lcom/xw/repo/a;
    .locals 0

    invoke-static {p1}, Lcom/xw/repo/b;->c(I)I

    move-result p1

    iput p1, p0, Lcom/xw/repo/a;->C:I

    return-object p0
.end method

.method public g0()Lcom/xw/repo/a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xw/repo/a;->m:Z

    return-object p0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/xw/repo/a;->I:Lcom/xw/repo/BubbleSeekBar;

    invoke-virtual {v0, p0}, Lcom/xw/repo/BubbleSeekBar;->E(Lcom/xw/repo/a;)V

    return-void
.end method

.method public h0()Lcom/xw/repo/a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xw/repo/a;->o:Z

    return-object p0
.end method

.method public i()Lcom/xw/repo/a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xw/repo/a;->d:Z

    return-object p0
.end method

.method public i0()Lcom/xw/repo/a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xw/repo/a;->t:Z

    return-object p0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lcom/xw/repo/a;->F:J

    return-wide v0
.end method

.method public j0(I)Lcom/xw/repo/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/xw/repo/a;->k:I

    return-object p0
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Lcom/xw/repo/a;->x:J

    return-wide v0
.end method

.method public k0(I)Lcom/xw/repo/a;
    .locals 0

    invoke-static {p1}, Lcom/xw/repo/b;->a(I)I

    move-result p1

    iput p1, p0, Lcom/xw/repo/a;->g:I

    return-object p0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/xw/repo/a;->B:I

    return v0
.end method

.method public l0(I)Lcom/xw/repo/a;
    .locals 0

    invoke-static {p1}, Lcom/xw/repo/b;->a(I)I

    move-result p1

    iput p1, p0, Lcom/xw/repo/a;->h:I

    return-object p0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/xw/repo/a;->D:I

    return v0
.end method

.method public m0(I)Lcom/xw/repo/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/xw/repo/a;->v:I

    return-object p0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/xw/repo/a;->C:I

    return v0
.end method

.method public n0(I)Lcom/xw/repo/a;
    .locals 0

    invoke-static {p1}, Lcom/xw/repo/b;->c(I)I

    move-result p1

    iput p1, p0, Lcom/xw/repo/a;->u:I

    return-object p0
.end method

.method public o()F
    .locals 1

    iget v0, p0, Lcom/xw/repo/a;->b:F

    return v0
.end method

.method public o0()Lcom/xw/repo/a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xw/repo/a;->y:Z

    return-object p0
.end method

.method public p()F
    .locals 1

    iget v0, p0, Lcom/xw/repo/a;->a:F

    return v0
.end method

.method public p0(I)Lcom/xw/repo/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/xw/repo/a;->i:I

    .line 2
    iput p1, p0, Lcom/xw/repo/a;->q:I

    return-object p0
.end method

.method public q()F
    .locals 1

    iget v0, p0, Lcom/xw/repo/a;->c:F

    return v0
.end method

.method public q0(I)Lcom/xw/repo/a;
    .locals 0

    invoke-static {p1}, Lcom/xw/repo/b;->a(I)I

    move-result p1

    iput p1, p0, Lcom/xw/repo/a;->e:I

    return-object p0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/xw/repo/a;->j:I

    return v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lcom/xw/repo/a;->f:I

    return v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/xw/repo/a;->l:I

    return v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/xw/repo/a;->q:I

    return v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcom/xw/repo/a;->s:I

    return v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lcom/xw/repo/a;->r:I

    return v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lcom/xw/repo/a;->p:I

    return v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lcom/xw/repo/a;->k:I

    return v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Lcom/xw/repo/a;->g:I

    return v0
.end method
