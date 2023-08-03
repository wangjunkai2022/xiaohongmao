.class public final Lcom/google/android/exoplayer2/k2$b;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/k2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/exoplayer2/i2;

.field private c:Lcom/google/android/exoplayer2/util/d;

.field private d:J

.field private e:Lcom/google/android/exoplayer2/trackselection/o;

.field private f:Lcom/google/android/exoplayer2/source/j0;

.field private g:Lcom/google/android/exoplayer2/z0;

.field private h:Lcom/google/android/exoplayer2/upstream/e;

.field private i:Lcom/google/android/exoplayer2/analytics/h1;

.field private j:Landroid/os/Looper;

.field private k:Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Lcom/google/android/exoplayer2/audio/e;

.field private m:Z

.field private n:I

.field private o:Z

.field private p:Z

.field private q:I

.field private r:Z

.field private s:Lcom/google/android/exoplayer2/j2;

.field private t:Lcom/google/android/exoplayer2/y0;

.field private u:J

.field private v:J

.field private w:Z

.field private x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/o;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/o;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/exoplayer2/extractor/h;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/h;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/k2$b;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/extractor/q;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/q;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/o;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/o;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/k2$b;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/extractor/q;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/i2;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/extractor/h;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/h;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/k2$b;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/extractor/q;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/extractor/q;)V
    .locals 8

    .line 4
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/exoplayer2/source/k;

    invoke-direct {v4, p1, p3}, Lcom/google/android/exoplayer2/source/k;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/q;)V

    new-instance v5, Lcom/google/android/exoplayer2/m;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/m;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/r;->m(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/r;

    move-result-object v6

    new-instance v7, Lcom/google/android/exoplayer2/analytics/h1;

    sget-object p3, Lcom/google/android/exoplayer2/util/d;->a:Lcom/google/android/exoplayer2/util/d;

    invoke-direct {v7, p3}, Lcom/google/android/exoplayer2/analytics/h1;-><init>(Lcom/google/android/exoplayer2/util/d;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 6
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/k2$b;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/trackselection/o;Lcom/google/android/exoplayer2/source/j0;Lcom/google/android/exoplayer2/z0;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/analytics/h1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/trackselection/o;Lcom/google/android/exoplayer2/source/j0;Lcom/google/android/exoplayer2/z0;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/analytics/h1;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/exoplayer2/k2$b;->a:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/google/android/exoplayer2/k2$b;->b:Lcom/google/android/exoplayer2/i2;

    .line 10
    iput-object p3, p0, Lcom/google/android/exoplayer2/k2$b;->e:Lcom/google/android/exoplayer2/trackselection/o;

    .line 11
    iput-object p4, p0, Lcom/google/android/exoplayer2/k2$b;->f:Lcom/google/android/exoplayer2/source/j0;

    .line 12
    iput-object p5, p0, Lcom/google/android/exoplayer2/k2$b;->g:Lcom/google/android/exoplayer2/z0;

    .line 13
    iput-object p6, p0, Lcom/google/android/exoplayer2/k2$b;->h:Lcom/google/android/exoplayer2/upstream/e;

    .line 14
    iput-object p7, p0, Lcom/google/android/exoplayer2/k2$b;->i:Lcom/google/android/exoplayer2/analytics/h1;

    .line 15
    invoke-static {}, Lcom/google/android/exoplayer2/util/z0;->X()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/k2$b;->j:Landroid/os/Looper;

    .line 16
    sget-object p1, Lcom/google/android/exoplayer2/audio/e;->f:Lcom/google/android/exoplayer2/audio/e;

    iput-object p1, p0, Lcom/google/android/exoplayer2/k2$b;->l:Lcom/google/android/exoplayer2/audio/e;

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/google/android/exoplayer2/k2$b;->n:I

    const/4 p1, 0x1

    .line 18
    iput p1, p0, Lcom/google/android/exoplayer2/k2$b;->q:I

    .line 19
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/k2$b;->r:Z

    .line 20
    sget-object p1, Lcom/google/android/exoplayer2/j2;->g:Lcom/google/android/exoplayer2/j2;

    iput-object p1, p0, Lcom/google/android/exoplayer2/k2$b;->s:Lcom/google/android/exoplayer2/j2;

    .line 21
    new-instance p1, Lcom/google/android/exoplayer2/l$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/l$b;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/l$b;->a()Lcom/google/android/exoplayer2/l;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/k2$b;->t:Lcom/google/android/exoplayer2/y0;

    .line 22
    sget-object p1, Lcom/google/android/exoplayer2/util/d;->a:Lcom/google/android/exoplayer2/util/d;

    iput-object p1, p0, Lcom/google/android/exoplayer2/k2$b;->c:Lcom/google/android/exoplayer2/util/d;

    const-wide/16 p1, 0x1f4

    .line 23
    iput-wide p1, p0, Lcom/google/android/exoplayer2/k2$b;->u:J

    const-wide/16 p1, 0x7d0

    .line 24
    iput-wide p1, p0, Lcom/google/android/exoplayer2/k2$b;->v:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/k2$b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k2$b;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/k2$b;)Lcom/google/android/exoplayer2/analytics/h1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k2$b;->i:Lcom/google/android/exoplayer2/analytics/h1;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/k2$b;)Lcom/google/android/exoplayer2/i2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k2$b;->b:Lcom/google/android/exoplayer2/i2;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/k2$b;)Lcom/google/android/exoplayer2/trackselection/o;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k2$b;->e:Lcom/google/android/exoplayer2/trackselection/o;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/k2$b;)Lcom/google/android/exoplayer2/source/j0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k2$b;->f:Lcom/google/android/exoplayer2/source/j0;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/k2$b;)Lcom/google/android/exoplayer2/z0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k2$b;->g:Lcom/google/android/exoplayer2/z0;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/k2$b;)Lcom/google/android/exoplayer2/upstream/e;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k2$b;->h:Lcom/google/android/exoplayer2/upstream/e;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/k2$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/k2$b;->r:Z

    return p0
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/k2$b;)Lcom/google/android/exoplayer2/j2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k2$b;->s:Lcom/google/android/exoplayer2/j2;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/k2$b;)Lcom/google/android/exoplayer2/y0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k2$b;->t:Lcom/google/android/exoplayer2/y0;

    return-object p0
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/k2$b;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/k2$b;->u:J

    return-wide v0
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/k2$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/k2$b;->w:Z

    return p0
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/k2$b;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k2$b;->k:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-object p0
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/k2$b;)Lcom/google/android/exoplayer2/util/d;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k2$b;->c:Lcom/google/android/exoplayer2/util/d;

    return-object p0
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/k2$b;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/k2$b;->d:J

    return-wide v0
.end method

.method static synthetic p(Lcom/google/android/exoplayer2/k2$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/k2$b;->o:Z

    return p0
.end method

.method static synthetic q(Lcom/google/android/exoplayer2/k2$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/k2$b;->m:Z

    return p0
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/k2$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/k2$b;->n:I

    return p0
.end method

.method static synthetic s(Lcom/google/android/exoplayer2/k2$b;)Lcom/google/android/exoplayer2/audio/e;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k2$b;->l:Lcom/google/android/exoplayer2/audio/e;

    return-object p0
.end method

.method static synthetic t(Lcom/google/android/exoplayer2/k2$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/k2$b;->q:I

    return p0
.end method

.method static synthetic u(Lcom/google/android/exoplayer2/k2$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/k2$b;->p:Z

    return p0
.end method

.method static synthetic v(Lcom/google/android/exoplayer2/k2$b;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/k2$b;->v:J

    return-wide v0
.end method

.method static synthetic w(Lcom/google/android/exoplayer2/k2$b;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k2$b;->j:Landroid/os/Looper;

    return-object p0
.end method


# virtual methods
.method public A(Lcom/google/android/exoplayer2/audio/e;Z)Lcom/google/android/exoplayer2/k2$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2$b;->x:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k2$b;->l:Lcom/google/android/exoplayer2/audio/e;

    .line 3
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/k2$b;->m:Z

    return-object p0
.end method

.method public B(Lcom/google/android/exoplayer2/upstream/e;)Lcom/google/android/exoplayer2/k2$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2$b;->x:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k2$b;->h:Lcom/google/android/exoplayer2/upstream/e;

    return-object p0
.end method

.method public C(Lcom/google/android/exoplayer2/util/d;)Lcom/google/android/exoplayer2/k2$b;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2$b;->x:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k2$b;->c:Lcom/google/android/exoplayer2/util/d;

    return-object p0
.end method

.method public D(J)Lcom/google/android/exoplayer2/k2$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2$b;->x:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/k2$b;->v:J

    return-object p0
.end method

.method public E(Z)Lcom/google/android/exoplayer2/k2$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2$b;->x:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/k2$b;->o:Z

    return-object p0
.end method

.method public F(Lcom/google/android/exoplayer2/y0;)Lcom/google/android/exoplayer2/k2$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2$b;->x:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k2$b;->t:Lcom/google/android/exoplayer2/y0;

    return-object p0
.end method

.method public G(Lcom/google/android/exoplayer2/z0;)Lcom/google/android/exoplayer2/k2$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2$b;->x:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k2$b;->g:Lcom/google/android/exoplayer2/z0;

    return-object p0
.end method

.method public H(Landroid/os/Looper;)Lcom/google/android/exoplayer2/k2$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2$b;->x:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k2$b;->j:Landroid/os/Looper;

    return-object p0
.end method

.method public I(Lcom/google/android/exoplayer2/source/j0;)Lcom/google/android/exoplayer2/k2$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2$b;->x:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k2$b;->f:Lcom/google/android/exoplayer2/source/j0;

    return-object p0
.end method

.method public J(Z)Lcom/google/android/exoplayer2/k2$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2$b;->x:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/k2$b;->w:Z

    return-object p0
.end method

.method public K(Lcom/google/android/exoplayer2/util/PriorityTaskManager;)Lcom/google/android/exoplayer2/k2$b;
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2$b;->x:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k2$b;->k:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-object p0
.end method

.method public L(J)Lcom/google/android/exoplayer2/k2$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2$b;->x:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/k2$b;->u:J

    return-object p0
.end method

.method public M(Lcom/google/android/exoplayer2/j2;)Lcom/google/android/exoplayer2/k2$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2$b;->x:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k2$b;->s:Lcom/google/android/exoplayer2/j2;

    return-object p0
.end method

.method public N(Z)Lcom/google/android/exoplayer2/k2$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2$b;->x:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/k2$b;->p:Z

    return-object p0
.end method

.method public O(Lcom/google/android/exoplayer2/trackselection/o;)Lcom/google/android/exoplayer2/k2$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2$b;->x:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k2$b;->e:Lcom/google/android/exoplayer2/trackselection/o;

    return-object p0
.end method

.method public P(Z)Lcom/google/android/exoplayer2/k2$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2$b;->x:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/k2$b;->r:Z

    return-object p0
.end method

.method public Q(I)Lcom/google/android/exoplayer2/k2$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2$b;->x:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/k2$b;->q:I

    return-object p0
.end method

.method public R(I)Lcom/google/android/exoplayer2/k2$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2$b;->x:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/k2$b;->n:I

    return-object p0
.end method

.method public x()Lcom/google/android/exoplayer2/k2;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2$b;->x:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/k2$b;->x:Z

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/k2;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/k2;-><init>(Lcom/google/android/exoplayer2/k2$b;)V

    return-object v0
.end method

.method public y(J)Lcom/google/android/exoplayer2/k2$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2$b;->x:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/k2$b;->d:J

    return-object p0
.end method

.method public z(Lcom/google/android/exoplayer2/analytics/h1;)Lcom/google/android/exoplayer2/k2$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2$b;->x:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k2$b;->i:Lcom/google/android/exoplayer2/analytics/h1;

    return-object p0
.end method
