.class Lcom/tangxiaolv/telegramgallery/o$a$a;
.super Lcom/tangxiaolv/telegramgallery/a;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/o$a;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/o$a;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/o$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a$a;->a:Lcom/tangxiaolv/telegramgallery/o$a;

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a$a;->a:Lcom/tangxiaolv/telegramgallery/o$a;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tangxiaolv/telegramgallery/o;->s(Lcom/tangxiaolv/telegramgallery/o;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a$a;->a:Lcom/tangxiaolv/telegramgallery/o$a;

    iget-object v0, p1, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    iget p1, p1, Lcom/tangxiaolv/telegramgallery/o$a;->a:I

    invoke-static {v0, p1}, Lcom/tangxiaolv/telegramgallery/o;->n(Lcom/tangxiaolv/telegramgallery/o;I)I

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a$a;->a:Lcom/tangxiaolv/telegramgallery/o$a;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/tangxiaolv/telegramgallery/o;->y(Lcom/tangxiaolv/telegramgallery/o;F)F

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a$a;->a:Lcom/tangxiaolv/telegramgallery/o$a;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/tangxiaolv/telegramgallery/o;->z(Lcom/tangxiaolv/telegramgallery/o;F)F

    .line 5
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a$a;->a:Lcom/tangxiaolv/telegramgallery/o$a;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1, v1}, Lcom/tangxiaolv/telegramgallery/o;->A(Lcom/tangxiaolv/telegramgallery/o;F)F

    .line 6
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a$a;->a:Lcom/tangxiaolv/telegramgallery/o$a;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1, v0}, Lcom/tangxiaolv/telegramgallery/o;->D(Lcom/tangxiaolv/telegramgallery/o;F)F

    .line 7
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a$a;->a:Lcom/tangxiaolv/telegramgallery/o$a;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->C(Lcom/tangxiaolv/telegramgallery/o;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/tangxiaolv/telegramgallery/o;->E(Lcom/tangxiaolv/telegramgallery/o;F)V

    .line 8
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a$a;->a:Lcom/tangxiaolv/telegramgallery/o$a;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->v(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$z;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a$a;->a:Lcom/tangxiaolv/telegramgallery/o$a;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->x(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/h;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a$a;->a:Lcom/tangxiaolv/telegramgallery/o$a;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->o(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
