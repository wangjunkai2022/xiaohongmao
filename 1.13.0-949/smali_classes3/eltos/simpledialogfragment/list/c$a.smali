.class Leltos/simpledialogfragment/list/c$a;
.super Ljava/lang/Object;
.source "CustomListDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/list/c;->M0(Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/list/c;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/list/c;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/list/c$a;->a:Leltos/simpledialogfragment/list/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/list/c$a;->a:Leltos/simpledialogfragment/list/c;

    invoke-static {v0}, Leltos/simpledialogfragment/list/c;->W0(Leltos/simpledialogfragment/list/c;)Leltos/simpledialogfragment/list/a;

    move-result-object v0

    invoke-virtual {v0}, Leltos/simpledialogfragment/list/a;->k()Leltos/simpledialogfragment/list/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/list/c$a;->a:Leltos/simpledialogfragment/list/c;

    invoke-static {v0}, Leltos/simpledialogfragment/list/c;->W0(Leltos/simpledialogfragment/list/c;)Leltos/simpledialogfragment/list/a;

    move-result-object v0

    invoke-virtual {v0}, Leltos/simpledialogfragment/list/a;->k()Leltos/simpledialogfragment/list/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
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
