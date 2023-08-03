.class Lcom/tangxiaolv/telegramgallery/o$c;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/o;->S0(Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/util/List;ILcom/tangxiaolv/telegramgallery/o$b0;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/tangxiaolv/telegramgallery/o;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/o;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$c;->b:Lcom/tangxiaolv/telegramgallery/o;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/o$c;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$c;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->v(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$z;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$c;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->U(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$a0;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$c;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->v(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$z;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$c;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0, v2}, Lcom/tangxiaolv/telegramgallery/o;->V(Lcom/tangxiaolv/telegramgallery/o;I)I

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$c;->b:Lcom/tangxiaolv/telegramgallery/o;

    const-wide/16 v3, 0x0

    invoke-static {v0, v3, v4}, Lcom/tangxiaolv/telegramgallery/o;->W(Lcom/tangxiaolv/telegramgallery/o;J)J

    .line 5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$c;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->X(Lcom/tangxiaolv/telegramgallery/o;)V

    .line 6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$c;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->v(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$z;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$c;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->Z(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/c;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$c;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->a0(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$c0;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$c;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->a0(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$c0;

    move-result-object v0

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v0, v1, v1}, Lcom/tangxiaolv/telegramgallery/k;->q0(ZZ)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$c;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->b0(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$c0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$c;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->b0(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$c0;

    move-result-object v0

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v0, v2, v1}, Lcom/tangxiaolv/telegramgallery/k;->q0(ZZ)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$c;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$c;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->c0(Lcom/tangxiaolv/telegramgallery/o;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 14
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$c;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->c0(Lcom/tangxiaolv/telegramgallery/o;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v2, 0x20

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 15
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$c;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->l0(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    move-result-object v0

    const-string v2, "window"

    .line 16
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 17
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o$c;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/o;->U(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$a0;

    move-result-object v2

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/o$c;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/o;->c0(Lcom/tangxiaolv/telegramgallery/o;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$c;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->U(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$a0;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 19
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$c;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->v(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$z;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    :cond_3
    :goto_0
    return-void
.end method
