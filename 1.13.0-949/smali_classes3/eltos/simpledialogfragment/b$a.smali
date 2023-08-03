.class Leltos/simpledialogfragment/b$a;
.super Ljava/lang/Object;
.source "CustomViewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/b;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/b;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/b;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/b$a;->a:Leltos/simpledialogfragment/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-object p1, p0, Leltos/simpledialogfragment/b$a;->a:Leltos/simpledialogfragment/b;

    invoke-virtual {p1}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CustomViewDialog.pos_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Leltos/simpledialogfragment/b;->V0(Z)V

    .line 2
    iget-object p1, p0, Leltos/simpledialogfragment/b$a;->a:Leltos/simpledialogfragment/b;

    invoke-virtual {p1}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CustomViewDialog.neg_enabled"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Leltos/simpledialogfragment/b;->T0(Z)V

    .line 3
    iget-object p1, p0, Leltos/simpledialogfragment/b$a;->a:Leltos/simpledialogfragment/b;

    invoke-virtual {p1}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CustomViewDialog.neu_enabled"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Leltos/simpledialogfragment/b;->U0(Z)V

    .line 4
    iget-object p1, p0, Leltos/simpledialogfragment/b$a;->a:Leltos/simpledialogfragment/b;

    invoke-virtual {p1}, Leltos/simpledialogfragment/f;->e0()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Leltos/simpledialogfragment/b$a$a;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/b$a$a;-><init>(Leltos/simpledialogfragment/b$a;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :cond_0
    iget-object p1, p0, Leltos/simpledialogfragment/b$a;->a:Leltos/simpledialogfragment/b;

    invoke-virtual {p1}, Leltos/simpledialogfragment/f;->d0()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    new-instance v0, Leltos/simpledialogfragment/b$a$b;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/b$a$b;-><init>(Leltos/simpledialogfragment/b$a;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_1
    iget-object p1, p0, Leltos/simpledialogfragment/b$a;->a:Leltos/simpledialogfragment/b;

    invoke-virtual {p1}, Leltos/simpledialogfragment/f;->c0()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    new-instance v0, Leltos/simpledialogfragment/b$a$c;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/b$a$c;-><init>(Leltos/simpledialogfragment/b$a;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_2
    iget-object p1, p0, Leltos/simpledialogfragment/b$a;->a:Leltos/simpledialogfragment/b;

    invoke-virtual {p1}, Leltos/simpledialogfragment/b;->N0()V

    return-void
.end method
