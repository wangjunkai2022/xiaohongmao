.class Lcom/tangxiaolv/telegramgallery/Components/a$c;
.super Ljava/lang/Object;
.source "ActionBarPopupWindow.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Components/a;->f(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/Components/a;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Components/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/a$c;->a:Lcom/tangxiaolv/telegramgallery/Components/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/Components/a$c;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/a$c;->a:Lcom/tangxiaolv/telegramgallery/Components/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tangxiaolv/telegramgallery/Components/a;->c(Lcom/tangxiaolv/telegramgallery/Components/a;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/a$c;->a:Lcom/tangxiaolv/telegramgallery/Components/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/a$c;->a:Lcom/tangxiaolv/telegramgallery/Components/a;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Components/a;->d(Lcom/tangxiaolv/telegramgallery/Components/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/a$c;->a:Lcom/tangxiaolv/telegramgallery/Components/a;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Components/a;->e(Lcom/tangxiaolv/telegramgallery/Components/a;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
