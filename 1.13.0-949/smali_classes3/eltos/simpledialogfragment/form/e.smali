.class Leltos/simpledialogfragment/form/e;
.super Leltos/simpledialogfragment/form/d;
.source "HintViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/form/d<",
        "Leltos/simpledialogfragment/form/Hint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/form/Hint;)V
    .locals 0

    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/d;-><init>(Leltos/simpledialogfragment/form/FormElement;)V

    return-void
.end method


# virtual methods
.method protected a(Leltos/simpledialogfragment/form/g$c;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected b()I
    .locals 1

    sget v0, Leltos/simpledialogfragment/c$l;->P0:I

    return v0
.end method

.method protected c(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected d(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected e(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected f(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Leltos/simpledialogfragment/form/g$b;)V
    .locals 0

    .line 1
    sget p3, Leltos/simpledialogfragment/c$i;->q2:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2
    iget-object p3, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast p3, Leltos/simpledialogfragment/form/Hint;

    invoke-virtual {p3, p2}, Leltos/simpledialogfragment/form/FormElement;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected g(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
