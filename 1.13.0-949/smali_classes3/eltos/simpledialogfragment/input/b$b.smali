.class Leltos/simpledialogfragment/input/b$b;
.super Ljava/lang/Object;
.source "SimpleInputDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/input/b;->M0(Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/input/b;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/input/b;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/input/b$b;->a:Leltos/simpledialogfragment/input/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object p1, p0, Leltos/simpledialogfragment/input/b$b;->a:Leltos/simpledialogfragment/input/b;

    invoke-virtual {p1}, Leltos/simpledialogfragment/input/b;->h1()Z

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
