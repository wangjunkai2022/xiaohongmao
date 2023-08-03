.class Leltos/simpledialogfragment/form/h$c;
.super Landroid/widget/ArrayAdapter;
.source "SpinnerViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/form/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;[Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const v0, 0x1090009

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-boolean p3, p0, Leltos/simpledialogfragment/form/h$c;->b:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Leltos/simpledialogfragment/form/h$c;->a:I

    .line 4
    invoke-virtual {p0, p4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0, p2}, Landroid/widget/ArrayAdapter;->addAll([Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/ArrayAdapter;->addAll([Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0, p4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 8
    array-length p1, p2

    iput p1, p0, Leltos/simpledialogfragment/form/h$c;->a:I

    :goto_0
    return-void
.end method


# virtual methods
.method a(I)I
    .locals 1

    iget v0, p0, Leltos/simpledialogfragment/form/h$c;->a:I

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method

.method b(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Leltos/simpledialogfragment/form/h$c;->a:I

    goto :goto_0

    :cond_0
    iget v0, p0, Leltos/simpledialogfragment/form/h$c;->a:I

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    :goto_0
    return p1
.end method

.method public getCount()I
    .locals 2

    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    iget-boolean v1, p0, Leltos/simpledialogfragment/form/h$c;->b:Z

    xor-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    iget p3, p0, Leltos/simpledialogfragment/form/h$c;->a:I

    if-ne p1, p3, :cond_0

    const p3, 0x1020014

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const-string v0, ""

    .line 4
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    iget p3, p0, Leltos/simpledialogfragment/form/h$c;->a:I

    if-ne p1, p3, :cond_0

    const p3, 0x1020014

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const-string v0, ""

    .line 4
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p2
.end method
