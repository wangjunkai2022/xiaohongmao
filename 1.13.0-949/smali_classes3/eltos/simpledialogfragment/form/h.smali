.class Leltos/simpledialogfragment/form/h;
.super Leltos/simpledialogfragment/form/d;
.source "SpinnerViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leltos/simpledialogfragment/form/h$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/form/d<",
        "Leltos/simpledialogfragment/form/Spinner;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:I = -0x1

.field protected static final f:Ljava/lang/String; = "pos"


# instance fields
.field private b:Leltos/simpledialogfragment/form/CustomSpinnerView;

.field private c:Landroid/widget/TextView;

.field private d:Leltos/simpledialogfragment/form/h$c;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/form/Spinner;)V
    .locals 0

    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/d;-><init>(Leltos/simpledialogfragment/form/FormElement;)V

    return-void
.end method

.method static synthetic h(Leltos/simpledialogfragment/form/h;)I
    .locals 0

    invoke-direct {p0}, Leltos/simpledialogfragment/form/h;->j()I

    move-result p0

    return p0
.end method

.method static synthetic i(Leltos/simpledialogfragment/form/h;I)V
    .locals 0

    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/h;->k(I)V

    return-void
.end method

.method private j()I
    .locals 2

    iget-object v0, p0, Leltos/simpledialogfragment/form/h;->d:Leltos/simpledialogfragment/form/h$c;

    iget-object v1, p0, Leltos/simpledialogfragment/form/h;->b:Leltos/simpledialogfragment/form/CustomSpinnerView;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/form/h$c;->a(I)I

    move-result v0

    return v0
.end method

.method private k(I)V
    .locals 2

    iget-object v0, p0, Leltos/simpledialogfragment/form/h;->b:Leltos/simpledialogfragment/form/CustomSpinnerView;

    iget-object v1, p0, Leltos/simpledialogfragment/form/h;->d:Leltos/simpledialogfragment/form/h$c;

    invoke-virtual {v1, p1}, Leltos/simpledialogfragment/form/h$c;->b(I)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    return-void
.end method


# virtual methods
.method protected a(Leltos/simpledialogfragment/form/g$c;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Leltos/simpledialogfragment/form/g$c;->b()V

    .line 2
    invoke-virtual {p1}, Leltos/simpledialogfragment/form/g$c;->a()V

    .line 3
    iget-object p1, p0, Leltos/simpledialogfragment/form/h;->b:Leltos/simpledialogfragment/form/CustomSpinnerView;

    invoke-virtual {p1}, Leltos/simpledialogfragment/form/CustomSpinnerView;->performClick()Z

    .line 4
    iget-object p1, p0, Leltos/simpledialogfragment/form/h;->b:Leltos/simpledialogfragment/form/CustomSpinnerView;

    invoke-virtual {p1}, Landroid/widget/Spinner;->requestFocus()Z

    move-result p1

    return p1
.end method

.method protected b()I
    .locals 1

    sget v0, Leltos/simpledialogfragment/c$l;->R0:I

    return v0
.end method

.method protected c(Landroid/content/Context;)Z
    .locals 1

    iget-object p1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast p1, Leltos/simpledialogfragment/form/Spinner;

    iget-boolean p1, p1, Leltos/simpledialogfragment/form/FormElement;->required:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Leltos/simpledialogfragment/form/h;->j()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

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

    invoke-direct {p0}, Leltos/simpledialogfragment/form/h;->j()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected e(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Leltos/simpledialogfragment/form/h;->j()I

    move-result v0

    const-string v1, "pos"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected f(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Leltos/simpledialogfragment/form/g$b;)V
    .locals 4

    .line 1
    sget v0, Leltos/simpledialogfragment/c$i;->u4:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Leltos/simpledialogfragment/form/CustomSpinnerView;

    iput-object v0, p0, Leltos/simpledialogfragment/form/h;->b:Leltos/simpledialogfragment/form/CustomSpinnerView;

    .line 2
    sget v0, Leltos/simpledialogfragment/c$i;->q2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Leltos/simpledialogfragment/form/h;->c:Landroid/widget/TextView;

    .line 3
    iget-object p1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast p1, Leltos/simpledialogfragment/form/Spinner;

    invoke-virtual {p1, p2}, Leltos/simpledialogfragment/form/FormElement;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Leltos/simpledialogfragment/form/h;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Leltos/simpledialogfragment/form/h;->c:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v0, Leltos/simpledialogfragment/form/Spinner;

    invoke-virtual {v0, p2}, Leltos/simpledialogfragment/form/Spinner;->getItems(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v1, Leltos/simpledialogfragment/form/Spinner;

    invoke-virtual {v1, p2}, Leltos/simpledialogfragment/form/Spinner;->getPlaceholderText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    .line 8
    new-instance v2, Leltos/simpledialogfragment/form/h$c;

    iget-object v3, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v3, Leltos/simpledialogfragment/form/Spinner;

    iget-boolean v3, v3, Leltos/simpledialogfragment/form/FormElement;->required:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v1, :cond_1

    move-object p1, v1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, ""

    .line 9
    :goto_1
    invoke-direct {v2, p2, v0, v3, p1}, Leltos/simpledialogfragment/form/h$c;-><init>(Landroid/content/Context;[Ljava/lang/String;ZLjava/lang/String;)V

    iput-object v2, p0, Leltos/simpledialogfragment/form/h;->d:Leltos/simpledialogfragment/form/h$c;

    .line 10
    iget-object p1, p0, Leltos/simpledialogfragment/form/h;->b:Leltos/simpledialogfragment/form/CustomSpinnerView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 11
    iget-object p1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    move-object p2, p1

    check-cast p2, Leltos/simpledialogfragment/form/Spinner;

    iget p2, p2, Leltos/simpledialogfragment/form/Spinner;->position:I

    if-ltz p2, :cond_3

    move-object p2, p1

    check-cast p2, Leltos/simpledialogfragment/form/Spinner;

    iget p2, p2, Leltos/simpledialogfragment/form/Spinner;->position:I

    array-length v0, v0

    if-ge p2, v0, :cond_3

    check-cast p1, Leltos/simpledialogfragment/form/Spinner;

    iget p1, p1, Leltos/simpledialogfragment/form/Spinner;->position:I

    goto :goto_2

    :cond_3
    const/4 p1, -0x1

    .line 12
    :goto_2
    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/h;->k(I)V

    :cond_4
    if-eqz p3, :cond_5

    const-string p1, "pos"

    .line 13
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/h;->k(I)V

    .line 14
    :cond_5
    iget-object p1, p0, Leltos/simpledialogfragment/form/h;->b:Leltos/simpledialogfragment/form/CustomSpinnerView;

    new-instance p2, Leltos/simpledialogfragment/form/h$a;

    invoke-direct {p2, p0, p4}, Leltos/simpledialogfragment/form/h$a;-><init>(Leltos/simpledialogfragment/form/h;Leltos/simpledialogfragment/form/g$b;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 15
    iget-object p1, p0, Leltos/simpledialogfragment/form/h;->b:Leltos/simpledialogfragment/form/CustomSpinnerView;

    new-instance p2, Leltos/simpledialogfragment/form/h$b;

    invoke-direct {p2, p0}, Leltos/simpledialogfragment/form/h$b;-><init>(Leltos/simpledialogfragment/form/h;)V

    invoke-virtual {p1, p2}, Leltos/simpledialogfragment/form/CustomSpinnerView;->setSpinnerEventsListener(Leltos/simpledialogfragment/form/CustomSpinnerView$a;)V

    return-void
.end method

.method protected g(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/form/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 3
    iget-object v1, p0, Leltos/simpledialogfragment/form/h;->c:Landroid/widget/TextView;

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
    iget-object v1, p0, Leltos/simpledialogfragment/form/h;->c:Landroid/widget/TextView;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Leltos/simpledialogfragment/form/h;->c:Landroid/widget/TextView;

    const/high16 v1, -0x76000000

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Leltos/simpledialogfragment/form/h;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Leltos/simpledialogfragment/c$f;->E2:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return v0
.end method
