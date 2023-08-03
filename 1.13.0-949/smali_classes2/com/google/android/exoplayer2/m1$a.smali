.class final Lcom/google/android/exoplayer2/m1$a;
.super Ljava/lang/Object;
.source "MediaSourceList.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/h0;
.implements Lcom/google/android/exoplayer2/drm/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/m1$c;

.field private b:Lcom/google/android/exoplayer2/source/h0$a;

.field private c:Lcom/google/android/exoplayer2/drm/s$a;

.field final synthetic d:Lcom/google/android/exoplayer2/m1;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/m1;Lcom/google/android/exoplayer2/m1$c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/m1$a;->d:Lcom/google/android/exoplayer2/m1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/m1;->b(Lcom/google/android/exoplayer2/m1;)Lcom/google/android/exoplayer2/source/h0$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/m1$a;->b:Lcom/google/android/exoplayer2/source/h0$a;

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/m1;->c(Lcom/google/android/exoplayer2/m1;)Lcom/google/android/exoplayer2/drm/s$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/m1$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/m1$a;->a:Lcom/google/android/exoplayer2/m1$c;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1$a;->a:Lcom/google/android/exoplayer2/m1$c;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/m1;->d(Lcom/google/android/exoplayer2/m1$c;Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/source/z$a;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1$a;->a:Lcom/google/android/exoplayer2/m1$c;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/m1;->e(Lcom/google/android/exoplayer2/m1$c;I)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1$a;->b:Lcom/google/android/exoplayer2/source/h0$a;

    iget v1, v0, Lcom/google/android/exoplayer2/source/h0$a;->a:I

    if-ne v1, p1, :cond_2

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/h0$a;->b:Lcom/google/android/exoplayer2/source/z$a;

    .line 4
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1$a;->d:Lcom/google/android/exoplayer2/m1;

    .line 6
    invoke-static {v0}, Lcom/google/android/exoplayer2/m1;->b(Lcom/google/android/exoplayer2/m1;)Lcom/google/android/exoplayer2/source/h0$a;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/h0$a;->F(ILcom/google/android/exoplayer2/source/z$a;J)Lcom/google/android/exoplayer2/source/h0$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/m1$a;->b:Lcom/google/android/exoplayer2/source/h0$a;

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    iget v1, v0, Lcom/google/android/exoplayer2/drm/s$a;->a:I

    if-ne v1, p1, :cond_4

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/s$a;->b:Lcom/google/android/exoplayer2/source/z$a;

    .line 8
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1$a;->d:Lcom/google/android/exoplayer2/m1;

    .line 10
    invoke-static {v0}, Lcom/google/android/exoplayer2/m1;->c(Lcom/google/android/exoplayer2/m1;)Lcom/google/android/exoplayer2/drm/s$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/s$a;->u(ILcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/drm/s$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/m1$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public H(ILcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/s;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/m1$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1$a;->b:Lcom/google/android/exoplayer2/source/h0$a;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/h0$a;->j(Lcom/google/android/exoplayer2/source/s;)V

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/m1$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1$a;->b:Lcom/google/android/exoplayer2/source/h0$a;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/source/h0$a;->s(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/m1$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1$a;->b:Lcom/google/android/exoplayer2/source/h0$a;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/source/h0$a;->B(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/m1$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/m1$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1$a;->b:Lcom/google/android/exoplayer2/source/h0$a;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/h0$a;->E(Lcom/google/android/exoplayer2/source/s;)V

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/m1$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/m1$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/m1$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1$a;->b:Lcom/google/android/exoplayer2/source/h0$a;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/source/h0$a;->v(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/m1$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/m1$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/m1$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1$a;->b:Lcom/google/android/exoplayer2/source/h0$a;

    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/google/android/exoplayer2/source/h0$a;->y(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Ljava/io/IOException;Z)V

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/m1$a;->a(ILcom/google/android/exoplayer2/source/z$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/s$a;->j()V

    :cond_0
    return-void
.end method
