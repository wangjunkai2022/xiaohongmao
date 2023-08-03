.class Lcom/tangxiaolv/telegramgallery/Actionbar/d$d;
.super Ljava/lang/Object;
.source "ActionBarMenuItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$d;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$d;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Components/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$d;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Components/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$d;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$d;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d(Lcom/tangxiaolv/telegramgallery/Actionbar/d;Z)Z

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$d;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Components/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$d;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->e(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Components/a;->f(Z)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$d;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->f(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$d;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->f(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->l(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$d;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->g(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Actionbar/d$j;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$d;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->g(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Actionbar/d$j;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d$j;->a(I)V

    :cond_3
    :goto_0
    return-void
.end method
