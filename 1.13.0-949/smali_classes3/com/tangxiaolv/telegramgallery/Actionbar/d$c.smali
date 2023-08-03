.class Lcom/tangxiaolv/telegramgallery/Actionbar/d$c;
.super Ljava/lang/Object;
.source "ActionBarMenuItem.java"

# interfaces
.implements Lcom/tangxiaolv/telegramgallery/Components/a$e;


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

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Components/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Components/a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Components/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Components/a;->dismiss()V

    :cond_0
    return-void
.end method
