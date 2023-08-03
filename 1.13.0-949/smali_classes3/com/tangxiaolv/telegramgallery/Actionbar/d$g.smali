.class Lcom/tangxiaolv/telegramgallery/Actionbar/d$g;
.super Ljava/lang/Object;
.source "ActionBarMenuItem.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Actionbar/d;->r(Z)Lcom/tangxiaolv/telegramgallery/Actionbar/d;
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

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$g;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p3, :cond_2

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x54

    if-eq p1, p2, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_2

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$g;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->h(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->t(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$g;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->i(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Actionbar/d$k;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$g;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->i(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Actionbar/d$k;

    move-result-object p1

    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$g;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {p2}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->h(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/Actionbar/d$k;->d(Landroid/widget/EditText;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
