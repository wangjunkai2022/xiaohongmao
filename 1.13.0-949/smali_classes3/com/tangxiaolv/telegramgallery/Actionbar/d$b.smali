.class Lcom/tangxiaolv/telegramgallery/Actionbar/d$b;
.super Ljava/lang/Object;
.source "ActionBarMenuItem.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Actionbar/d;->k(ILjava/lang/String;I)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$b;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$b;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Components/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$b;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Components/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$b;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->b(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$b;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->b(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$b;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Components/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Components/a;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
