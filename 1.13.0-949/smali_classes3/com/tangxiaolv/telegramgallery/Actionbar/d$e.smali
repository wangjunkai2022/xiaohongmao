.class Lcom/tangxiaolv/telegramgallery/Actionbar/d$e;
.super Ljava/lang/Object;
.source "ActionBarMenuItem.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Actionbar/d;->u()V
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

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$e;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$e;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Components/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$e;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Components/a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$e;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Components/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Components/a;->dismiss()V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
