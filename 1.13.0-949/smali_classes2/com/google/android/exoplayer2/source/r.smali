.class public final Lcom/google/android/exoplayer2/source/r;
.super Lcom/google/android/exoplayer2/source/e;
.source "MaskingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/r$b;,
        Lcom/google/android/exoplayer2/source/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/e<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final j:Lcom/google/android/exoplayer2/source/z;

.field private final k:Z

.field private final l:Lcom/google/android/exoplayer2/s2$d;

.field private final m:Lcom/google/android/exoplayer2/s2$b;

.field private n:Lcom/google/android/exoplayer2/source/r$a;

.field private o:Lcom/google/android/exoplayer2/source/q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p:Z

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/z;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/e;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/r;->j:Lcom/google/android/exoplayer2/source/z;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/z;->o()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/r;->k:Z

    .line 4
    new-instance p2, Lcom/google/android/exoplayer2/s2$d;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/s2$d;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/r;->l:Lcom/google/android/exoplayer2/s2$d;

    .line 5
    new-instance p2, Lcom/google/android/exoplayer2/s2$b;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/s2$b;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/r;->m:Lcom/google/android/exoplayer2/s2$b;

    .line 6
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/z;->p()Lcom/google/android/exoplayer2/s2;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 7
    invoke-static {p2, p1, p1}, Lcom/google/android/exoplayer2/source/r$a;->B(Lcom/google/android/exoplayer2/s2;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/r;->n:Lcom/google/android/exoplayer2/source/r$a;

    .line 8
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/r;->r:Z

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/z;->e()Lcom/google/android/exoplayer2/b1;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/r$a;->A(Lcom/google/android/exoplayer2/b1;)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/r;->n:Lcom/google/android/exoplayer2/source/r$a;

    :goto_1
    return-void
.end method

.method private M(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/r;->n:Lcom/google/android/exoplayer2/source/r$a;

    .line 2
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/r$a;->y(Lcom/google/android/exoplayer2/source/r$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/r;->n:Lcom/google/android/exoplayer2/source/r$a;

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/r$a;->y(Lcom/google/android/exoplayer2/source/r$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object p1, Lcom/google/android/exoplayer2/source/r$a;->i:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method private N(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/r;->n:Lcom/google/android/exoplayer2/source/r$a;

    .line 2
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/r$a;->y(Lcom/google/android/exoplayer2/source/r$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/source/r$a;->i:Ljava/lang/Object;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/r;->n:Lcom/google/android/exoplayer2/source/r$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/r$a;->y(Lcom/google/android/exoplayer2/source/r$a;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private R(J)V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "unpreparedMaskingMediaPeriod"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/r;->o:Lcom/google/android/exoplayer2/source/q;

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/r;->n:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/q;->a:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/r$a;->f(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/r;->n:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/r;->m:Lcom/google/android/exoplayer2/s2$b;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/exoplayer2/s2;->j(ILcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/s2$b;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/exoplayer2/s2$b;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    const-wide/16 p1, 0x0

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    .line 4
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 5
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/q;->t(J)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/r;->q:Z

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/r;->p:Z

    .line 3
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/e;->A()V

    return-void
.end method

.method protected bridge synthetic E(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/source/z$a;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/r;->O(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/source/z$a;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic I(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z;Lcom/google/android/exoplayer2/s2;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/r;->Q(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/z;Lcom/google/android/exoplayer2/s2;)V

    return-void
.end method

.method public L(Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/q;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/q;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/q;-><init>(Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/upstream/b;J)V

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/r;->j:Lcom/google/android/exoplayer2/source/z;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/q;->x(Lcom/google/android/exoplayer2/source/z;)V

    .line 3
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/r;->q:Z

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/r;->N(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/z$a;->d(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/z$a;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/q;->a(Lcom/google/android/exoplayer2/source/z$a;)V

    goto :goto_0

    .line 6
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/r;->o:Lcom/google/android/exoplayer2/source/q;

    .line 7
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/r;->p:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/r;->p:Z

    const/4 p1, 0x0

    .line 9
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/r;->j:Lcom/google/android/exoplayer2/source/z;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/e;->J(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected O(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/source/z$a;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p1, p2, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/r;->M(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/z$a;->d(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/z$a;

    move-result-object p1

    return-object p1
.end method

.method public P()Lcom/google/android/exoplayer2/s2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/r;->n:Lcom/google/android/exoplayer2/source/r$a;

    return-object v0
.end method

.method protected Q(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/z;Lcom/google/android/exoplayer2/s2;)V
    .locals 12

    .line 1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/r;->q:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/r;->n:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/r$a;->z(Lcom/google/android/exoplayer2/s2;)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/r;->n:Lcom/google/android/exoplayer2/source/r$a;

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/r;->o:Lcom/google/android/exoplayer2/source/q;

    if-eqz p1, :cond_5

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/q;->k()J

    move-result-wide p1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/r;->R(J)V

    goto/16 :goto_3

    .line 6
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/r;->r:Z

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/r;->n:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/r$a;->z(Lcom/google/android/exoplayer2/s2;)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_1
    sget-object p1, Lcom/google/android/exoplayer2/s2$d;->r:Ljava/lang/Object;

    sget-object p2, Lcom/google/android/exoplayer2/source/r$a;->i:Ljava/lang/Object;

    invoke-static {p3, p1, p2}, Lcom/google/android/exoplayer2/source/r$a;->B(Lcom/google/android/exoplayer2/s2;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/r;->n:Lcom/google/android/exoplayer2/source/r$a;

    goto/16 :goto_3

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/r;->l:Lcom/google/android/exoplayer2/s2$d;

    const/4 p2, 0x0

    invoke-virtual {p3, p2, p1}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    .line 11
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/r;->l:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s2$d;->e()J

    move-result-wide v0

    .line 12
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/r;->l:Lcom/google/android/exoplayer2/s2$d;

    iget-object p1, p1, Lcom/google/android/exoplayer2/s2$d;->a:Ljava/lang/Object;

    .line 13
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/r;->o:Lcom/google/android/exoplayer2/source/q;

    if-eqz v2, :cond_3

    .line 14
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/q;->p()J

    move-result-wide v2

    .line 15
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/r;->n:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/r;->o:Lcom/google/android/exoplayer2/source/q;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/q;->a:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/r;->m:Lcom/google/android/exoplayer2/s2$b;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/exoplayer2/s2;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/s2$b;

    .line 16
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/r;->m:Lcom/google/android/exoplayer2/s2$b;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/s2$b;->q()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 17
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/r;->n:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/r;->l:Lcom/google/android/exoplayer2/s2$d;

    .line 18
    invoke-virtual {v2, p2, v3}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/s2$d;->e()J

    move-result-wide v2

    cmp-long p2, v4, v2

    if-eqz p2, :cond_3

    move-wide v10, v4

    goto :goto_1

    :cond_3
    move-wide v10, v0

    .line 19
    :goto_1
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/r;->l:Lcom/google/android/exoplayer2/s2$d;

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/r;->m:Lcom/google/android/exoplayer2/s2$b;

    const/4 v9, 0x0

    move-object v6, p3

    .line 20
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/exoplayer2/s2;->n(Lcom/google/android/exoplayer2/s2$d;Lcom/google/android/exoplayer2/s2$b;IJ)Landroid/util/Pair;

    move-result-object p2

    .line 21
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 22
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 23
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/r;->r:Z

    if-eqz p2, :cond_4

    .line 24
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/r;->n:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/r$a;->z(Lcom/google/android/exoplayer2/s2;)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object p1

    goto :goto_2

    .line 25
    :cond_4
    invoke-static {p3, p1, v0}, Lcom/google/android/exoplayer2/source/r$a;->B(Lcom/google/android/exoplayer2/s2;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/r;->n:Lcom/google/android/exoplayer2/source/r$a;

    .line 26
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/r;->o:Lcom/google/android/exoplayer2/source/q;

    if-eqz p1, :cond_5

    .line 27
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/r;->R(J)V

    .line 28
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/q;->a:Lcom/google/android/exoplayer2/source/z$a;

    iget-object p2, p1, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    .line 29
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/r;->N(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/z$a;->d(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/z$a;

    move-result-object p1

    goto :goto_4

    :cond_5
    :goto_3
    const/4 p1, 0x0

    :goto_4
    const/4 p2, 0x1

    .line 30
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/r;->r:Z

    .line 31
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/r;->q:Z

    .line 32
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/r;->n:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/a;->z(Lcom/google/android/exoplayer2/s2;)V

    if-eqz p1, :cond_6

    .line 33
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/r;->o:Lcom/google/android/exoplayer2/source/q;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/source/q;

    .line 34
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/q;->a(Lcom/google/android/exoplayer2/source/z$a;)V

    :cond_6
    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/w;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/r;->L(Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/q;

    move-result-object p1

    return-object p1
.end method

.method public e()Lcom/google/android/exoplayer2/b1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/r;->j:Lcom/google/android/exoplayer2/source/z;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/z;->e()Lcom/google/android/exoplayer2/b1;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/r;->j:Lcom/google/android/exoplayer2/source/z;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/z;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/google/android/exoplayer2/source/w;)V
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/q;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/q;->w()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/r;->o:Lcom/google/android/exoplayer2/source/q;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/r;->o:Lcom/google/android/exoplayer2/source/q;

    :cond_0
    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public y(Lcom/google/android/exoplayer2/upstream/p0;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/upstream/p0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/e;->y(Lcom/google/android/exoplayer2/upstream/p0;)V

    .line 2
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/r;->k:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/r;->p:Z

    const/4 p1, 0x0

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/r;->j:Lcom/google/android/exoplayer2/source/z;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/e;->J(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z;)V

    :cond_0
    return-void
.end method
