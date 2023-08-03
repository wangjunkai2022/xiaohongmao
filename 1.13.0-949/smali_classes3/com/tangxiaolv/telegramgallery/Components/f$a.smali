.class Lcom/tangxiaolv/telegramgallery/Components/f$a;
.super Lcom/tangxiaolv/telegramgallery/a;
.source "PhotoPickerPhotoCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Components/f;->d(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/tangxiaolv/telegramgallery/Components/f;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Components/f;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/f$a;->b:Lcom/tangxiaolv/telegramgallery/Components/f;

    iput-boolean p2, p0, Lcom/tangxiaolv/telegramgallery/Components/f$a;->a:Z

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/f$a;->b:Lcom/tangxiaolv/telegramgallery/Components/f;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Components/f;->a(Lcom/tangxiaolv/telegramgallery/Components/f;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/f$a;->b:Lcom/tangxiaolv/telegramgallery/Components/f;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Components/f;->a(Lcom/tangxiaolv/telegramgallery/Components/f;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/f$a;->b:Lcom/tangxiaolv/telegramgallery/Components/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tangxiaolv/telegramgallery/Components/f;->b(Lcom/tangxiaolv/telegramgallery/Components/f;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/f$a;->b:Lcom/tangxiaolv/telegramgallery/Components/f;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Components/f;->a(Lcom/tangxiaolv/telegramgallery/Components/f;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/f$a;->b:Lcom/tangxiaolv/telegramgallery/Components/f;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Components/f;->a(Lcom/tangxiaolv/telegramgallery/Components/f;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/f$a;->b:Lcom/tangxiaolv/telegramgallery/Components/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tangxiaolv/telegramgallery/Components/f;->b(Lcom/tangxiaolv/telegramgallery/Components/f;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 3
    iget-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Components/f$a;->a:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/f$a;->b:Lcom/tangxiaolv/telegramgallery/Components/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
