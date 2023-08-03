.class public Leltos/simpledialogfragment/list/d;
.super Leltos/simpledialogfragment/list/c;
.source "SimpleListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leltos/simpledialogfragment/list/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/list/c<",
        "Leltos/simpledialogfragment/list/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final Q:Ljava/lang/String; = "SimpleListDialog.selectedLabels"

.field public static final R:Ljava/lang/String; = "SimpleListDialog.selectedSingleLabel"

.field public static final S:I = -0x1
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field public static final T:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "SimpleListDialog."

.field public static final U:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field public static final V:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field public static final W:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field protected static final b1:Ljava/lang/String; = "SimpleListDialog.data_set"

.field protected static final g1:Ljava/lang/String; = "SimpleListDialog.highlight"

.field protected static final p1:Ljava/lang/String; = "SimpleListDialog.icon"


# instance fields
.field P:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Leltos/simpledialogfragment/list/SimpleListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Leltos/simpledialogfragment/c$l;->D0:I

    sput v0, Leltos/simpledialogfragment/list/d;->T:I

    .line 2
    sget v0, Leltos/simpledialogfragment/c$l;->G0:I

    sput v0, Leltos/simpledialogfragment/list/d;->U:I

    .line 3
    sget v0, Leltos/simpledialogfragment/c$l;->F0:I

    sput v0, Leltos/simpledialogfragment/list/d;->V:I

    .line 4
    sget v0, Leltos/simpledialogfragment/c$l;->E0:I

    sput v0, Leltos/simpledialogfragment/list/d;->W:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Leltos/simpledialogfragment/list/c;-><init>()V

    return-void
.end method

.method static synthetic w1(Leltos/simpledialogfragment/list/d;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Leltos/simpledialogfragment/b;->L0(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic x1(Leltos/simpledialogfragment/list/d;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static y1()Leltos/simpledialogfragment/list/d;
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/list/d;

    invoke-direct {v0}, Leltos/simpledialogfragment/list/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public A1(Landroid/content/Context;I)Leltos/simpledialogfragment/list/d;
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/list/d;->D1([Ljava/lang/String;)Leltos/simpledialogfragment/list/d;

    move-result-object p1

    return-object p1
.end method

.method public B1(Landroid/content/Context;[I)Leltos/simpledialogfragment/list/d;
    .locals 8
    .param p2    # [I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p2, v2

    .line 3
    new-instance v4, Leltos/simpledialogfragment/list/SimpleListItem;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    int-to-long v6, v3

    invoke-direct {v4, v5, v6, v7}, Leltos/simpledialogfragment/list/SimpleListItem;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/list/d;->C1(Ljava/util/ArrayList;)Leltos/simpledialogfragment/list/d;

    move-result-object p1

    return-object p1
.end method

.method public C1(Ljava/util/ArrayList;)Leltos/simpledialogfragment/list/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Leltos/simpledialogfragment/list/SimpleListItem;",
            ">;)",
            "Leltos/simpledialogfragment/list/d;"
        }
    .end annotation

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleListDialog.data_set"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public D1([Ljava/lang/String;)Leltos/simpledialogfragment/list/d;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 3
    new-instance v4, Leltos/simpledialogfragment/list/SimpleListItem;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    int-to-long v5, v5

    invoke-direct {v4, v3, v5, v6}, Leltos/simpledialogfragment/list/SimpleListItem;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/list/d;->C1(Ljava/util/ArrayList;)Leltos/simpledialogfragment/list/d;

    move-result-object p1

    return-object p1
.end method

.method public E1([Ljava/lang/String;[J)Leltos/simpledialogfragment/list/d;
    .locals 6

    .line 1
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 4
    new-instance v2, Leltos/simpledialogfragment/list/SimpleListItem;

    aget-object v3, p1, v1

    aget-wide v4, p2, v1

    invoke-direct {v2, v3, v4, v5}, Leltos/simpledialogfragment/list/SimpleListItem;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/list/d;->C1(Ljava/util/ArrayList;)Leltos/simpledialogfragment/list/d;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Length of ID-array must match label array length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public F1(I)Leltos/simpledialogfragment/list/d;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    const-string v0, "SimpleListDialog.icon"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/list/d;

    return-object p1
.end method

.method protected G1()Leltos/simpledialogfragment/list/d$a;
    .locals 5

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleListDialog.icon"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_5

    .line 2
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "CustomListDialogchoiceMode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "CustomListDialoginitCheckPos"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "CustomListDialoginitCheckId"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-ne v0, v3, :cond_2

    .line 4
    sget v0, Leltos/simpledialogfragment/list/d;->U:I

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 5
    sget v0, Leltos/simpledialogfragment/list/d;->V:I

    goto :goto_2

    :cond_3
    const/16 v3, 0xb

    if-ne v0, v3, :cond_4

    if-eqz v2, :cond_4

    .line 6
    sget v0, Leltos/simpledialogfragment/list/d;->U:I

    goto :goto_2

    .line 7
    :cond_4
    sget v0, Leltos/simpledialogfragment/list/d;->T:I

    .line 8
    :cond_5
    :goto_2
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SimpleListDialog.data_set"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Leltos/simpledialogfragment/list/d;->P:Ljava/util/ArrayList;

    if-nez v2, :cond_6

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Leltos/simpledialogfragment/list/d;->P:Ljava/util/ArrayList;

    .line 10
    :cond_6
    new-instance v1, Leltos/simpledialogfragment/list/d$a;

    iget-object v2, p0, Leltos/simpledialogfragment/list/d;->P:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v0, v2}, Leltos/simpledialogfragment/list/d$a;-><init>(Leltos/simpledialogfragment/list/d;ILjava/util/ArrayList;)V

    return-object v1
.end method

.method protected R0(I)Landroid/os/Bundle;
    .locals 4

    .line 1
    invoke-super {p0, p1}, Leltos/simpledialogfragment/list/c;->R0(I)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "CustomListDialogselectedPos"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 5
    iget-object v3, p0, Leltos/simpledialogfragment/list/d;->P:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leltos/simpledialogfragment/list/SimpleListItem;

    invoke-virtual {v2}, Leltos/simpledialogfragment/list/SimpleListItem;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "SimpleListDialog.selectedLabels"

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    const-string v0, "CustomListDialogselectedSinglePos"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Leltos/simpledialogfragment/list/d;->P:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leltos/simpledialogfragment/list/SimpleListItem;

    .line 11
    invoke-virtual {v0}, Leltos/simpledialogfragment/list/SimpleListItem;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleListDialog.selectedSingleLabel"

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method protected bridge synthetic s1()Leltos/simpledialogfragment/list/a;
    .locals 1

    invoke-virtual {p0}, Leltos/simpledialogfragment/list/d;->G1()Leltos/simpledialogfragment/list/d$a;

    move-result-object v0

    return-object v0
.end method

.method public z1(ZZ)Leltos/simpledialogfragment/list/d;
    .locals 1

    const-string v0, "SimpleListDialog.highlight"

    .line 1
    invoke-virtual {p0, v0, p2}, Leltos/simpledialogfragment/f;->w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;

    .line 2
    invoke-super {p0, p1}, Leltos/simpledialogfragment/list/c;->m1(Z)Leltos/simpledialogfragment/list/c;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/list/d;

    return-object p1
.end method
