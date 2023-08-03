.class Lmaster/flame/danmaku/danmaku/renderer/android/b$b;
.super Lmaster/flame/danmaku/danmaku/renderer/android/b$d;
.source "DanmakusRetainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/renderer/android/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;
    }
.end annotation


# instance fields
.field protected d:Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;

.field protected e:Lmaster/flame/danmaku/danmaku/model/android/e;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/renderer/android/b$d;-><init>(Lmaster/flame/danmaku/danmaku/renderer/android/b$a;)V

    .line 2
    new-instance v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;-><init>(Lmaster/flame/danmaku/danmaku/renderer/android/b$b;)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b;->d:Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;

    .line 3
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b;->e:Lmaster/flame/danmaku/danmaku/model/android/e;

    return-void
.end method

.method synthetic constructor <init>(Lmaster/flame/danmaku/danmaku/renderer/android/b$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/renderer/android/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/n;Lmaster/flame/danmaku/danmaku/renderer/android/b$g;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 1
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/d;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/d;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/d;->m()F

    move-result v1

    goto :goto_0

    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    :goto_0
    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v0, :cond_2

    .line 4
    iget-object v2, v7, Lmaster/flame/danmaku/danmaku/renderer/android/b$b;->e:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/android/e;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 5
    :goto_1
    invoke-interface/range {p2 .. p2}, Lmaster/flame/danmaku/danmaku/model/n;->r()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_3

    .line 6
    invoke-interface/range {p2 .. p2}, Lmaster/flame/danmaku/danmaku/model/n;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, v8, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    sub-float/2addr v1, v3

    :cond_3
    const/4 v3, 0x0

    if-nez v0, :cond_8

    .line 7
    iput-boolean v12, v7, Lmaster/flame/danmaku/danmaku/renderer/android/b$c;->b:Z

    .line 8
    iget-object v4, v7, Lmaster/flame/danmaku/danmaku/renderer/android/b$b;->d:Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;

    iput v1, v4, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->k:F

    .line 9
    iput-object v9, v4, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->e:Lmaster/flame/danmaku/danmaku/model/n;

    .line 10
    iput-object v8, v4, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->i:Lmaster/flame/danmaku/danmaku/model/d;

    .line 11
    iget-object v1, v7, Lmaster/flame/danmaku/danmaku/renderer/android/b$b;->e:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v1, v4}, Lmaster/flame/danmaku/danmaku/model/android/e;->a(Lmaster/flame/danmaku/danmaku/model/m$b;)V

    .line 12
    iget-object v1, v7, Lmaster/flame/danmaku/danmaku/renderer/android/b$b;->d:Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->f()Lmaster/flame/danmaku/danmaku/renderer/android/b$f;

    move-result-object v1

    .line 13
    iget-object v4, v7, Lmaster/flame/danmaku/danmaku/renderer/android/b$b;->d:Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;

    iget v13, v4, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->k:F

    if-eqz v1, :cond_4

    .line 14
    iget v0, v1, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->a:I

    .line 15
    iget-object v2, v1, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->c:Lmaster/flame/danmaku/danmaku/model/d;

    .line 16
    iget-object v3, v1, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->f:Lmaster/flame/danmaku/danmaku/model/d;

    .line 17
    iget-boolean v4, v1, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->h:Z

    .line 18
    iget-boolean v1, v1, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->i:Z

    move v14, v0

    move/from16 v16, v1

    move-object v5, v2

    move-object/from16 v17, v3

    move v15, v4

    goto :goto_2

    :cond_4
    move v15, v0

    move/from16 v16, v2

    move-object v5, v3

    move-object/from16 v17, v5

    const/4 v14, 0x0

    :goto_2
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v13

    .line 19
    invoke-virtual/range {v0 .. v6}, Lmaster/flame/danmaku/danmaku/renderer/android/b$b;->b(ZLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/n;FLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-interface/range {p2 .. p2}, Lmaster/flame/danmaku/danmaku/model/n;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v8, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    sub-float/2addr v1, v2

    move v12, v0

    move v0, v15

    move-object/from16 v3, v17

    const/4 v2, 0x1

    goto :goto_4

    .line 21
    :cond_5
    invoke-interface/range {p2 .. p2}, Lmaster/flame/danmaku/danmaku/model/n;->r()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v13, v1

    if-ltz v1, :cond_6

    const/4 v11, 0x0

    goto :goto_3

    :cond_6
    move/from16 v11, v16

    :goto_3
    if-eqz v17, :cond_7

    add-int/lit8 v1, v14, -0x1

    move v12, v0

    move v2, v11

    move v0, v15

    move-object/from16 v3, v17

    move v11, v1

    move v1, v13

    goto :goto_4

    :cond_7
    move v12, v0

    move v2, v11

    move v1, v13

    move v11, v14

    move v0, v15

    move-object/from16 v3, v17

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    :goto_4
    if-eqz v10, :cond_9

    .line 22
    invoke-interface {v10, v8, v1, v11, v2}, Lmaster/flame/danmaku/danmaku/renderer/android/b$g;->a(Lmaster/flame/danmaku/danmaku/model/d;FIZ)Z

    move-result v2

    if-eqz v2, :cond_9

    return-void

    :cond_9
    if-eqz v12, :cond_a

    .line 23
    invoke-virtual/range {p0 .. p0}, Lmaster/flame/danmaku/danmaku/renderer/android/b$b;->clear()V

    .line 24
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/d;->g()F

    move-result v2

    invoke-virtual {v8, v9, v2, v1}, Lmaster/flame/danmaku/danmaku/model/d;->A(Lmaster/flame/danmaku/danmaku/model/n;FF)V

    if-nez v0, :cond_b

    .line 25
    iget-object v0, v7, Lmaster/flame/danmaku/danmaku/renderer/android/b$b;->e:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v0, v3}, Lmaster/flame/danmaku/danmaku/model/android/e;->g(Lmaster/flame/danmaku/danmaku/model/d;)Z

    .line 26
    iget-object v0, v7, Lmaster/flame/danmaku/danmaku/renderer/android/b$b;->e:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v0, v8}, Lmaster/flame/danmaku/danmaku/model/android/e;->i(Lmaster/flame/danmaku/danmaku/model/d;)Z

    :cond_b
    return-void
.end method

.method protected b(ZLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/n;FLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)Z
    .locals 0

    invoke-interface {p3}, Lmaster/flame/danmaku/danmaku/model/n;->r()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p4, p1

    if-ltz p1, :cond_1

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lmaster/flame/danmaku/danmaku/model/d;->d()F

    move-result p1

    invoke-interface {p3}, Lmaster/flame/danmaku/danmaku/model/n;->getHeight()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c;->b:Z

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b;->e:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/e;->clear()V

    return-void
.end method
