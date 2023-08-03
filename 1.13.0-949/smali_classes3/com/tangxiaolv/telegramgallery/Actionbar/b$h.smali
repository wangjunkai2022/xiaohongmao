.class Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;
.super Ljava/lang/Object;
.source "ActionBarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Actionbar/b;->f0(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    iput-boolean p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;->a:Z

    iput-boolean p3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->s(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->t(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;->a:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->u(Lcom/tangxiaolv/telegramgallery/Actionbar/b;J)J

    .line 5
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 6
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->v(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    move-wide v2, v4

    .line 7
    :cond_2
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v4, v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->w(Lcom/tangxiaolv/telegramgallery/Actionbar/b;J)J

    .line 8
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    long-to-float v1, v2

    const/high16 v2, 0x43160000    # 150.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->z(Lcom/tangxiaolv/telegramgallery/Actionbar/b;F)F

    .line 9
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->x(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->y(Lcom/tangxiaolv/telegramgallery/Actionbar/b;F)F

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->A(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Landroid/view/animation/DecelerateInterpolator;

    move-result-object v0

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->x(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 12
    iget-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;->b:Z

    const/high16 v3, 0x42400000    # 48.0f

    if-eqz v2, :cond_4

    .line 13
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->p(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 14
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->p(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    move-result-object v2

    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v0, v1, v0

    mul-float v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    goto :goto_0

    .line 15
    :cond_4
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->q(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    move-result-object v2

    sub-float v4, v1, v0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 16
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->q(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    move-result-object v2

    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->x(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 18
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    iget-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;->b:Z

    invoke-static {v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c(Lcom/tangxiaolv/telegramgallery/Actionbar/b;ZZ)V

    goto :goto_1

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v0, v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->e(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Z)V

    :goto_1
    return-void
.end method
