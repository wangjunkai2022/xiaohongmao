.class public Lmaster/flame/danmaku/ui/widget/b;
.super Lmaster/flame/danmaku/ui/widget/DanmakuView;
.source "FakeDanmakuView.java"

# interfaces
.implements Lmaster/flame/danmaku/controller/c$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/ui/widget/b$c;,
        Lmaster/flame/danmaku/ui/widget/b$b;
    }
.end annotation


# instance fields
.field private A:Lmaster/flame/danmaku/ui/widget/b$c;

.field private B:I

.field private C:I

.field private D:F

.field private E:Lmaster/flame/danmaku/danmaku/model/f;

.field private F:J

.field private G:J

.field private H:J

.field private I:Landroid/graphics/Bitmap;

.field private J:Landroid/graphics/Canvas;

.field private K:I

.field private L:J

.field private y:Lmaster/flame/danmaku/danmaku/model/f;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/b;->B:I

    .line 3
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/b;->C:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lmaster/flame/danmaku/ui/widget/b;->D:F

    const-wide/16 v0, 0x10

    .line 5
    iput-wide v0, p0, Lmaster/flame/danmaku/ui/widget/b;->G:J

    .line 6
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/b;->K:I

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lmaster/flame/danmaku/ui/widget/b;->L:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIF)V
    .locals 2

    .line 8
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x10

    .line 9
    iput-wide v0, p0, Lmaster/flame/danmaku/ui/widget/b;->G:J

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/b;->K:I

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lmaster/flame/danmaku/ui/widget/b;->L:J

    .line 12
    iput p2, p0, Lmaster/flame/danmaku/ui/widget/b;->B:I

    .line 13
    iput p3, p0, Lmaster/flame/danmaku/ui/widget/b;->C:I

    .line 14
    iput p4, p0, Lmaster/flame/danmaku/ui/widget/b;->D:F

    .line 15
    invoke-virtual {p0, p2, p3}, Lmaster/flame/danmaku/ui/widget/b;->M(II)V

    return-void
.end method


# virtual methods
.method public L(I)V
    .locals 8

    .line 1
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/b;->K:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmaster/flame/danmaku/ui/widget/b;->K:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/b;->release()V

    .line 3
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/b;->A:Lmaster/flame/danmaku/ui/widget/b$c;

    if-eqz p1, :cond_0

    const/16 v0, 0x64

    const-string v1, "not prepared"

    .line 4
    invoke-interface {p1, v0, v1}, Lmaster/flame/danmaku/ui/widget/b$c;->c(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-nez v0, :cond_2

    return-void

    .line 7
    :cond_2
    new-instance v1, Lmaster/flame/danmaku/ui/widget/b$a;

    invoke-direct {v1, p0, p1}, Lmaster/flame/danmaku/ui/widget/b$a;-><init>(Lmaster/flame/danmaku/ui/widget/b;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    const/16 v0, 0x3e8

    .line 8
    div-int/2addr v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lmaster/flame/danmaku/ui/widget/b;->G:J

    .line 9
    invoke-virtual {p0, p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->setCallback(Lmaster/flame/danmaku/controller/c$d;)V

    const-wide/16 v0, 0x0

    .line 10
    iget-wide v2, p0, Lmaster/flame/danmaku/ui/widget/b;->L:J

    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->getConfig()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object p1

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v4, p1, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    const-wide/16 v6, 0x3

    mul-long v4, v4, v6

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 11
    new-instance p1, Lmaster/flame/danmaku/danmaku/model/f;

    invoke-direct {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/f;-><init>(J)V

    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/b;->E:Lmaster/flame/danmaku/danmaku/model/f;

    .line 12
    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->h(J)V

    return-void
.end method

.method public M(II)V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/b;->I:Landroid/graphics/Bitmap;

    .line 2
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lmaster/flame/danmaku/ui/widget/b;->I:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/b;->J:Landroid/graphics/Canvas;

    return-void
.end method

.method public N(JJ)V
    .locals 2

    .line 1
    iput-wide p1, p0, Lmaster/flame/danmaku/ui/widget/b;->L:J

    const-wide/16 v0, 0x7530

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lmaster/flame/danmaku/ui/widget/b;->F:J

    .line 3
    iput-wide p3, p0, Lmaster/flame/danmaku/ui/widget/b;->H:J

    return-void
.end method

.method public a()J
    .locals 10

    .line 1
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/b;->z:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/b;->J:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    return-wide v1

    .line 3
    :cond_1
    iget-object v3, p0, Lmaster/flame/danmaku/ui/widget/b;->I:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_b

    .line 4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 6
    iget-boolean v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->s:Z

    if-eqz v2, :cond_3

    .line 7
    invoke-static {v0}, Lmaster/flame/danmaku/controller/d;->a(Landroid/graphics/Canvas;)V

    .line 8
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->s:Z

    goto :goto_0

    .line 9
    :cond_3
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-eqz v2, :cond_4

    .line 10
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {v2, v0}, Lmaster/flame/danmaku/controller/c;->y(Landroid/graphics/Canvas;)Lf8/a$c;

    .line 11
    :cond_4
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/b;->A:Lmaster/flame/danmaku/ui/widget/b$c;

    if-eqz v0, :cond_a

    .line 12
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/b;->E:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v4, v2, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    .line 13
    :try_start_0
    iget-wide v6, p0, Lmaster/flame/danmaku/ui/widget/b;->L:J

    iget-wide v8, p0, Lmaster/flame/danmaku/ui/widget/b;->G:J

    sub-long/2addr v6, v8

    cmp-long v2, v4, v6

    if-ltz v2, :cond_6

    .line 14
    iget v2, p0, Lmaster/flame/danmaku/ui/widget/b;->D:F

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    cmpl-float v6, v2, v6

    if-nez v6, :cond_5

    const/4 v7, 0x0

    goto :goto_1

    .line 15
    :cond_5
    iget v6, p0, Lmaster/flame/danmaku/ui/widget/b;->B:I

    int-to-float v6, v6

    mul-float v6, v6, v2

    float-to-int v6, v6

    iget v8, p0, Lmaster/flame/danmaku/ui/widget/b;->C:I

    int-to-float v8, v8

    mul-float v8, v8, v2

    float-to-int v2, v8

    invoke-static {v3, v6, v2, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 16
    :goto_1
    invoke-interface {v0, v4, v5, v3}, Lmaster/flame/danmaku/ui/widget/b$c;->b(JLandroid/graphics/Bitmap;)V

    if-eqz v7, :cond_6

    .line 17
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_6
    iget-wide v2, p0, Lmaster/flame/danmaku/ui/widget/b;->H:J

    cmp-long v6, v4, v2

    if-ltz v6, :cond_a

    .line 19
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/b;->release()V

    .line 20
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/b;->y:Lmaster/flame/danmaku/danmaku/model/f;

    if-eqz v2, :cond_7

    .line 21
    :goto_2
    iget-wide v6, p0, Lmaster/flame/danmaku/ui/widget/b;->H:J

    invoke-virtual {v2, v6, v7}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    .line 22
    :cond_7
    invoke-interface {v0, v4, v5}, Lmaster/flame/danmaku/ui/widget/b$c;->a(J)V

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v2

    .line 23
    :try_start_1
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/b;->release()V

    const/16 v3, 0x65

    .line 24
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lmaster/flame/danmaku/ui/widget/b$c;->c(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    iget-wide v2, p0, Lmaster/flame/danmaku/ui/widget/b;->H:J

    cmp-long v6, v4, v2

    if-ltz v6, :cond_a

    .line 26
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/b;->release()V

    .line 27
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/b;->y:Lmaster/flame/danmaku/danmaku/model/f;

    if-eqz v2, :cond_7

    goto :goto_2

    .line 28
    :goto_3
    iget-wide v2, p0, Lmaster/flame/danmaku/ui/widget/b;->H:J

    cmp-long v6, v4, v2

    if-ltz v6, :cond_9

    .line 29
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/b;->release()V

    .line 30
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/b;->y:Lmaster/flame/danmaku/danmaku/model/f;

    if-eqz v2, :cond_8

    .line 31
    iget-wide v6, p0, Lmaster/flame/danmaku/ui/widget/b;->H:J

    invoke-virtual {v2, v6, v7}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    .line 32
    :cond_8
    invoke-interface {v0, v4, v5}, Lmaster/flame/danmaku/ui/widget/b$c;->a(J)V

    :cond_9
    throw v1

    .line 33
    :cond_a
    :goto_4
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->p:Z

    const-wide/16 v0, 0x2

    return-wide v0

    :cond_b
    :goto_5
    return-wide v1
.end method

.method public getViewHeight()I
    .locals 1

    iget v0, p0, Lmaster/flame/danmaku/ui/widget/b;->C:I

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    iget v0, p0, Lmaster/flame/danmaku/ui/widget/b;->B:I

    return v0
.end method

.method public isShown()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l(Lmaster/flame/danmaku/danmaku/parser/a;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 8

    .line 1
    new-instance v7, Lmaster/flame/danmaku/ui/widget/b$b;

    iget-wide v3, p0, Lmaster/flame/danmaku/ui/widget/b;->F:J

    iget-wide v5, p0, Lmaster/flame/danmaku/ui/widget/b;->H:J

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lmaster/flame/danmaku/ui/widget/b$b;-><init>(Lmaster/flame/danmaku/ui/widget/b;Lmaster/flame/danmaku/danmaku/parser/a;JJ)V

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 3
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 4
    sget v0, Lmaster/flame/danmaku/danmaku/model/c;->a:I

    iput v0, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b:I

    .line 5
    iget v1, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->I(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 6
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    iget-object v1, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/j;->c:I

    iput v1, v0, Lmaster/flame/danmaku/danmaku/model/j;->c:I

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->H(Lmaster/flame/danmaku/danmaku/model/a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 8
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b0()V

    .line 9
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->b()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    .line 11
    iput-byte p1, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->D:B

    .line 12
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/b;->A:Lmaster/flame/danmaku/ui/widget/b$c;

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0, p2}, Lmaster/flame/danmaku/ui/widget/b$c;->d(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 14
    :cond_0
    invoke-super {p0, v7, p2}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->l(Lmaster/flame/danmaku/danmaku/parser/a;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 15
    iget-object p2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lmaster/flame/danmaku/controller/c;->b0(Z)V

    .line 16
    iget-object p2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {p2, p1}, Lmaster/flame/danmaku/controller/c;->z(Z)V

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public q(Lmaster/flame/danmaku/danmaku/model/f;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/b;->y:Lmaster/flame/danmaku/danmaku/model/f;

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/b;->E:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/b;->E:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v1, p0, Lmaster/flame/danmaku/ui/widget/b;->G:J

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    .line 4
    iget-wide v0, p0, Lmaster/flame/danmaku/ui/widget/b;->G:J

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/b;->z:Z

    .line 2
    invoke-super {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/b;->I:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setOnFrameAvailableListener(Lmaster/flame/danmaku/ui/widget/b$c;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/b;->A:Lmaster/flame/danmaku/ui/widget/b$c;

    return-void
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public v()V
    .locals 0

    return-void
.end method

.method public w(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 0

    return-void
.end method
