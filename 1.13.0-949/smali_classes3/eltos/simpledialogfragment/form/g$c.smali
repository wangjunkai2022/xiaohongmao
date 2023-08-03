.class public Leltos/simpledialogfragment/form/g$c;
.super Ljava/lang/Object;
.source "SimpleFormDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/form/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/form/g;


# direct methods
.method public constructor <init>(Leltos/simpledialogfragment/form/g;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/form/g$c;->a:Leltos/simpledialogfragment/form/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Leltos/simpledialogfragment/form/g$c;->a:Leltos/simpledialogfragment/form/g;

    iget-object v0, v0, Leltos/simpledialogfragment/form/g;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/form/g$c;->a:Leltos/simpledialogfragment/form/g;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Leltos/simpledialogfragment/form/g$c;->a:Leltos/simpledialogfragment/form/g;

    invoke-virtual {v1}, Leltos/simpledialogfragment/f;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Leltos/simpledialogfragment/form/g$c;->a:Leltos/simpledialogfragment/form/g;

    invoke-virtual {v0, p1}, Leltos/simpledialogfragment/f;->D0(Landroid/view/View;)V

    return-void
.end method
