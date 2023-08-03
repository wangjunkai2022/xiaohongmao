.class Leltos/simpledialogfragment/list/d$a;
.super Leltos/simpledialogfragment/list/a;
.source "SimpleListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/list/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/list/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private j:I

.field k:Leltos/simpledialogfragment/list/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leltos/simpledialogfragment/list/a<",
            "Ljava/lang/String;",
            ">.a;"
        }
    .end annotation
.end field

.field final synthetic l:Leltos/simpledialogfragment/list/d;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/list/d;ILjava/util/ArrayList;)V
    .locals 4
    .param p1    # Leltos/simpledialogfragment/list/d;
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Leltos/simpledialogfragment/list/SimpleListItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Leltos/simpledialogfragment/list/d$a;->l:Leltos/simpledialogfragment/list/d;

    invoke-direct {p0}, Leltos/simpledialogfragment/list/a;-><init>()V

    .line 2
    new-instance p1, Leltos/simpledialogfragment/list/d$a$a;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0, v0}, Leltos/simpledialogfragment/list/d$a$a;-><init>(Leltos/simpledialogfragment/list/d$a;ZZ)V

    iput-object p1, p0, Leltos/simpledialogfragment/list/d$a;->k:Leltos/simpledialogfragment/list/a$a;

    .line 3
    iput p2, p0, Leltos/simpledialogfragment/list/d$a;->j:I

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Leltos/simpledialogfragment/list/SimpleListItem;

    .line 6
    new-instance v0, Landroidx/core/util/Pair;

    invoke-virtual {p3}, Leltos/simpledialogfragment/list/SimpleListItem;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Leltos/simpledialogfragment/list/SimpleListItem;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {v0, v1, p3}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/list/a;->u(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getFilter()Landroid/widget/Filter;
    .locals 1

    invoke-virtual {p0}, Leltos/simpledialogfragment/list/d$a;->k()Leltos/simpledialogfragment/list/a$a;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Leltos/simpledialogfragment/list/d$a;->l:Leltos/simpledialogfragment/list/d;

    iget v0, p0, Leltos/simpledialogfragment/list/d$a;->j:I

    const/4 v1, 0x0

    invoke-static {p2, v0, p3, v1}, Leltos/simpledialogfragment/list/d;->w1(Leltos/simpledialogfragment/list/d;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x1020014

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5
    :goto_0
    iget-object v1, p0, Leltos/simpledialogfragment/list/d$a;->l:Leltos/simpledialogfragment/list/d;

    invoke-static {v1}, Leltos/simpledialogfragment/list/d;->x1(Leltos/simpledialogfragment/list/d;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "SimpleListDialog.highlight"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/list/a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Leltos/simpledialogfragment/list/d$a;->l:Leltos/simpledialogfragment/list/d;

    invoke-virtual {v2}, Leltos/simpledialogfragment/f;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Leltos/simpledialogfragment/list/a;->m(Ljava/lang/String;Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/list/a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :goto_1
    invoke-super {p0, p1, p2, p3}, Leltos/simpledialogfragment/list/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public k()Leltos/simpledialogfragment/list/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leltos/simpledialogfragment/list/a<",
            "Ljava/lang/String;",
            ">.a;"
        }
    .end annotation

    iget-object v0, p0, Leltos/simpledialogfragment/list/d$a;->k:Leltos/simpledialogfragment/list/a$a;

    return-object v0
.end method
