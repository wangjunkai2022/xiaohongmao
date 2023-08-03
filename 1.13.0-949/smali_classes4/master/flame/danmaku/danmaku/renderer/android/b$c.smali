.class Lmaster/flame/danmaku/danmaku/renderer/android/b$c;
.super Ljava/lang/Object;
.source "DanmakusRetainer.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/renderer/android/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/renderer/android/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;
    }
.end annotation


# instance fields
.field protected a:Lmaster/flame/danmaku/danmaku/model/android/e;

.field protected b:Z

.field protected c:Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c;->a:Lmaster/flame/danmaku/danmaku/model/android/e;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c;->b:Z

    .line 4
    new-instance v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;-><init>(Lmaster/flame/danmaku/danmaku/renderer/android/b$c;)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c;->c:Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;

    return-void
.end method

.method synthetic constructor <init>(Lmaster/flame/danmaku/danmaku/renderer/android/b$a;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/renderer/android/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/n;Lmaster/flame/danmaku/danmaku/renderer/android/b$g;)V
    .locals 19

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
    invoke-interface/range {p2 .. p2}, Lmaster/flame/danmaku/danmaku/model/n;->r()I

    move-result v0

    int-to-float v0, v0

    .line 3
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/d;->x()Z

    move-result v1

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v1, :cond_1

    .line 4
    iget-object v2, v7, Lmaster/flame/danmaku/danmaku/renderer/android/b$c;->a:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/android/e;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-interface/range {p2 .. p2}, Lmaster/flame/danmaku/danmaku/model/n;->o()I

    move-result v3

    const/4 v4, 0x0

    if-nez v1, :cond_d

    .line 6
    iput-boolean v12, v7, Lmaster/flame/danmaku/danmaku/renderer/android/b$c;->b:Z

    .line 7
    iget-object v0, v7, Lmaster/flame/danmaku/danmaku/renderer/android/b$c;->c:Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;

    iput-object v9, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->e:Lmaster/flame/danmaku/danmaku/model/n;

    .line 8
    iput-object v8, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->k:Lmaster/flame/danmaku/danmaku/model/d;

    .line 9
    iget-object v5, v7, Lmaster/flame/danmaku/danmaku/renderer/android/b$c;->a:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v5, v0}, Lmaster/flame/danmaku/danmaku/model/android/e;->a(Lmaster/flame/danmaku/danmaku/model/m$b;)V

    .line 10
    iget-object v0, v7, Lmaster/flame/danmaku/danmaku/renderer/android/b$c;->c:Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->f()Lmaster/flame/danmaku/danmaku/renderer/android/b$f;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    iget v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->a:I

    .line 12
    iget-object v2, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->b:Lmaster/flame/danmaku/danmaku/model/d;

    .line 13
    iget-object v5, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->c:Lmaster/flame/danmaku/danmaku/model/d;

    .line 14
    iget-object v6, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->d:Lmaster/flame/danmaku/danmaku/model/d;

    .line 15
    iget-object v13, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->e:Lmaster/flame/danmaku/danmaku/model/d;

    .line 16
    iget-boolean v14, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->g:Z

    .line 17
    iget-boolean v15, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->h:Z

    .line 18
    iget-boolean v0, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->i:Z

    move-object/from16 v18, v13

    move v13, v1

    move v1, v14

    move-object/from16 v14, v18

    goto :goto_1

    :cond_2
    move v15, v1

    move v0, v2

    move-object v2, v4

    move-object v5, v2

    move-object v6, v5

    move-object v14, v6

    const/4 v1, 0x0

    const/4 v13, 0x0

    :goto_1
    if-eqz v2, :cond_5

    if-eqz v6, :cond_3

    .line 19
    invoke-virtual {v6}, Lmaster/flame/danmaku/danmaku/model/d;->d()F

    move-result v14

    int-to-float v3, v3

    add-float/2addr v14, v3

    goto :goto_2

    .line 20
    :cond_3
    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/d;->m()F

    move-result v14

    :goto_2
    if-eq v2, v8, :cond_4

    move-object/from16 v16, v2

    goto :goto_5

    :cond_4
    :goto_3
    move-object/from16 v16, v4

    move/from16 v17, v14

    :goto_4
    move v14, v0

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v14, :cond_6

    .line 21
    invoke-virtual {v14}, Lmaster/flame/danmaku/danmaku/model/d;->m()F

    move-result v14

    move-object/from16 v16, v4

    move/from16 v17, v14

    const/4 v15, 0x0

    move v14, v0

    const/4 v0, 0x0

    goto :goto_6

    :cond_6
    if-eqz v6, :cond_7

    .line 22
    invoke-virtual {v6}, Lmaster/flame/danmaku/danmaku/model/d;->d()F

    move-result v0

    int-to-float v2, v3

    add-float v14, v0, v2

    move-object/from16 v16, v4

    move/from16 v17, v14

    const/4 v0, 0x1

    const/4 v14, 0x0

    goto :goto_6

    :cond_7
    if-eqz v5, :cond_8

    .line 23
    invoke-virtual {v5}, Lmaster/flame/danmaku/danmaku/model/d;->m()F

    move-result v14

    move-object/from16 v16, v5

    :goto_5
    move/from16 v17, v14

    const/4 v15, 0x0

    goto :goto_4

    .line 24
    :cond_8
    invoke-interface/range {p2 .. p2}, Lmaster/flame/danmaku/danmaku/model/n;->r()I

    move-result v2

    int-to-float v14, v2

    goto :goto_3

    :goto_6
    if-eqz v0, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, v17

    .line 25
    invoke-virtual/range {v0 .. v6}, Lmaster/flame/danmaku/danmaku/renderer/android/b$c;->b(ZLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/n;FLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)Z

    move-result v0

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_a

    .line 26
    invoke-interface/range {p2 .. p2}, Lmaster/flame/danmaku/danmaku/model/n;->r()I

    move-result v1

    int-to-float v1, v1

    move/from16 v17, v1

    const/4 v14, 0x1

    goto :goto_8

    :cond_a
    if-eqz v16, :cond_b

    add-int/lit8 v11, v13, -0x1

    goto :goto_8

    :cond_b
    move v11, v13

    .line 27
    :goto_8
    invoke-interface/range {p2 .. p2}, Lmaster/flame/danmaku/danmaku/model/n;->r()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v17, v1

    move v3, v0

    move v12, v11

    move v2, v14

    if-nez v1, :cond_c

    move-object/from16 v4, v16

    move/from16 v0, v17

    const/4 v1, 0x0

    goto :goto_9

    :cond_c
    move v1, v15

    move-object/from16 v4, v16

    move/from16 v0, v17

    goto :goto_9

    :cond_d
    const/4 v3, 0x0

    :goto_9
    if-eqz v10, :cond_e

    .line 28
    invoke-interface {v10, v8, v0, v12, v2}, Lmaster/flame/danmaku/danmaku/renderer/android/b$g;->a(Lmaster/flame/danmaku/danmaku/model/d;FIZ)Z

    move-result v2

    if-eqz v2, :cond_e

    return-void

    :cond_e
    if-eqz v3, :cond_f

    .line 29
    invoke-virtual/range {p0 .. p0}, Lmaster/flame/danmaku/danmaku/renderer/android/b$c;->clear()V

    .line 30
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/d;->g()F

    move-result v2

    invoke-virtual {v8, v9, v2, v0}, Lmaster/flame/danmaku/danmaku/model/d;->A(Lmaster/flame/danmaku/danmaku/model/n;FF)V

    if-nez v1, :cond_10

    .line 31
    iget-object v0, v7, Lmaster/flame/danmaku/danmaku/renderer/android/b$c;->a:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v0, v4}, Lmaster/flame/danmaku/danmaku/model/android/e;->g(Lmaster/flame/danmaku/danmaku/model/d;)Z

    .line 32
    iget-object v0, v7, Lmaster/flame/danmaku/danmaku/renderer/android/b$c;->a:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v0, v8}, Lmaster/flame/danmaku/danmaku/model/android/e;->i(Lmaster/flame/danmaku/danmaku/model/d;)Z

    :cond_10
    return-void
.end method

.method protected b(ZLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/n;FLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)Z
    .locals 0

    invoke-interface {p3}, Lmaster/flame/danmaku/danmaku/model/n;->r()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p4, p1

    if-ltz p1, :cond_2

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lmaster/flame/danmaku/danmaku/model/d;->m()F

    move-result p1

    const/4 p5, 0x0

    cmpl-float p1, p1, p5

    if-gtz p1, :cond_2

    :cond_0
    iget p1, p2, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    add-float/2addr p4, p1

    invoke-interface {p3}, Lmaster/flame/danmaku/danmaku/model/n;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p4, p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
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
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c;->a:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/e;->clear()V

    return-void
.end method
