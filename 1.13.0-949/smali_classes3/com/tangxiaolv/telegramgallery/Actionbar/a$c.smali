.class Lcom/tangxiaolv/telegramgallery/Actionbar/a$c;
.super Lcom/tangxiaolv/telegramgallery/a;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Actionbar/a;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e(Lcom/tangxiaolv/telegramgallery/Actionbar/a;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e(Lcom/tangxiaolv/telegramgallery/Actionbar/a;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->f(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    move-result-object p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->f(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->g(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->g(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->h(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->h(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->a(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->b(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->c(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->c(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
