.class final Lcom/google/android/exoplayer2/source/e$a;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/h0;
.implements Lcom/google/android/exoplayer2/drm/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation build Lcom/google/android/exoplayer2/util/w0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/exoplayer2/source/h0$a;

.field private c:Lcom/google/android/exoplayer2/drm/s$a;

.field final synthetic d:Lcom/google/android/exoplayer2/source/e;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/e;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/source/e;
        .annotation build Lcom/google/android/exoplayer2/util/w0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/e$a;->d:Lcom/google/android/exoplayer2/source/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/a;->t(Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/source/h0$a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/e$a;->b:Lcom/google/android/exoplayer2/source/h0$a;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/a;->r(Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/drm/s$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/e$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/e$a;->a:Ljava/lang/Object;

    return-void
.end method

.method private a(ILcom/google/android/exoplayer2/source/z$a;)Z
    .locals 3
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e$a;->d:Lcom/google/android/exoplayer2/source/e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/e$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/source/e;->E(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/source/z$a;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e$a;->d:Lcom/google/android/exoplayer2/source/e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/e$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/source/e;->G(Ljava/lang/Object;I)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e$a;->b:Lcom/google/android/exoplayer2/source/h0$a;

    iget v1, v0, Lcom/google/android/exoplayer2/source/h0$a;->a:I

    if-ne v1, p1, :cond_2

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/h0$a;->b:Lcom/google/android/exoplayer2/source/z$a;

    .line 4
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e$a;->d:Lcom/google/android/exoplayer2/source/e;

    const-wide/16 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/a;->s(ILcom/google/android/exoplayer2/source/z$a;J)Lcom/google/android/exoplayer2/source/h0$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/e$a;->b:Lcom/google/android/exoplayer2/source/h0$a;

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    iget v1, v0, Lcom/google/android/exoplayer2/drm/s$a;->a:I

    if-ne v1, p1, :cond_4

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/s$a;->b:Lcom/google/android/exoplayer2/source/z$a;

    .line 8
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e$a;->d:Lcom/google/android/exoplayer2/source/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/a;->q(ILcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/drm/s$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/e$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method private b(Lcom/google/android/exoplayer2/source/s;)Lcom/google/android/exoplayer2/source/s;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e$a;->d:Lcom/google/android/exoplayer2/source/e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/e$a;->a:Ljava/lang/Object;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/s;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/e;->F(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e$a;->d:Lcom/google/android/exoplayer2/source/e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/e$a;->a:Ljava/lang/Object;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/s;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/e;->F(Ljava/lang/Object;J)J

    move-result-wide v12

    .line 3
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/s;->f:J

    cmp-long v2, v10, v0

    if-nez v2, :cond_0

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/s;->g:J

    cmp-long v2, v12, v0

    if-nez v2, :cond_0

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/s;

    iget v5, p1, Lcom/google/android/exoplayer2/source/s;->a:I

    iget v6, p1, Lcom/google/android/exoplayer2/source/s;->b:I

    iget-object v7, p1, Lcom/google/android/exoplayer2/source/s;->c:Lcom/google/android/exoplayer2/Format;

    iget v8, p1, Lcom/google/android/exoplayer2/source/s;->d:I

    iget-object v9, p1, Lcom/google/android/exoplayer2/source/s;->e:Ljava/lang/Object;

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lcom/google/android/exoplayer2/source/s;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    return-object v0
.end method


# virtual methods
.method public H(ILcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/s;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/e$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/e$a;->b:Lcom/google/android/exoplayer2/source/h0$a;

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/e$a;->b(Lcom/google/android/exoplayer2/source/s;)Lcom/google/android/exoplayer2/source/s;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/h0$a;->j(Lcom/google/android/exoplayer2/source/s;)V

    :cond_0
    return-void
.end method

.method public I(ILcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/e$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/e$a;->b:Lcom/google/android/exoplayer2/source/h0$a;

    .line 3
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/e$a;->b(Lcom/google/android/exoplayer2/source/s;)Lcom/google/android/exoplayer2/source/s;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/h0$a;->s(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

    :cond_0
    return-void
.end method

.method public J(ILcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/e$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/e$a;->b:Lcom/google/android/exoplayer2/source/h0$a;

    .line 3
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/e$a;->b(Lcom/google/android/exoplayer2/source/s;)Lcom/google/android/exoplayer2/source/s;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/h0$a;->B(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

    :cond_0
    return-void
.end method

.method public N(ILcom/google/android/exoplayer2/source/z$a;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/e$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/e$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/s$a;->i()V

    :cond_0
    return-void
.end method

.method public synthetic O(ILcom/google/android/exoplayer2/source/z$a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/l;->d(Lcom/google/android/exoplayer2/drm/s;ILcom/google/android/exoplayer2/source/z$a;)V

    return-void
.end method

.method public W(ILcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/s;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/e$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/e$a;->b:Lcom/google/android/exoplayer2/source/h0$a;

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/e$a;->b(Lcom/google/android/exoplayer2/source/s;)Lcom/google/android/exoplayer2/source/s;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/h0$a;->E(Lcom/google/android/exoplayer2/source/s;)V

    :cond_0
    return-void
.end method

.method public Y(ILcom/google/android/exoplayer2/source/z$a;Ljava/lang/Exception;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/e$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/e$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/drm/s$a;->l(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public g0(ILcom/google/android/exoplayer2/source/z$a;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/e$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/e$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/s$a;->h()V

    :cond_0
    return-void
.end method

.method public j0(ILcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/e$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/e$a;->b:Lcom/google/android/exoplayer2/source/h0$a;

    .line 3
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/e$a;->b(Lcom/google/android/exoplayer2/source/s;)Lcom/google/android/exoplayer2/source/s;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/h0$a;->v(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

    :cond_0
    return-void
.end method

.method public k0(ILcom/google/android/exoplayer2/source/z$a;I)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/e$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/e$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/drm/s$a;->k(I)V

    :cond_0
    return-void
.end method

.method public l0(ILcom/google/android/exoplayer2/source/z$a;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/e$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/e$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/s$a;->m()V

    :cond_0
    return-void
.end method

.method public n0(ILcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Ljava/io/IOException;Z)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/e$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/e$a;->b:Lcom/google/android/exoplayer2/source/h0$a;

    .line 3
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/e$a;->b(Lcom/google/android/exoplayer2/source/s;)Lcom/google/android/exoplayer2/source/s;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p3, p2, p5, p6}, Lcom/google/android/exoplayer2/source/h0$a;->y(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public p0(ILcom/google/android/exoplayer2/source/z$a;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/e$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/e$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/s$a;->j()V

    :cond_0
    return-void
.end method
