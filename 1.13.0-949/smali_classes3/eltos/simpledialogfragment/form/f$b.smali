.class Leltos/simpledialogfragment/form/f$b;
.super Ljava/lang/Object;
.source "InputViewHolder.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/form/f;->f(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Leltos/simpledialogfragment/form/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/form/g$b;

.field final synthetic b:Leltos/simpledialogfragment/form/f;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/form/f;Leltos/simpledialogfragment/form/g$b;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/form/f$b;->b:Leltos/simpledialogfragment/form/f;

    iput-object p2, p0, Leltos/simpledialogfragment/form/f$b;->a:Leltos/simpledialogfragment/form/g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    const/4 p3, 0x0

    if-eq p2, p1, :cond_0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    return p3

    .line 1
    :cond_0
    iget-object p1, p0, Leltos/simpledialogfragment/form/f$b;->b:Leltos/simpledialogfragment/form/f;

    iget-object p2, p1, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast p2, Leltos/simpledialogfragment/form/Input;

    iget-boolean p2, p2, Leltos/simpledialogfragment/form/Input;->forceSuggestion:Z

    if-eqz p2, :cond_1

    invoke-static {p1}, Leltos/simpledialogfragment/form/f;->h(Leltos/simpledialogfragment/form/f;)Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Leltos/simpledialogfragment/form/f$b;->b:Leltos/simpledialogfragment/form/f;

    .line 2
    invoke-static {p1}, Leltos/simpledialogfragment/form/f;->h(Leltos/simpledialogfragment/form/f;)Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 3
    iget-object p1, p0, Leltos/simpledialogfragment/form/f$b;->b:Leltos/simpledialogfragment/form/f;

    invoke-static {p1}, Leltos/simpledialogfragment/form/f;->h(Leltos/simpledialogfragment/form/f;)Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    move-result-object p1

    iget-object p2, p0, Leltos/simpledialogfragment/form/f$b;->b:Leltos/simpledialogfragment/form/f;

    invoke-static {p2}, Leltos/simpledialogfragment/form/f;->h(Leltos/simpledialogfragment/form/f;)Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_1
    iget-object p1, p0, Leltos/simpledialogfragment/form/f$b;->a:Leltos/simpledialogfragment/form/g$b;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Leltos/simpledialogfragment/form/g$b;->d(Z)V

    return p2
.end method
