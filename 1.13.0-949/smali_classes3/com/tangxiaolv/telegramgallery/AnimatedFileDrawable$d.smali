.class Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$d;
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

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$d;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$d;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->a(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$d;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->a(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$d;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->b(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$d;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->b(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method
