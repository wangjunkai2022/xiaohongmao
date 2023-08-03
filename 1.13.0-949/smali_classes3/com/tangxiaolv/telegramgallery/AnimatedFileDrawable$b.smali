.class Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;
.super Ljava/lang/Object;
.source "AnimatedFileDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->o(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->p(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->p(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)I

    move-result v0

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->r(I)V

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->q(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;I)I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->p(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->s(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->s(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0, v2}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->t(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_1
    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0, v2}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->u(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 9
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->s(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->v(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 10
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->x(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Landroid/graphics/BitmapShader;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->w(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;

    .line 11
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->c(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)[I

    move-result-object v0

    const/4 v2, 0x2

    aget v0, v0, v2

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->d(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 12
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->e(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;I)I

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->c(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)[I

    move-result-object v0

    aget v0, v0, v2

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->d(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->c(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)[I

    move-result-object v1

    aget v1, v1, v2

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->d(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->f(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;I)I

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->c(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)[I

    move-result-object v1

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->e(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;I)I

    .line 16
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->a(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->a(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->b(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 19
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->b(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_6
    :goto_0
    return-void
.end method
