.class public final Lcom/google/android/exoplayer2/q$c;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:[Lcom/google/android/exoplayer2/e2;

.field private b:Lcom/google/android/exoplayer2/util/d;

.field private c:Lcom/google/android/exoplayer2/trackselection/o;

.field private d:Lcom/google/android/exoplayer2/source/j0;

.field private e:Lcom/google/android/exoplayer2/z0;

.field private f:Lcom/google/android/exoplayer2/upstream/e;

.field private g:Landroid/os/Looper;

.field private h:Lcom/google/android/exoplayer2/analytics/h1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Z

.field private j:Lcom/google/android/exoplayer2/j2;

.field private k:Z

.field private l:J

.field private m:Lcom/google/android/exoplayer2/y0;

.field private n:Z

.field private o:J


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[Lcom/google/android/exoplayer2/e2;)V
    .locals 6

    .line 1
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/google/android/exoplayer2/source/k;

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/source/k;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/exoplayer2/m;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/m;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/r;->m(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/r;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/q$c;-><init>([Lcom/google/android/exoplayer2/e2;Lcom/google/android/exoplayer2/trackselection/o;Lcom/google/android/exoplayer2/source/j0;Lcom/google/android/exoplayer2/z0;Lcom/google/android/exoplayer2/upstream/e;)V

    return-void
.end method

.method public constructor <init>([Lcom/google/android/exoplayer2/e2;Lcom/google/android/exoplayer2/trackselection/o;Lcom/google/android/exoplayer2/source/j0;Lcom/google/android/exoplayer2/z0;Lcom/google/android/exoplayer2/upstream/e;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    array-length v0, p1

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 6
    iput-object p1, p0, Lcom/google/android/exoplayer2/q$c;->a:[Lcom/google/android/exoplayer2/e2;

    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/q$c;->c:Lcom/google/android/exoplayer2/trackselection/o;

    .line 8
    iput-object p3, p0, Lcom/google/android/exoplayer2/q$c;->d:Lcom/google/android/exoplayer2/source/j0;

    .line 9
    iput-object p4, p0, Lcom/google/android/exoplayer2/q$c;->e:Lcom/google/android/exoplayer2/z0;

    .line 10
    iput-object p5, p0, Lcom/google/android/exoplayer2/q$c;->f:Lcom/google/android/exoplayer2/upstream/e;

    .line 11
    invoke-static {}, Lcom/google/android/exoplayer2/util/z0;->X()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/q$c;->g:Landroid/os/Looper;

    .line 12
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/q$c;->i:Z

    .line 13
    sget-object p1, Lcom/google/android/exoplayer2/j2;->g:Lcom/google/android/exoplayer2/j2;

    iput-object p1, p0, Lcom/google/android/exoplayer2/q$c;->j:Lcom/google/android/exoplayer2/j2;

    .line 14
    new-instance p1, Lcom/google/android/exoplayer2/l$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/l$b;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/l$b;->a()Lcom/google/android/exoplayer2/l;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/q$c;->m:Lcom/google/android/exoplayer2/y0;

    .line 15
    sget-object p1, Lcom/google/android/exoplayer2/util/d;->a:Lcom/google/android/exoplayer2/util/d;

    iput-object p1, p0, Lcom/google/android/exoplayer2/q$c;->b:Lcom/google/android/exoplayer2/util/d;

    const-wide/16 p1, 0x1f4

    .line 16
    iput-wide p1, p0, Lcom/google/android/exoplayer2/q$c;->l:J

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/q;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/q$c;->n:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/q$c;->n:Z

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/p0;

    move-object v3, v1

    iget-object v4, v0, Lcom/google/android/exoplayer2/q$c;->a:[Lcom/google/android/exoplayer2/e2;

    iget-object v5, v0, Lcom/google/android/exoplayer2/q$c;->c:Lcom/google/android/exoplayer2/trackselection/o;

    iget-object v6, v0, Lcom/google/android/exoplayer2/q$c;->d:Lcom/google/android/exoplayer2/source/j0;

    iget-object v7, v0, Lcom/google/android/exoplayer2/q$c;->e:Lcom/google/android/exoplayer2/z0;

    iget-object v8, v0, Lcom/google/android/exoplayer2/q$c;->f:Lcom/google/android/exoplayer2/upstream/e;

    iget-object v9, v0, Lcom/google/android/exoplayer2/q$c;->h:Lcom/google/android/exoplayer2/analytics/h1;

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/q$c;->i:Z

    iget-object v11, v0, Lcom/google/android/exoplayer2/q$c;->j:Lcom/google/android/exoplayer2/j2;

    iget-object v12, v0, Lcom/google/android/exoplayer2/q$c;->m:Lcom/google/android/exoplayer2/y0;

    iget-wide v13, v0, Lcom/google/android/exoplayer2/q$c;->l:J

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/q$c;->k:Z

    iget-object v2, v0, Lcom/google/android/exoplayer2/q$c;->b:Lcom/google/android/exoplayer2/util/d;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/google/android/exoplayer2/q$c;->g:Landroid/os/Looper;

    move-object/from16 v17, v2

    const/16 v18, 0x0

    sget-object v19, Lcom/google/android/exoplayer2/v1$c;->b:Lcom/google/android/exoplayer2/v1$c;

    invoke-direct/range {v3 .. v19}, Lcom/google/android/exoplayer2/p0;-><init>([Lcom/google/android/exoplayer2/e2;Lcom/google/android/exoplayer2/trackselection/o;Lcom/google/android/exoplayer2/source/j0;Lcom/google/android/exoplayer2/z0;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/analytics/h1;ZLcom/google/android/exoplayer2/j2;Lcom/google/android/exoplayer2/y0;JZLcom/google/android/exoplayer2/util/d;Landroid/os/Looper;Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$c;)V

    .line 4
    iget-wide v2, v0, Lcom/google/android/exoplayer2/q$c;->o:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/p0;->q2(J)V

    :cond_0
    return-object v1
.end method

.method public b(J)Lcom/google/android/exoplayer2/q$c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/q$c;->n:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/q$c;->o:J

    return-object p0
.end method

.method public c(Lcom/google/android/exoplayer2/analytics/h1;)Lcom/google/android/exoplayer2/q$c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/q$c;->n:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/q$c;->h:Lcom/google/android/exoplayer2/analytics/h1;

    return-object p0
.end method

.method public d(Lcom/google/android/exoplayer2/upstream/e;)Lcom/google/android/exoplayer2/q$c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/q$c;->n:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/q$c;->f:Lcom/google/android/exoplayer2/upstream/e;

    return-object p0
.end method

.method public e(Lcom/google/android/exoplayer2/util/d;)Lcom/google/android/exoplayer2/q$c;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/q$c;->n:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/q$c;->b:Lcom/google/android/exoplayer2/util/d;

    return-object p0
.end method

.method public f(Lcom/google/android/exoplayer2/y0;)Lcom/google/android/exoplayer2/q$c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/q$c;->n:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/q$c;->m:Lcom/google/android/exoplayer2/y0;

    return-object p0
.end method

.method public g(Lcom/google/android/exoplayer2/z0;)Lcom/google/android/exoplayer2/q$c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/q$c;->n:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/q$c;->e:Lcom/google/android/exoplayer2/z0;

    return-object p0
.end method

.method public h(Landroid/os/Looper;)Lcom/google/android/exoplayer2/q$c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/q$c;->n:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/q$c;->g:Landroid/os/Looper;

    return-object p0
.end method

.method public i(Lcom/google/android/exoplayer2/source/j0;)Lcom/google/android/exoplayer2/q$c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/q$c;->n:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/q$c;->d:Lcom/google/android/exoplayer2/source/j0;

    return-object p0
.end method

.method public j(Z)Lcom/google/android/exoplayer2/q$c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/q$c;->n:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/q$c;->k:Z

    return-object p0
.end method

.method public k(J)Lcom/google/android/exoplayer2/q$c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/q$c;->n:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/q$c;->l:J

    return-object p0
.end method

.method public l(Lcom/google/android/exoplayer2/j2;)Lcom/google/android/exoplayer2/q$c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/q$c;->n:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/q$c;->j:Lcom/google/android/exoplayer2/j2;

    return-object p0
.end method

.method public m(Lcom/google/android/exoplayer2/trackselection/o;)Lcom/google/android/exoplayer2/q$c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/q$c;->n:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/q$c;->c:Lcom/google/android/exoplayer2/trackselection/o;

    return-object p0
.end method

.method public n(Z)Lcom/google/android/exoplayer2/q$c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/q$c;->n:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/q$c;->i:Z

    return-object p0
.end method
