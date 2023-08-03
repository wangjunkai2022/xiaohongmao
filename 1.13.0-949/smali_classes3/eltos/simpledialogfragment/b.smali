.class public abstract Leltos/simpledialogfragment/b;
.super Leltos/simpledialogfragment/f;
.source "CustomViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<This:",
        "Leltos/simpledialogfragment/b<",
        "TThis;>;>",
        "Leltos/simpledialogfragment/f<",
        "TThis;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CustomViewDialog."

.field private static final o:Ljava/lang/String; = "CustomViewDialog.pos_enabled"

.field private static final p:Ljava/lang/String; = "CustomViewDialog.neg_enabled"

.field private static final q:Ljava/lang/String; = "CustomViewDialog.neu_enabled"


# instance fields
.field private n:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Leltos/simpledialogfragment/f;-><init>()V

    return-void
.end method

.method public static I0()Leltos/simpledialogfragment/b;
    .locals 2

    new-instance v0, Ljava/lang/InstantiationError;

    const-string v1, "Unintended abuse of the builder method. Have you created your own build() method in your custom dialog?"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected H0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final J0(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Leltos/simpledialogfragment/f;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/b;->n:Landroid/view/LayoutInflater;

    .line 3
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/b;->M0(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected final K0(I)Landroid/view/View;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Leltos/simpledialogfragment/b;->L0(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected final L0(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    iget-object v0, p0, Leltos/simpledialogfragment/b;->n:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected abstract M0(Landroid/os/Bundle;)Landroid/view/View;
.end method

.method protected N0()V
    .locals 0

    return-void
.end method

.method protected O0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, -0x2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Leltos/simpledialogfragment/b;->V(ILandroid/os/Bundle;)Z

    return-void
.end method

.method protected P0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, -0x3

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Leltos/simpledialogfragment/b;->V(ILandroid/os/Bundle;)Z

    return-void
.end method

.method protected Q0()V
    .locals 0

    invoke-virtual {p0}, Leltos/simpledialogfragment/b;->S0()V

    return-void
.end method

.method protected R0(I)Landroid/os/Bundle;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final S0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/b;->H0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Leltos/simpledialogfragment/b;->V(ILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method public final T0(Z)V
    .locals 1

    const-string v0, "CustomViewDialog.neg_enabled"

    .line 1
    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;

    .line 2
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->c0()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->c0()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final U0(Z)V
    .locals 1

    const-string v0, "CustomViewDialog.neu_enabled"

    .line 1
    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;

    .line 2
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->d0()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->d0()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected V(ILandroid/os/Bundle;)Z
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/b;->R0(I)Landroid/os/Bundle;

    move-result-object v0

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4
    :cond_1
    invoke-super {p0, p1, p2}, Leltos/simpledialogfragment/f;->V(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final V0(Z)V
    .locals 1

    const-string v0, "CustomViewDialog.pos_enabled"

    .line 1
    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;

    .line 2
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->e0()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->e0()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Leltos/simpledialogfragment/f;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Leltos/simpledialogfragment/f;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Leltos/simpledialogfragment/b;->n:Landroid/view/LayoutInflater;

    .line 3
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/b;->M0(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 4
    sget v1, Leltos/simpledialogfragment/c$l;->K0:I

    invoke-virtual {p0, v1}, Leltos/simpledialogfragment/b;->K0(I)Landroid/view/View;

    move-result-object v1

    .line 5
    sget v2, Leltos/simpledialogfragment/c$i;->b1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6
    sget v3, Leltos/simpledialogfragment/c$i;->d5:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 7
    sget v4, Leltos/simpledialogfragment/c$i;->d1:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 10
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->b0()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v4, 0x8

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "SimpleDialog.html"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 12
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_0

    .line 13
    invoke-static {p1, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v5

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, p1

    .line 15
    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->f0()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    new-instance p1, Leltos/simpledialogfragment/b$a;

    invoke-direct {p1, p0}, Leltos/simpledialogfragment/b$a;-><init>(Leltos/simpledialogfragment/b;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v0
.end method
