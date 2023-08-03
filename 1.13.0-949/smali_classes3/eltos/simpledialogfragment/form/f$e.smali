.class Leltos/simpledialogfragment/form/f$e;
.super Ljava/lang/Object;
.source "InputViewHolder.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Leltos/simpledialogfragment/form/f$e;->b:Leltos/simpledialogfragment/form/f;

    iput-object p2, p0, Leltos/simpledialogfragment/form/f$e;->a:Leltos/simpledialogfragment/form/g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Leltos/simpledialogfragment/form/f$e;->b:Leltos/simpledialogfragment/form/f;

    iget-object p4, p1, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    move-object p5, p4

    check-cast p5, Leltos/simpledialogfragment/form/Input;

    iget-boolean p5, p5, Leltos/simpledialogfragment/form/Input;->isSpinner:Z

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    check-cast p4, Leltos/simpledialogfragment/form/Input;

    iget-boolean p4, p4, Leltos/simpledialogfragment/form/FormElement;->required:Z

    if-nez p4, :cond_0

    invoke-static {p1}, Leltos/simpledialogfragment/form/f;->h(Leltos/simpledialogfragment/form/f;)Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, v0

    if-ne p3, p1, :cond_0

    .line 2
    iget-object p1, p0, Leltos/simpledialogfragment/form/f$e;->b:Leltos/simpledialogfragment/form/f;

    invoke-static {p1}, Leltos/simpledialogfragment/form/f;->h(Leltos/simpledialogfragment/form/f;)Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-object p1, p0, Leltos/simpledialogfragment/form/f$e;->b:Leltos/simpledialogfragment/form/f;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Leltos/simpledialogfragment/form/f;->g(Landroid/content/Context;)Z

    .line 4
    iget-object p1, p0, Leltos/simpledialogfragment/form/f$e;->a:Leltos/simpledialogfragment/form/g$b;

    invoke-virtual {p1}, Leltos/simpledialogfragment/form/g$b;->h()V

    .line 5
    iget-object p1, p0, Leltos/simpledialogfragment/form/f$e;->a:Leltos/simpledialogfragment/form/g$b;

    invoke-virtual {p1, v0}, Leltos/simpledialogfragment/form/g$b;->d(Z)V

    return-void
.end method
