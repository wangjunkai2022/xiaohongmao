.class Leltos/simpledialogfragment/list/ClearableEditText$a;
.super Ljava/lang/Object;
.source "ClearableEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/list/ClearableEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/list/ClearableEditText;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/list/ClearableEditText;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/list/ClearableEditText$a;->a:Leltos/simpledialogfragment/list/ClearableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/list/ClearableEditText$a;->a:Leltos/simpledialogfragment/list/ClearableEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/list/ClearableEditText$a;->a:Leltos/simpledialogfragment/list/ClearableEditText;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Leltos/simpledialogfragment/list/ClearableEditText;->setClearIconVisible(Z)V

    :cond_1
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
