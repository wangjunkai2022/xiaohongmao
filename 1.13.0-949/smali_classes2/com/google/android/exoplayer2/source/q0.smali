.class public final Lcom/google/android/exoplayer2/source/q0;
.super Lcom/google/android/exoplayer2/source/a;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/p0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/q0$b;
    }
.end annotation


# static fields
.field public static final s:I = 0x100000


# instance fields
.field private final g:Lcom/google/android/exoplayer2/b1;

.field private final h:Lcom/google/android/exoplayer2/b1$g;

.field private final i:Lcom/google/android/exoplayer2/upstream/m$a;

.field private final j:Lcom/google/android/exoplayer2/source/l0$a;

.field private final k:Lcom/google/android/exoplayer2/drm/u;

.field private final l:Lcom/google/android/exoplayer2/upstream/f0;

.field private final m:I

.field private n:Z

.field private o:J

.field private p:Z

.field private q:Z

.field private r:Lcom/google/android/exoplayer2/upstream/p0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/source/l0$a;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/upstream/f0;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/google/android/exoplayer2/b1;->b:Lcom/google/android/exoplayer2/b1$g;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/b1$g;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->h:Lcom/google/android/exoplayer2/b1$g;

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->g:Lcom/google/android/exoplayer2/b1;

    .line 5
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/q0;->i:Lcom/google/android/exoplayer2/upstream/m$a;

    .line 6
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/q0;->j:Lcom/google/android/exoplayer2/source/l0$a;

    .line 7
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/q0;->k:Lcom/google/android/exoplayer2/drm/u;

    .line 8
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/q0;->l:Lcom/google/android/exoplayer2/upstream/f0;

    .line 9
    iput p6, p0, Lcom/google/android/exoplayer2/source/q0;->m:I

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/q0;->n:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/q0;->o:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/source/l0$a;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/upstream/f0;ILcom/google/android/exoplayer2/source/q0$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/q0;-><init>(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/source/l0$a;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/upstream/f0;I)V

    return-void
.end method

.method private B()V
    .locals 9

    .line 1
    new-instance v8, Lcom/google/android/exoplayer2/source/b1;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/q0;->o:J

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/q0;->p:Z

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/q0;->q:Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/q0;->g:Lcom/google/android/exoplayer2/b1;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/b1;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/b1;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->n:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/source/q0$a;

    invoke-direct {v0, p0, v8}, Lcom/google/android/exoplayer2/source/q0$a;-><init>(Lcom/google/android/exoplayer2/source/q0;Lcom/google/android/exoplayer2/s2;)V

    move-object v8, v0

    .line 4
    :cond_0
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/source/a;->z(Lcom/google/android/exoplayer2/s2;)V

    return-void
.end method


# virtual methods
.method protected A()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->k:Lcom/google/android/exoplayer2/drm/u;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/u;->release()V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/w;
    .locals 14

    move-object v12, p0

    .line 1
    iget-object v0, v12, Lcom/google/android/exoplayer2/source/q0;->i:Lcom/google/android/exoplayer2/upstream/m$a;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/m$a;->a()Lcom/google/android/exoplayer2/upstream/m;

    move-result-object v2

    .line 2
    iget-object v0, v12, Lcom/google/android/exoplayer2/source/q0;->r:Lcom/google/android/exoplayer2/upstream/p0;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/upstream/m;->e(Lcom/google/android/exoplayer2/upstream/p0;)V

    .line 4
    :cond_0
    new-instance v13, Lcom/google/android/exoplayer2/source/p0;

    iget-object v0, v12, Lcom/google/android/exoplayer2/source/q0;->h:Lcom/google/android/exoplayer2/b1$g;

    iget-object v1, v0, Lcom/google/android/exoplayer2/b1$g;->a:Landroid/net/Uri;

    iget-object v0, v12, Lcom/google/android/exoplayer2/source/q0;->j:Lcom/google/android/exoplayer2/source/l0$a;

    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/l0$a;->a()Lcom/google/android/exoplayer2/source/l0;

    move-result-object v3

    iget-object v4, v12, Lcom/google/android/exoplayer2/source/q0;->k:Lcom/google/android/exoplayer2/drm/u;

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->r(Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/drm/s$a;

    move-result-object v5

    iget-object v6, v12, Lcom/google/android/exoplayer2/source/q0;->l:Lcom/google/android/exoplayer2/upstream/f0;

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->t(Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/source/h0$a;

    move-result-object v7

    iget-object v0, v12, Lcom/google/android/exoplayer2/source/q0;->h:Lcom/google/android/exoplayer2/b1$g;

    iget-object v10, v0, Lcom/google/android/exoplayer2/b1$g;->f:Ljava/lang/String;

    iget v11, v12, Lcom/google/android/exoplayer2/source/q0;->m:I

    move-object v0, v13

    move-object v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/source/p0;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/source/l0;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/upstream/f0;Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/p0$b;Lcom/google/android/exoplayer2/upstream/b;Ljava/lang/String;I)V

    return-object v13
.end method

.method public e()Lcom/google/android/exoplayer2/b1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->g:Lcom/google/android/exoplayer2/b1;

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->h:Lcom/google/android/exoplayer2/b1$g;

    iget-object v0, v0, Lcom/google/android/exoplayer2/b1$g;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public g(Lcom/google/android/exoplayer2/source/w;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/p0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/p0;->d0()V

    return-void
.end method

.method public k(JZZ)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/q0;->o:J

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->n:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/q0;->o:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->p:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->q:Z

    if-ne v0, p4, :cond_1

    return-void

    .line 3
    :cond_1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/q0;->o:J

    .line 4
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/source/q0;->p:Z

    .line 5
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/source/q0;->q:Z

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/q0;->n:Z

    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->B()V

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method protected y(Lcom/google/android/exoplayer2/upstream/p0;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/upstream/p0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->r:Lcom/google/android/exoplayer2/upstream/p0;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->k:Lcom/google/android/exoplayer2/drm/u;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/u;->a()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->B()V

    return-void
.end method
