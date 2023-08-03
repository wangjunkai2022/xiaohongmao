.class Leltos/simpledialogfragment/form/a;
.super Leltos/simpledialogfragment/form/d;
.source "CheckViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/form/d<",
        "Leltos/simpledialogfragment/form/Check;",
        ">;"
    }
.end annotation


# static fields
.field protected static final c:Ljava/lang/String; = "checked"


# instance fields
.field private b:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Leltos/simpledialogfragment/form/Check;)V
    .locals 0

    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/d;-><init>(Leltos/simpledialogfragment/form/FormElement;)V

    return-void
.end method

.method static synthetic h(Leltos/simpledialogfragment/form/a;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Leltos/simpledialogfragment/form/a;->b:Landroid/widget/CheckBox;

    return-object p0
.end method


# virtual methods
.method protected a(Leltos/simpledialogfragment/form/g$c;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Leltos/simpledialogfragment/form/g$c;->b()V

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/form/a;->b:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setFocusableInTouchMode(Z)V

    .line 3
    iget-object v0, p0, Leltos/simpledialogfragment/form/a;->b:Landroid/widget/CheckBox;

    new-instance v1, Leltos/simpledialogfragment/form/a$b;

    invoke-direct {v1, p0, p1}, Leltos/simpledialogfragment/form/a$b;-><init>(Leltos/simpledialogfragment/form/a;Leltos/simpledialogfragment/form/g$c;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/CheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    iget-object p1, p0, Leltos/simpledialogfragment/form/a;->b:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->requestFocus()Z

    move-result p1

    return p1
.end method

.method protected b()I
    .locals 1

    sget v0, Leltos/simpledialogfragment/c$l;->M0:I

    return v0
.end method

.method protected c(Landroid/content/Context;)Z
    .locals 0

    iget-object p1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast p1, Leltos/simpledialogfragment/form/Check;

    iget-boolean p1, p1, Leltos/simpledialogfragment/form/FormElement;->required:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Leltos/simpledialogfragment/form/a;->b:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected d(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Leltos/simpledialogfragment/form/a;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected e(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Leltos/simpledialogfragment/form/a;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "checked"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected f(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Leltos/simpledialogfragment/form/g$b;)V
    .locals 1

    .line 1
    sget v0, Leltos/simpledialogfragment/c$i;->E0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Leltos/simpledialogfragment/form/a;->b:Landroid/widget/CheckBox;

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v0, Leltos/simpledialogfragment/form/Check;

    invoke-virtual {v0, p2}, Leltos/simpledialogfragment/form/Check;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    .line 3
    iget-object p1, p0, Leltos/simpledialogfragment/form/a;->b:Landroid/widget/CheckBox;

    const-string p2, "checked"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Leltos/simpledialogfragment/form/a;->b:Landroid/widget/CheckBox;

    iget-object p3, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast p3, Leltos/simpledialogfragment/form/Check;

    invoke-virtual {p3, p2}, Leltos/simpledialogfragment/form/Check;->getInitialState(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5
    :goto_0
    invoke-virtual {p4}, Leltos/simpledialogfragment/form/g$b;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Leltos/simpledialogfragment/form/a;->b:Landroid/widget/CheckBox;

    new-instance p2, Leltos/simpledialogfragment/form/a$a;

    invoke-direct {p2, p0, p4}, Leltos/simpledialogfragment/form/a$a;-><init>(Leltos/simpledialogfragment/form/a;Leltos/simpledialogfragment/form/g$b;)V

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    return-void
.end method

.method protected g(Landroid/content/Context;)Z
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/form/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 3
    iget-object v2, p0, Leltos/simpledialogfragment/form/a;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101006c

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    new-array v2, v4, [I

    const v3, 0x1010098

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 4
    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    iget-object v1, p0, Leltos/simpledialogfragment/form/a;->b:Landroid/widget/CheckBox;

    const/high16 v2, -0x1000000

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Leltos/simpledialogfragment/form/a;->b:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Leltos/simpledialogfragment/c$f;->E2:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setTextColor(I)V

    :goto_0
    return v0
.end method
