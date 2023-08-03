.class Lcom/tangxiaolv/telegramgallery/m$a;
.super Lcom/tangxiaolv/telegramgallery/Actionbar/a$e;
.source "PhotoAlbumPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/m;->r(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/m;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/m;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$a;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a$e;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$a;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->t()V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$a;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/m;->b0(Lcom/tangxiaolv/telegramgallery/m;)Lcom/tangxiaolv/telegramgallery/m$h;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$a;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->u(Z)V

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$a;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/m;->b0(Lcom/tangxiaolv/telegramgallery/m;)Lcom/tangxiaolv/telegramgallery/m$h;

    move-result-object p1

    invoke-interface {p1}, Lcom/tangxiaolv/telegramgallery/m$h;->b()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 5
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$a;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/m;->c0(Lcom/tangxiaolv/telegramgallery/m;)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$a;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {p1, v0}, Lcom/tangxiaolv/telegramgallery/m;->e0(Lcom/tangxiaolv/telegramgallery/m;I)I

    .line 7
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$a;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/m;->n0(Lcom/tangxiaolv/telegramgallery/m;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    sget v0, Lcom/tangxiaolv/telegramgallery/q$o;->p:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 8
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$a;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/m;->o0(Lcom/tangxiaolv/telegramgallery/m;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/tangxiaolv/telegramgallery/q$o;->j:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 9
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$a;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/m;->p0(Lcom/tangxiaolv/telegramgallery/m;)Lcom/tangxiaolv/telegramgallery/m$g;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 10
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$a;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/m;->c0(Lcom/tangxiaolv/telegramgallery/m;)I

    move-result p1

    if-ne p1, v1, :cond_4

    return-void

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$a;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {p1, v1}, Lcom/tangxiaolv/telegramgallery/m;->e0(Lcom/tangxiaolv/telegramgallery/m;I)I

    .line 12
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$a;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/m;->n0(Lcom/tangxiaolv/telegramgallery/m;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    sget v0, Lcom/tangxiaolv/telegramgallery/q$o;->q:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 13
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$a;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/m;->o0(Lcom/tangxiaolv/telegramgallery/m;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/tangxiaolv/telegramgallery/q$o;->n:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 14
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$a;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/m;->p0(Lcom/tangxiaolv/telegramgallery/m;)Lcom/tangxiaolv/telegramgallery/m$g;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_5
    :goto_0
    return-void
.end method
