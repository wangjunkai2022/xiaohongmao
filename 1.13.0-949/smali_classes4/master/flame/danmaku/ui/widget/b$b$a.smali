.class Lmaster/flame/danmaku/ui/widget/b$b$a;
.super Lmaster/flame/danmaku/danmaku/model/m$b;
.source "FakeDanmakuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/ui/widget/b$b;->f()Lmaster/flame/danmaku/danmaku/model/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/m$b<",
        "Lmaster/flame/danmaku/danmaku/model/d;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lmaster/flame/danmaku/danmaku/model/m;

.field final synthetic f:Lmaster/flame/danmaku/ui/widget/b$b;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/ui/widget/b$b;Lmaster/flame/danmaku/danmaku/model/m;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/b$b$a;->f:Lmaster/flame/danmaku/ui/widget/b$b;

    iput-object p2, p0, Lmaster/flame/danmaku/ui/widget/b$b$a;->e:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/m$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/ui/widget/b$b$a;->e(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public e(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/d;->k()J

    move-result-wide v2

    .line 2
    iget-object v4, v1, Lmaster/flame/danmaku/ui/widget/b$b$a;->f:Lmaster/flame/danmaku/ui/widget/b$b;

    invoke-static {v4}, Lmaster/flame/danmaku/ui/widget/b$b;->m(Lmaster/flame/danmaku/ui/widget/b$b;)J

    move-result-wide v4

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-gez v7, :cond_0

    return v6

    .line 3
    :cond_0
    iget-object v4, v1, Lmaster/flame/danmaku/ui/widget/b$b$a;->f:Lmaster/flame/danmaku/ui/widget/b$b;

    invoke-static {v4}, Lmaster/flame/danmaku/ui/widget/b$b;->n(Lmaster/flame/danmaku/ui/widget/b$b;)J

    move-result-wide v4

    cmp-long v7, v2, v4

    if-lez v7, :cond_1

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_1
    iget-object v2, v1, Lmaster/flame/danmaku/ui/widget/b$b$a;->f:Lmaster/flame/danmaku/ui/widget/b$b;

    invoke-static {v2}, Lmaster/flame/danmaku/ui/widget/b$b;->p(Lmaster/flame/danmaku/ui/widget/b$b;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v2

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/d;->n()I

    move-result v3

    iget-object v4, v1, Lmaster/flame/danmaku/ui/widget/b$b$a;->f:Lmaster/flame/danmaku/ui/widget/b$b;

    invoke-static {v4}, Lmaster/flame/danmaku/ui/widget/b$b;->o(Lmaster/flame/danmaku/ui/widget/b$b;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmaster/flame/danmaku/danmaku/model/android/d;->f(ILmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 5
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/d;->k()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lmaster/flame/danmaku/danmaku/model/d;->G(J)V

    .line 6
    iget-object v3, v0, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lg8/a;->e(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/CharSequence;)V

    .line 7
    iget v3, v0, Lmaster/flame/danmaku/danmaku/model/d;->l:F

    iput v3, v2, Lmaster/flame/danmaku/danmaku/model/d;->l:F

    .line 8
    iget v3, v0, Lmaster/flame/danmaku/danmaku/model/d;->g:I

    iput v3, v2, Lmaster/flame/danmaku/danmaku/model/d;->g:I

    .line 9
    iget v3, v0, Lmaster/flame/danmaku/danmaku/model/d;->j:I

    iput v3, v2, Lmaster/flame/danmaku/danmaku/model/d;->j:I

    .line 10
    instance-of v3, v0, Lmaster/flame/danmaku/danmaku/model/r;

    if-eqz v3, :cond_2

    .line 11
    move-object v3, v0

    check-cast v3, Lmaster/flame/danmaku/danmaku/model/r;

    .line 12
    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/d;->s:I

    iput v0, v2, Lmaster/flame/danmaku/danmaku/model/d;->s:I

    .line 13
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/g;

    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/d;->f()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lmaster/flame/danmaku/danmaku/model/g;-><init>(J)V

    iput-object v0, v2, Lmaster/flame/danmaku/danmaku/model/d;->r:Lmaster/flame/danmaku/danmaku/model/g;

    .line 14
    iget v0, v3, Lmaster/flame/danmaku/danmaku/model/r;->p0:F

    iput v0, v2, Lmaster/flame/danmaku/danmaku/model/d;->h:F

    .line 15
    iget v0, v3, Lmaster/flame/danmaku/danmaku/model/d;->i:F

    iput v0, v2, Lmaster/flame/danmaku/danmaku/model/d;->i:F

    .line 16
    move-object v0, v2

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/r;

    iget-boolean v4, v3, Lmaster/flame/danmaku/danmaku/model/r;->j0:Z

    iput-boolean v4, v0, Lmaster/flame/danmaku/danmaku/model/r;->j0:Z

    .line 17
    iget-object v0, v1, Lmaster/flame/danmaku/ui/widget/b$b$a;->f:Lmaster/flame/danmaku/ui/widget/b$b;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/b$b;->s(Lmaster/flame/danmaku/ui/widget/b$b;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    iget-object v7, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget v9, v3, Lmaster/flame/danmaku/danmaku/model/r;->X:F

    iget v10, v3, Lmaster/flame/danmaku/danmaku/model/r;->Y:F

    iget v11, v3, Lmaster/flame/danmaku/danmaku/model/r;->Z:F

    iget v12, v3, Lmaster/flame/danmaku/danmaku/model/r;->a0:F

    iget-wide v13, v3, Lmaster/flame/danmaku/danmaku/model/r;->d0:J

    iget-wide v4, v3, Lmaster/flame/danmaku/danmaku/model/r;->e0:J

    iget-object v0, v1, Lmaster/flame/danmaku/ui/widget/b$b$a;->f:Lmaster/flame/danmaku/ui/widget/b$b;

    .line 18
    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/b$b;->q(Lmaster/flame/danmaku/ui/widget/b$b;)F

    move-result v17

    iget-object v0, v1, Lmaster/flame/danmaku/ui/widget/b$b$a;->f:Lmaster/flame/danmaku/ui/widget/b$b;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/b$b;->r(Lmaster/flame/danmaku/ui/widget/b$b;)F

    move-result v18

    move-object v8, v2

    move-wide v15, v4

    .line 19
    invoke-virtual/range {v7 .. v18}, Lmaster/flame/danmaku/danmaku/model/android/d;->i(Lmaster/flame/danmaku/danmaku/model/d;FFFFJJFF)V

    .line 20
    iget-object v0, v1, Lmaster/flame/danmaku/ui/widget/b$b$a;->f:Lmaster/flame/danmaku/ui/widget/b$b;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/b$b;->t(Lmaster/flame/danmaku/ui/widget/b$b;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    iget-object v7, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget v9, v3, Lmaster/flame/danmaku/danmaku/model/r;->k0:I

    iget v10, v3, Lmaster/flame/danmaku/danmaku/model/r;->l0:I

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/d;->f()J

    move-result-wide v11

    invoke-virtual/range {v7 .. v12}, Lmaster/flame/danmaku/danmaku/model/android/d;->g(Lmaster/flame/danmaku/danmaku/model/d;IIJ)V

    return v6

    .line 21
    :cond_2
    iget-object v3, v1, Lmaster/flame/danmaku/ui/widget/b$b$a;->f:Lmaster/flame/danmaku/ui/widget/b$b;

    invoke-static {v3}, Lmaster/flame/danmaku/ui/widget/b$b;->u(Lmaster/flame/danmaku/ui/widget/b$b;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmaster/flame/danmaku/danmaku/model/d;->I(Lmaster/flame/danmaku/danmaku/model/f;)V

    .line 22
    iget v3, v0, Lmaster/flame/danmaku/danmaku/model/d;->G:I

    iput v3, v2, Lmaster/flame/danmaku/danmaku/model/d;->G:I

    .line 23
    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/d;->H:I

    iput v0, v2, Lmaster/flame/danmaku/danmaku/model/d;->H:I

    .line 24
    iget-object v0, v1, Lmaster/flame/danmaku/ui/widget/b$b$a;->f:Lmaster/flame/danmaku/ui/widget/b$b;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/b$b;->v(Lmaster/flame/danmaku/ui/widget/b$b;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    iput-object v0, v2, Lmaster/flame/danmaku/danmaku/model/d;->I:Lmaster/flame/danmaku/danmaku/model/j;

    .line 25
    iget-object v0, v1, Lmaster/flame/danmaku/ui/widget/b$b$a;->e:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/m;->e()Ljava/lang/Object;

    move-result-object v3

    .line 26
    monitor-enter v3

    .line 27
    :try_start_0
    iget-object v0, v1, Lmaster/flame/danmaku/ui/widget/b$b$a;->e:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {v0, v2}, Lmaster/flame/danmaku/danmaku/model/m;->i(Lmaster/flame/danmaku/danmaku/model/d;)Z

    .line 28
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_0
    return v6
.end method
