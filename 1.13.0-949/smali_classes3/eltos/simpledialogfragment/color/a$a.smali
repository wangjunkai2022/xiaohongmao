.class public Leltos/simpledialogfragment/color/a$a;
.super Leltos/simpledialogfragment/list/a;
.source "SimpleColorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/color/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/list/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic j:Leltos/simpledialogfragment/color/a;


# direct methods
.method public constructor <init>(Leltos/simpledialogfragment/color/a;[IZ)V
    .locals 4

    .line 1
    iput-object p1, p0, Leltos/simpledialogfragment/color/a$a;->j:Leltos/simpledialogfragment/color/a;

    invoke-direct {p0}, Leltos/simpledialogfragment/list/a;-><init>()V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p2, v0, [I

    .line 2
    :cond_0
    array-length v1, p2

    add-int/2addr v1, p3

    new-array v2, v1, [Ljava/lang/Integer;

    .line 3
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 4
    aget v3, p2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    add-int/lit8 v1, v1, -0x1

    const p2, 0xbada55

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    .line 6
    :cond_2
    new-instance p2, Leltos/simpledialogfragment/color/a$a$a;

    invoke-direct {p2, p0, p1}, Leltos/simpledialogfragment/color/a$a$a;-><init>(Leltos/simpledialogfragment/color/a$a;Leltos/simpledialogfragment/color/a;)V

    invoke-virtual {p0, v2, p2}, Leltos/simpledialogfragment/list/a;->t([Ljava/lang/Object;Leltos/simpledialogfragment/list/a$c;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    instance-of v0, p2, Leltos/simpledialogfragment/color/ColorView;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Leltos/simpledialogfragment/color/ColorView;

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Leltos/simpledialogfragment/color/ColorView;

    iget-object v0, p0, Leltos/simpledialogfragment/color/a$a;->j:Leltos/simpledialogfragment/color/a;

    invoke-virtual {v0}, Leltos/simpledialogfragment/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Leltos/simpledialogfragment/color/ColorView;-><init>(Landroid/content/Context;)V

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/list/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xbada55

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Leltos/simpledialogfragment/color/a$a;->j:Leltos/simpledialogfragment/color/a;

    invoke-static {v0}, Leltos/simpledialogfragment/color/a;->w1(Leltos/simpledialogfragment/color/a;)I

    move-result v0

    invoke-virtual {p2, v0}, Leltos/simpledialogfragment/color/ColorView;->setColor(I)V

    .line 6
    sget-object v0, Leltos/simpledialogfragment/color/ColorView$Style;->PALETTE:Leltos/simpledialogfragment/color/ColorView$Style;

    invoke-virtual {p2, v0}, Leltos/simpledialogfragment/color/ColorView;->setStyle(Leltos/simpledialogfragment/color/ColorView$Style;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/list/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Leltos/simpledialogfragment/color/ColorView;->setColor(I)V

    .line 8
    sget-object v0, Leltos/simpledialogfragment/color/ColorView$Style;->CHECK:Leltos/simpledialogfragment/color/ColorView$Style;

    invoke-virtual {p2, v0}, Leltos/simpledialogfragment/color/ColorView;->setStyle(Leltos/simpledialogfragment/color/ColorView$Style;)V

    .line 9
    :goto_1
    iget-object v0, p0, Leltos/simpledialogfragment/color/a$a;->j:Leltos/simpledialogfragment/color/a;

    invoke-static {v0}, Leltos/simpledialogfragment/color/a;->x1(Leltos/simpledialogfragment/color/a;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SimpleColorDialog.outline"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    iget-object v3, p0, Leltos/simpledialogfragment/color/a$a;->j:Leltos/simpledialogfragment/color/a;

    .line 11
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 12
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 13
    invoke-virtual {p2, v1}, Leltos/simpledialogfragment/color/ColorView;->setOutlineWidth(I)V

    .line 14
    invoke-virtual {p2, v0}, Leltos/simpledialogfragment/color/ColorView;->setOutlineColor(I)V

    .line 15
    :cond_2
    invoke-super {p0, p1, p2, p3}, Leltos/simpledialogfragment/list/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
