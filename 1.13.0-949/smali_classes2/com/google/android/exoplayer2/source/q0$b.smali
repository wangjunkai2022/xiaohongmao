.class public final Lcom/google/android/exoplayer2/source/q0$b;
.super Ljava/lang/Object;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/m$a;

.field private b:Lcom/google/android/exoplayer2/source/l0$a;

.field private c:Z

.field private d:Lcom/google/android/exoplayer2/drm/x;

.field private e:Lcom/google/android/exoplayer2/upstream/f0;

.field private f:I

.field private g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/m$a;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/h;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/h;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/q0$b;-><init>(Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/extractor/q;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/extractor/q;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/s0;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/s0;-><init>(Lcom/google/android/exoplayer2/extractor/q;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/q0$b;-><init>(Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/source/l0$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/source/l0$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0$b;->a:Lcom/google/android/exoplayer2/upstream/m$a;

    .line 5
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/q0$b;->b:Lcom/google/android/exoplayer2/source/l0$a;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/drm/j;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/drm/j;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0$b;->d:Lcom/google/android/exoplayer2/drm/x;

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/upstream/w;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/w;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0$b;->e:Lcom/google/android/exoplayer2/upstream/f0;

    const/high16 p1, 0x100000

    .line 8
    iput p1, p0, Lcom/google/android/exoplayer2/source/q0$b;->f:I

    return-void
.end method

.method public static synthetic j(Lcom/google/android/exoplayer2/extractor/q;)Lcom/google/android/exoplayer2/source/l0;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/q0$b;->o(Lcom/google/android/exoplayer2/extractor/q;)Lcom/google/android/exoplayer2/source/l0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/google/android/exoplayer2/extractor/q;)Lcom/google/android/exoplayer2/source/l0;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/q0$b;->q(Lcom/google/android/exoplayer2/extractor/q;)Lcom/google/android/exoplayer2/source/l0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/b1;)Lcom/google/android/exoplayer2/drm/u;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/q0$b;->p(Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/b1;)Lcom/google/android/exoplayer2/drm/u;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic o(Lcom/google/android/exoplayer2/extractor/q;)Lcom/google/android/exoplayer2/source/l0;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/source/b;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/b;-><init>(Lcom/google/android/exoplayer2/extractor/q;)V

    return-object v0
.end method

.method private static synthetic p(Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/b1;)Lcom/google/android/exoplayer2/drm/u;
    .locals 0

    return-object p0
.end method

.method private static synthetic q(Lcom/google/android/exoplayer2/extractor/q;)Lcom/google/android/exoplayer2/source/l0;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/b;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lcom/google/android/exoplayer2/extractor/h;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/h;-><init>()V

    :goto_0
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/b;-><init>(Lcom/google/android/exoplayer2/extractor/q;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/j0;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/q0$b;->w(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/q0$b;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/util/List;)Lcom/google/android/exoplayer2/source/j0;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/i0;->b(Lcom/google/android/exoplayer2/source/j0;Ljava/util/List;)Lcom/google/android/exoplayer2/source/j0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Lcom/google/android/exoplayer2/b1;)Lcom/google/android/exoplayer2/source/z;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/q0$b;->n(Lcom/google/android/exoplayer2/b1;)Lcom/google/android/exoplayer2/source/q0;

    move-result-object p1

    return-object p1
.end method

.method public d()[I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic e(Lcom/google/android/exoplayer2/drm/x;)Lcom/google/android/exoplayer2/source/j0;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/drm/x;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/q0$b;->v(Lcom/google/android/exoplayer2/drm/x;)Lcom/google/android/exoplayer2/source/q0$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/z;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/q0$b;->m(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/q0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Lcom/google/android/exoplayer2/upstream/f0;)Lcom/google/android/exoplayer2/source/j0;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/upstream/f0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/q0$b;->y(Lcom/google/android/exoplayer2/upstream/f0;)Lcom/google/android/exoplayer2/source/q0$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;)Lcom/google/android/exoplayer2/source/j0;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/q0$b;->t(Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;)Lcom/google/android/exoplayer2/source/q0$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Lcom/google/android/exoplayer2/drm/u;)Lcom/google/android/exoplayer2/source/j0;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/drm/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/q0$b;->u(Lcom/google/android/exoplayer2/drm/u;)Lcom/google/android/exoplayer2/source/q0$b;

    move-result-object p1

    return-object p1
.end method

.method public m(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/q0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/exoplayer2/b1$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/b1$c;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/b1$c;->F(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b1$c;->a()Lcom/google/android/exoplayer2/b1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/q0$b;->n(Lcom/google/android/exoplayer2/b1;)Lcom/google/android/exoplayer2/source/q0;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/google/android/exoplayer2/b1;)Lcom/google/android/exoplayer2/source/q0;
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/b1;->b:Lcom/google/android/exoplayer2/b1$g;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/b1;->b:Lcom/google/android/exoplayer2/b1$g;

    iget-object v1, v0, Lcom/google/android/exoplayer2/b1$g;->h:Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/q0$b;->h:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/b1$g;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0$b;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b1;->b()Lcom/google/android/exoplayer2/b1$c;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0$b;->h:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/b1$c;->E(Ljava/lang/Object;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0$b;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/b1$c;->j(Ljava/lang/String;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b1$c;->a()Lcom/google/android/exoplayer2/b1;

    move-result-object p1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b1;->b()Lcom/google/android/exoplayer2/b1$c;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0$b;->h:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/b1$c;->E(Ljava/lang/Object;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b1$c;->a()Lcom/google/android/exoplayer2/b1;

    move-result-object p1

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b1;->b()Lcom/google/android/exoplayer2/b1$c;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0$b;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/b1$c;->j(Ljava/lang/String;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b1$c;->a()Lcom/google/android/exoplayer2/b1;

    move-result-object p1

    :cond_4
    :goto_2
    move-object v1, p1

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/source/q0;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/q0$b;->a:Lcom/google/android/exoplayer2/upstream/m$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/q0$b;->b:Lcom/google/android/exoplayer2/source/l0$a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0$b;->d:Lcom/google/android/exoplayer2/drm/x;

    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/x;->a(Lcom/google/android/exoplayer2/b1;)Lcom/google/android/exoplayer2/drm/u;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/q0$b;->e:Lcom/google/android/exoplayer2/upstream/f0;

    iget v6, p0, Lcom/google/android/exoplayer2/source/q0$b;->f:I

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/q0;-><init>(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/source/l0$a;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/upstream/f0;ILcom/google/android/exoplayer2/source/q0$a;)V

    return-object p1
.end method

.method public r(I)Lcom/google/android/exoplayer2/source/q0$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/source/q0$b;->f:I

    return-object p0
.end method

.method public s(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/q0$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public t(Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;)Lcom/google/android/exoplayer2/source/q0$b;
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0$b;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0$b;->d:Lcom/google/android/exoplayer2/drm/x;

    check-cast v0, Lcom/google/android/exoplayer2/drm/j;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/drm/j;->c(Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;)V

    :cond_0
    return-object p0
.end method

.method public u(Lcom/google/android/exoplayer2/drm/u;)Lcom/google/android/exoplayer2/source/q0$b;
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/drm/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/q0$b;->v(Lcom/google/android/exoplayer2/drm/x;)Lcom/google/android/exoplayer2/source/q0$b;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/r0;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/r0;-><init>(Lcom/google/android/exoplayer2/drm/u;)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/q0$b;->v(Lcom/google/android/exoplayer2/drm/x;)Lcom/google/android/exoplayer2/source/q0$b;

    :goto_0
    return-object p0
.end method

.method public v(Lcom/google/android/exoplayer2/drm/x;)Lcom/google/android/exoplayer2/source/q0$b;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/drm/x;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0$b;->d:Lcom/google/android/exoplayer2/drm/x;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/q0$b;->c:Z

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/drm/j;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/drm/j;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0$b;->d:Lcom/google/android/exoplayer2/drm/x;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/q0$b;->c:Z

    :goto_0
    return-object p0
.end method

.method public w(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/q0$b;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0$b;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0$b;->d:Lcom/google/android/exoplayer2/drm/x;

    check-cast v0, Lcom/google/android/exoplayer2/drm/j;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/drm/j;->d(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public x(Lcom/google/android/exoplayer2/extractor/q;)Lcom/google/android/exoplayer2/source/q0$b;
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/extractor/q;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/exoplayer2/source/t0;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/t0;-><init>(Lcom/google/android/exoplayer2/extractor/q;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/q0$b;->b:Lcom/google/android/exoplayer2/source/l0$a;

    return-object p0
.end method

.method public y(Lcom/google/android/exoplayer2/upstream/f0;)Lcom/google/android/exoplayer2/source/q0$b;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/upstream/f0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/upstream/w;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/w;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0$b;->e:Lcom/google/android/exoplayer2/upstream/f0;

    return-object p0
.end method

.method public z(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/q0$b;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0$b;->h:Ljava/lang/Object;

    return-object p0
.end method
