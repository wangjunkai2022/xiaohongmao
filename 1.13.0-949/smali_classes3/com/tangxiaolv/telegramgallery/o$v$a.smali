.class Lcom/tangxiaolv/telegramgallery/o$v$a;
.super Lcom/tangxiaolv/telegramgallery/a;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/o$v;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/o$v;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/o$v;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$v$a;->a:Lcom/tangxiaolv/telegramgallery/o$v;

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$v$a;->a:Lcom/tangxiaolv/telegramgallery/o$v;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/o$v;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->i(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/h;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$v$a;->a:Lcom/tangxiaolv/telegramgallery/o$v;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/o$v;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->F(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$v$a;->a:Lcom/tangxiaolv/telegramgallery/o$v;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/o$v;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->G(Lcom/tangxiaolv/telegramgallery/o;)I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$v$a;->a:Lcom/tangxiaolv/telegramgallery/o$v;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/o$v;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->g(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/Components/b;->setVisibility(I)V

    :cond_0
    return-void
.end method
