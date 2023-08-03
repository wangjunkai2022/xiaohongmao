.class Lcom/tangxiaolv/telegramgallery/Actionbar/d$h;
.super Ljava/lang/Object;
.source "ActionBarMenuItem.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$h;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$h;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {p2}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->i(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Actionbar/d$k;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$h;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {p2}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->i(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Actionbar/d$k;

    move-result-object p2

    iget-object p3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$h;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {p3}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->h(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/tangxiaolv/telegramgallery/Actionbar/d$k;->e(Landroid/widget/EditText;)V

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$h;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {p2}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->j(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 4
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$h;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-static {p2}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->j(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    :goto_0
    const p1, 0x3f19999a    # 0.6f

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_3
    return-void
.end method
