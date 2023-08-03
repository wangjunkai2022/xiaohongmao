.class Leltos/simpledialogfragment/form/b;
.super Leltos/simpledialogfragment/form/d;
.source "ColorViewHolder.java"

# interfaces
.implements Leltos/simpledialogfragment/f$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/form/d<",
        "Leltos/simpledialogfragment/form/ColorField;",
        ">;",
        "Leltos/simpledialogfragment/f$c;"
    }
.end annotation


# static fields
.field protected static final d:Ljava/lang/String; = "color"

.field private static final e:Ljava/lang/String; = "colorPickerDialogTag"


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Leltos/simpledialogfragment/color/ColorView;


# direct methods
.method public constructor <init>(Leltos/simpledialogfragment/form/ColorField;)V
    .locals 0

    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/d;-><init>(Leltos/simpledialogfragment/form/FormElement;)V

    return-void
.end method

.method static synthetic h(Leltos/simpledialogfragment/form/b;)Leltos/simpledialogfragment/color/ColorView;
    .locals 0

    iget-object p0, p0, Leltos/simpledialogfragment/form/b;->c:Leltos/simpledialogfragment/color/ColorView;

    return-object p0
.end method


# virtual methods
.method public R(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "colorPickerDialogTag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v1, Leltos/simpledialogfragment/form/ColorField;

    iget-object v1, v1, Leltos/simpledialogfragment/form/FormElement;->resultKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Leltos/simpledialogfragment/form/b;->c:Leltos/simpledialogfragment/color/ColorView;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Leltos/simpledialogfragment/color/ColorView;->getColor()I

    move-result p2

    const-string v0, "SimpleColorDialog.color"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Leltos/simpledialogfragment/color/ColorView;->setColor(I)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected a(Leltos/simpledialogfragment/form/g$c;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Leltos/simpledialogfragment/form/g$c;->b()V

    .line 2
    iget-object p1, p0, Leltos/simpledialogfragment/form/b;->c:Leltos/simpledialogfragment/color/ColorView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    move-result p1

    return p1
.end method

.method protected b()I
    .locals 1

    sget v0, Leltos/simpledialogfragment/c$l;->N0:I

    return v0
.end method

.method protected c(Landroid/content/Context;)Z
    .locals 0

    iget-object p1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast p1, Leltos/simpledialogfragment/form/ColorField;

    iget-boolean p1, p1, Leltos/simpledialogfragment/form/FormElement;->required:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Leltos/simpledialogfragment/form/b;->c:Leltos/simpledialogfragment/color/ColorView;

    invoke-virtual {p1}, Leltos/simpledialogfragment/color/ColorView;->getColor()I

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

    iget-object v0, p0, Leltos/simpledialogfragment/form/b;->c:Leltos/simpledialogfragment/color/ColorView;

    invoke-virtual {v0}, Leltos/simpledialogfragment/color/ColorView;->getColor()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected e(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Leltos/simpledialogfragment/form/b;->c:Leltos/simpledialogfragment/color/ColorView;

    invoke-virtual {v0}, Leltos/simpledialogfragment/color/ColorView;->getColor()I

    move-result v0

    const-string v1, "color"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected f(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Leltos/simpledialogfragment/form/g$b;)V
    .locals 2

    .line 1
    sget v0, Leltos/simpledialogfragment/c$i;->q2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leltos/simpledialogfragment/form/b;->b:Landroid/widget/TextView;

    .line 2
    sget v0, Leltos/simpledialogfragment/c$i;->P0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/color/ColorView;

    iput-object p1, p0, Leltos/simpledialogfragment/form/b;->c:Leltos/simpledialogfragment/color/ColorView;

    .line 3
    iget-object p1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast p1, Leltos/simpledialogfragment/form/ColorField;

    invoke-virtual {p1, p2}, Leltos/simpledialogfragment/form/FormElement;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Leltos/simpledialogfragment/form/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Leltos/simpledialogfragment/form/b;->b:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Leltos/simpledialogfragment/form/b;->b:Landroid/widget/TextView;

    new-instance v0, Leltos/simpledialogfragment/form/b$a;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/form/b$a;-><init>(Leltos/simpledialogfragment/form/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p3, :cond_1

    .line 7
    iget-object p1, p0, Leltos/simpledialogfragment/form/b;->c:Leltos/simpledialogfragment/color/ColorView;

    const-string v0, "color"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Leltos/simpledialogfragment/color/ColorView;->setColor(I)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Leltos/simpledialogfragment/form/b;->c:Leltos/simpledialogfragment/color/ColorView;

    iget-object p3, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast p3, Leltos/simpledialogfragment/form/ColorField;

    invoke-virtual {p3, p2}, Leltos/simpledialogfragment/form/ColorField;->getInitialColor(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p1, p3}, Leltos/simpledialogfragment/color/ColorView;->setColor(I)V

    .line 9
    :goto_1
    iget-object p1, p0, Leltos/simpledialogfragment/form/b;->c:Leltos/simpledialogfragment/color/ColorView;

    const/high16 p3, 0x40000000    # 2.0f

    .line 10
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 11
    invoke-static {v1, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p3}, Leltos/simpledialogfragment/color/ColorView;->setOutlineWidth(I)V

    .line 12
    iget-object p1, p0, Leltos/simpledialogfragment/form/b;->c:Leltos/simpledialogfragment/color/ColorView;

    iget-object p3, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast p3, Leltos/simpledialogfragment/form/ColorField;

    iget p3, p3, Leltos/simpledialogfragment/form/ColorField;->outline:I

    invoke-virtual {p1, p3}, Leltos/simpledialogfragment/color/ColorView;->setOutlineColor(I)V

    .line 13
    iget-object p1, p0, Leltos/simpledialogfragment/form/b;->c:Leltos/simpledialogfragment/color/ColorView;

    sget-object p3, Leltos/simpledialogfragment/color/ColorView$Style;->PALETTE:Leltos/simpledialogfragment/color/ColorView$Style;

    invoke-virtual {p1, p3}, Leltos/simpledialogfragment/color/ColorView;->setStyle(Leltos/simpledialogfragment/color/ColorView$Style;)V

    .line 14
    iget-object p1, p0, Leltos/simpledialogfragment/form/b;->c:Leltos/simpledialogfragment/color/ColorView;

    invoke-virtual {p1, v1}, Leltos/simpledialogfragment/color/ColorView;->setChecked(Z)V

    .line 15
    iget-object p1, p0, Leltos/simpledialogfragment/form/b;->c:Leltos/simpledialogfragment/color/ColorView;

    new-instance p3, Leltos/simpledialogfragment/form/b$b;

    invoke-direct {p3, p0, p4, p2}, Leltos/simpledialogfragment/form/b$b;-><init>(Leltos/simpledialogfragment/form/b;Leltos/simpledialogfragment/form/g$b;Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected g(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/form/b;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 3
    iget-object v1, p0, Leltos/simpledialogfragment/form/b;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010098

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Leltos/simpledialogfragment/form/b;->b:Landroid/widget/TextView;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Leltos/simpledialogfragment/form/b;->b:Landroid/widget/TextView;

    const/high16 v1, -0x76000000

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Leltos/simpledialogfragment/form/b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Leltos/simpledialogfragment/c$f;->E2:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return v0
.end method
