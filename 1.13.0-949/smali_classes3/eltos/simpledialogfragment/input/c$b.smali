.class Leltos/simpledialogfragment/input/c$b;
.super Ljava/lang/Object;
.source "SimplePinDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/input/c;->M0(Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/input/c;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/input/c;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/input/c$b;->a:Leltos/simpledialogfragment/input/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Leltos/simpledialogfragment/input/c$b;->a:Leltos/simpledialogfragment/input/c;

    invoke-static {p1}, Leltos/simpledialogfragment/input/c;->X0(Leltos/simpledialogfragment/input/c;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 2
    iget-object p1, p0, Leltos/simpledialogfragment/input/c$b;->a:Leltos/simpledialogfragment/input/c;

    invoke-virtual {p1}, Leltos/simpledialogfragment/input/c;->f1()Z

    move-result v0

    invoke-virtual {p1, v0}, Leltos/simpledialogfragment/b;->V0(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
