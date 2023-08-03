.class public abstract Leltos/simpledialogfragment/list/c;
.super Leltos/simpledialogfragment/b;
.source "CustomListDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<This:",
        "Leltos/simpledialogfragment/list/c<",
        "TThis;>;>",
        "Leltos/simpledialogfragment/b<",
        "TThis;>;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "CustomListDialogselectedIds"

.field public static final B:Ljava/lang/String; = "CustomListDialogselectedPos"

.field public static final C:Ljava/lang/String; = "CustomListDialogselectedSingleId"

.field public static final D:Ljava/lang/String; = "CustomListDialogselectedSinglePos"

.field protected static final E:Ljava/lang/String; = "CustomListDialogchoiceMode"

.field protected static final F:Ljava/lang/String; = "CustomListDialogchoiceMin"

.field protected static final G:Ljava/lang/String; = "CustomListDialogchoiceMax"

.field protected static final H:Ljava/lang/String; = "CustomListDialoginitCheckPos"

.field protected static final I:Ljava/lang/String; = "CustomListDialoginitCheckId"

.field private static final J:Ljava/lang/String; = "CustomListDialoggrid"

.field private static final K:Ljava/lang/String; = "CustomListDialoggridN"

.field private static final L:Ljava/lang/String; = "CustomListDialoggridW"

.field private static final M:Ljava/lang/String; = "CustomListDialogshowDivider"

.field private static final N:Ljava/lang/String; = "CustomListDialogfilter"

.field private static final O:Ljava/lang/String; = "CustomListDialogemptyText"

.field protected static final v:Ljava/lang/String; = "CustomListDialog"

.field public static final w:I = 0x0

.field public static final x:I = 0x1

.field public static final y:I = 0xb

.field public static final z:I = 0x2


# instance fields
.field private r:Z

.field private s:Landroid/widget/AbsListView;

.field private t:Leltos/simpledialogfragment/list/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leltos/simpledialogfragment/list/a<",
            "*>;"
        }
    .end annotation
.end field

.field private u:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Leltos/simpledialogfragment/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Leltos/simpledialogfragment/list/c;->r:Z

    return-void
.end method

.method static synthetic W0(Leltos/simpledialogfragment/list/c;)Leltos/simpledialogfragment/list/a;
    .locals 0

    iget-object p0, p0, Leltos/simpledialogfragment/list/c;->t:Leltos/simpledialogfragment/list/a;

    return-object p0
.end method

.method static synthetic X0(Leltos/simpledialogfragment/list/c;)V
    .locals 0

    invoke-direct {p0}, Leltos/simpledialogfragment/list/c;->v1()V

    return-void
.end method

.method static synthetic Y0(Leltos/simpledialogfragment/list/c;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Z0(Leltos/simpledialogfragment/list/c;)V
    .locals 0

    invoke-virtual {p0}, Leltos/simpledialogfragment/b;->S0()V

    return-void
.end method

.method private v1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CustomListDialogchoiceMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Leltos/simpledialogfragment/b;->V0(Z)V

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "CustomListDialogchoiceMin"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "CustomListDialogchoiceMax"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ltz v0, :cond_1

    .line 5
    iget-object v3, p0, Leltos/simpledialogfragment/list/c;->t:Leltos/simpledialogfragment/list/a;

    .line 6
    invoke-virtual {v3}, Leltos/simpledialogfragment/list/a;->f()I

    move-result v3

    if-lt v3, v0, :cond_2

    :cond_1
    if-ltz v2, :cond_3

    iget-object v0, p0, Leltos/simpledialogfragment/list/c;->t:Leltos/simpledialogfragment/list/a;

    .line 7
    invoke-virtual {v0}, Leltos/simpledialogfragment/list/a;->f()I

    move-result v0

    if-gt v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 8
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Leltos/simpledialogfragment/b;->V0(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected M0(Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CustomListDialoggrid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget v0, Leltos/simpledialogfragment/c$l;->S0:I

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/b;->K0(I)Landroid/view/View;

    move-result-object v0

    .line 3
    sget v1, Leltos/simpledialogfragment/c$i;->V1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Leltos/simpledialogfragment/list/c;->s:Landroid/widget/AbsListView;

    .line 4
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "CustomListDialoggridW"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Leltos/simpledialogfragment/list/c;->s:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/GridView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 7
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 8
    :cond_0
    iget-object v1, p0, Leltos/simpledialogfragment/list/c;->s:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/GridView;

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, -0x1

    const-string v4, "CustomListDialoggridN"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0

    .line 9
    :cond_1
    sget v0, Leltos/simpledialogfragment/c$l;->X0:I

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/b;->K0(I)Landroid/view/View;

    move-result-object v0

    .line 10
    sget v1, Leltos/simpledialogfragment/c$i;->y2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Leltos/simpledialogfragment/list/c;->s:Landroid/widget/AbsListView;

    .line 11
    :goto_0
    sget v1, Leltos/simpledialogfragment/c$i;->M1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Leltos/simpledialogfragment/list/c;->u:Landroid/widget/EditText;

    .line 12
    sget v1, Leltos/simpledialogfragment/c$i;->F1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "CustomListDialogemptyText"

    .line 13
    invoke-virtual {p0, v2}, Leltos/simpledialogfragment/f;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p0}, Leltos/simpledialogfragment/list/c;->s1()Leltos/simpledialogfragment/list/a;

    move-result-object v2

    iput-object v2, p0, Leltos/simpledialogfragment/list/c;->t:Leltos/simpledialogfragment/list/a;

    .line 15
    iget-object v3, p0, Leltos/simpledialogfragment/list/c;->s:Landroid/widget/AbsListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 16
    iget-object v2, p0, Leltos/simpledialogfragment/list/c;->s:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V

    .line 17
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "CustomListDialogchoiceMode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    if-eq v1, v2, :cond_2

    const/16 v5, 0xb

    if-eq v1, v5, :cond_3

    goto :goto_1

    .line 18
    :cond_2
    iget-object v1, p0, Leltos/simpledialogfragment/list/c;->t:Leltos/simpledialogfragment/list/a;

    invoke-virtual {v1, v2}, Leltos/simpledialogfragment/list/a;->p(I)V

    goto :goto_1

    .line 19
    :cond_3
    iget-object v1, p0, Leltos/simpledialogfragment/list/c;->t:Leltos/simpledialogfragment/list/a;

    invoke-virtual {v1, v4}, Leltos/simpledialogfragment/list/a;->p(I)V

    .line 20
    :goto_1
    iget-object v1, p0, Leltos/simpledialogfragment/list/c;->u:Landroid/widget/EditText;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 21
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "CustomListDialogfilter"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 22
    iget-object v1, p0, Leltos/simpledialogfragment/list/c;->u:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 23
    iget-object v1, p0, Leltos/simpledialogfragment/list/c;->u:Landroid/widget/EditText;

    new-instance v5, Leltos/simpledialogfragment/list/c$a;

    invoke-direct {v5, p0}, Leltos/simpledialogfragment/list/c$a;-><init>(Leltos/simpledialogfragment/list/c;)V

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 24
    :cond_4
    iget-object v1, p0, Leltos/simpledialogfragment/list/c;->s:Landroid/widget/AbsListView;

    new-instance v5, Leltos/simpledialogfragment/list/c$b;

    invoke-direct {v5, p0}, Leltos/simpledialogfragment/list/c$b;-><init>(Leltos/simpledialogfragment/list/c;)V

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 25
    iget-object v1, p0, Leltos/simpledialogfragment/list/c;->s:Landroid/widget/AbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 26
    iget-object v1, p0, Leltos/simpledialogfragment/list/c;->s:Landroid/widget/AbsListView;

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_6

    .line 27
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "CustomListDialogshowDivider"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    .line 28
    iget-object v1, p0, Leltos/simpledialogfragment/list/c;->s:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1080013

    invoke-static {v6, v7, v5}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 29
    iget-object v1, p0, Leltos/simpledialogfragment/list/c;->s:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    goto :goto_2

    .line 30
    :cond_5
    iget-object v1, p0, Leltos/simpledialogfragment/list/c;->s:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_2
    if-nez p1, :cond_8

    .line 31
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "CustomListDialoginitCheckId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 32
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p1

    .line 33
    iget-object v1, p0, Leltos/simpledialogfragment/list/c;->t:Leltos/simpledialogfragment/list/a;

    invoke-virtual {v1, p1}, Leltos/simpledialogfragment/list/a;->z([J)V

    .line 34
    :cond_7
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "CustomListDialoginitCheckPos"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 35
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_9

    .line 36
    array-length v1, p1

    :goto_3
    if-ge v3, v1, :cond_9

    aget v2, p1, v3

    .line 37
    iget-object v5, p0, Leltos/simpledialogfragment/list/c;->t:Leltos/simpledialogfragment/list/a;

    invoke-virtual {v5, v2, v4}, Leltos/simpledialogfragment/list/a;->w(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    const-string v1, "CustomListDialogselectedPos"

    .line 38
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 40
    iget-object v2, p0, Leltos/simpledialogfragment/list/c;->t:Leltos/simpledialogfragment/list/a;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, v4}, Leltos/simpledialogfragment/list/a;->w(IZ)V

    goto :goto_4

    :cond_9
    return-object v0
.end method

.method protected N0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Leltos/simpledialogfragment/list/c;->v1()V

    .line 2
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CustomListDialogfilter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Leltos/simpledialogfragment/list/c;->u:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/f;->D0(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected R0(I)Landroid/os/Bundle;
    .locals 9

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/list/c;->t:Leltos/simpledialogfragment/list/a;

    invoke-virtual {v0}, Leltos/simpledialogfragment/list/a;->h()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    iget-object v1, p0, Leltos/simpledialogfragment/list/c;->t:Leltos/simpledialogfragment/list/a;

    invoke-virtual {v1}, Leltos/simpledialogfragment/list/a;->g()Ljava/util/ArrayList;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "CustomListDialogchoiceMode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const-string v2, "CustomListDialogselectedPos"

    .line 5
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v5, v2, [J

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_0

    .line 7
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "CustomListDialogselectedIds"

    .line 8
    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 9
    :cond_1
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    .line 10
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_4

    .line 11
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v5, :cond_3

    .line 12
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "CustomListDialogselectedSinglePos"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v5, :cond_4

    .line 14
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "CustomListDialogselectedSingleId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    return-object p1
.end method

.method public a1(J)Leltos/simpledialogfragment/list/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TThis;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/list/c;->c1([J)Leltos/simpledialogfragment/list/c;

    move-result-object p1

    return-object p1
.end method

.method public b1(Ljava/util/List;)Leltos/simpledialogfragment/list/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)TThis;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Leltos/simpledialogfragment/list/c;->c1([J)Leltos/simpledialogfragment/list/c;

    move-result-object p1

    return-object p1
.end method

.method public c1([J)Leltos/simpledialogfragment/list/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)TThis;"
        }
    .end annotation

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CustomListDialoginitCheckId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    return-object p0
.end method

.method public d1(I)Leltos/simpledialogfragment/list/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TThis;"
        }
    .end annotation

    const-string v0, "CustomListDialogchoiceMax"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/list/c;

    return-object p1
.end method

.method public e1(I)Leltos/simpledialogfragment/list/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TThis;"
        }
    .end annotation

    const-string v0, "CustomListDialogchoiceMin"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/list/c;

    return-object p1
.end method

.method public f1(I)Leltos/simpledialogfragment/list/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TThis;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Leltos/simpledialogfragment/list/c;->r:Z

    if-nez v0, :cond_0

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/list/c;->u1(Ljava/lang/String;)Leltos/simpledialogfragment/list/c;

    :cond_0
    const-string v0, "CustomListDialogchoiceMode"

    .line 3
    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/list/c;

    return-object p1
.end method

.method public g1(I)Leltos/simpledialogfragment/list/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TThis;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/list/c;->i1([I)Leltos/simpledialogfragment/list/c;

    move-result-object p1

    return-object p1
.end method

.method public h1(Ljava/util/List;)Leltos/simpledialogfragment/list/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)TThis;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Leltos/simpledialogfragment/list/c;->i1([I)Leltos/simpledialogfragment/list/c;

    move-result-object p1

    return-object p1
.end method

.method public i1([I)Leltos/simpledialogfragment/list/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)TThis;"
        }
    .end annotation

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CustomListDialoginitCheckPos"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p0
.end method

.method public j1(Z)Leltos/simpledialogfragment/list/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TThis;"
        }
    .end annotation

    const-string v0, "CustomListDialogshowDivider"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/list/c;

    return-object p1
.end method

.method public k1(I)Leltos/simpledialogfragment/list/c;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TThis;"
        }
    .end annotation

    const-string v0, "CustomListDialogemptyText"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/list/c;

    return-object p1
.end method

.method public l1(Ljava/lang/String;)Leltos/simpledialogfragment/list/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TThis;"
        }
    .end annotation

    const-string v0, "CustomListDialogemptyText"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->v0(Ljava/lang/String;Ljava/lang/String;)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/list/c;

    return-object p1
.end method

.method public m1(Z)Leltos/simpledialogfragment/list/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TThis;"
        }
    .end annotation

    const-string v0, "CustomListDialogfilter"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/list/c;

    return-object p1
.end method

.method protected n1()Landroid/widget/AbsListView;
    .locals 1

    iget-object v0, p0, Leltos/simpledialogfragment/list/c;->s:Landroid/widget/AbsListView;

    return-object v0
.end method

.method public o1()Leltos/simpledialogfragment/list/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TThis;"
        }
    .end annotation

    const-string v0, "CustomListDialoggrid"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Leltos/simpledialogfragment/f;->w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;

    move-result-object v0

    check-cast v0, Leltos/simpledialogfragment/list/c;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/list/c;->t:Leltos/simpledialogfragment/list/a;

    invoke-virtual {v0}, Leltos/simpledialogfragment/list/a;->h()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "CustomListDialogselectedPos"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public p1(I)Leltos/simpledialogfragment/list/c;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TThis;"
        }
    .end annotation

    const-string v0, "CustomListDialoggridW"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/list/c;

    return-object p1
.end method

.method public q1(I)Leltos/simpledialogfragment/list/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TThis;"
        }
    .end annotation

    const-string v0, "CustomListDialoggridN"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/list/c;

    return-object p1
.end method

.method public bridge synthetic r0(I)Leltos/simpledialogfragment/f;
    .locals 0

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/list/c;->t1(I)Leltos/simpledialogfragment/list/c;

    move-result-object p1

    return-object p1
.end method

.method protected r1()V
    .locals 1

    iget-object v0, p0, Leltos/simpledialogfragment/list/c;->t:Leltos/simpledialogfragment/list/a;

    invoke-virtual {v0}, Leltos/simpledialogfragment/list/a;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic s0(Ljava/lang/String;)Leltos/simpledialogfragment/f;
    .locals 0

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/list/c;->u1(Ljava/lang/String;)Leltos/simpledialogfragment/list/c;

    move-result-object p1

    return-object p1
.end method

.method protected abstract s1()Leltos/simpledialogfragment/list/a;
.end method

.method public t1(I)Leltos/simpledialogfragment/list/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TThis;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Leltos/simpledialogfragment/list/c;->r:Z

    .line 2
    invoke-super {p0, p1}, Leltos/simpledialogfragment/f;->r0(I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/list/c;

    return-object p1
.end method

.method public u1(Ljava/lang/String;)Leltos/simpledialogfragment/list/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TThis;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Leltos/simpledialogfragment/list/c;->r:Z

    .line 2
    invoke-super {p0, p1}, Leltos/simpledialogfragment/f;->s0(Ljava/lang/String;)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/list/c;

    return-object p1
.end method
