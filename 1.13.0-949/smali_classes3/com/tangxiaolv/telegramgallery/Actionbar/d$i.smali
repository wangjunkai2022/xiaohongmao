.class Lcom/tangxiaolv/telegramgallery/Actionbar/d$i;
.super Ljava/lang/Object;
.source "ActionBarMenuItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$i;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$i;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->h(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$i;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->h(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$i;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->h(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->I(Landroid/view/View;)V

    return-void
.end method
