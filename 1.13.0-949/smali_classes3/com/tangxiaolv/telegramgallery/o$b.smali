.class Lcom/tangxiaolv/telegramgallery/o$b;
.super Lcom/tangxiaolv/telegramgallery/a;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/o;->c1(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/o;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/o;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$b;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$b;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->Q(Lcom/tangxiaolv/telegramgallery/o;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$b;->a:Lcom/tangxiaolv/telegramgallery/o;

    .line 2
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->Q(Lcom/tangxiaolv/telegramgallery/o;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$b;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->F(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$b;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->S(Lcom/tangxiaolv/telegramgallery/o;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$b;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->T(Lcom/tangxiaolv/telegramgallery/o;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$b;->a:Lcom/tangxiaolv/telegramgallery/o;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tangxiaolv/telegramgallery/o;->R(Lcom/tangxiaolv/telegramgallery/o;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_1
    return-void
.end method
