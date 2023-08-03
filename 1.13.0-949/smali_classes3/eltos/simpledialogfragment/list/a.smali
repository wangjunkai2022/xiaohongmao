.class public abstract Leltos/simpledialogfragment/list/a;
.super Landroid/widget/BaseAdapter;
.source "AdvancedAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leltos/simpledialogfragment/list/a$a;,
        Leltos/simpledialogfragment/list/a$c;,
        Leltos/simpledialogfragment/list/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# static fields
.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x2


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Leltos/simpledialogfragment/list/a<",
            "TT;>.b;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Leltos/simpledialogfragment/list/a<",
            "TT;>.b;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Leltos/simpledialogfragment/list/a;->a:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Leltos/simpledialogfragment/list/a;->b:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Leltos/simpledialogfragment/list/a;->c:Ljava/lang/Integer;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Leltos/simpledialogfragment/list/a;->d:Ljava/util/ArrayList;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    .line 7
    iput-object v0, p0, Leltos/simpledialogfragment/list/a;->f:Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic a(Leltos/simpledialogfragment/list/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Leltos/simpledialogfragment/list/a;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/list/a;->f:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic c(Leltos/simpledialogfragment/list/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Leltos/simpledialogfragment/list/a;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Leltos/simpledialogfragment/list/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Leltos/simpledialogfragment/list/a;->b:Z

    return p1
.end method


# virtual methods
.method public A(I)V
    .locals 3

    .line 1
    iget v0, p0, Leltos/simpledialogfragment/list/a;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/list/a;->n(I)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Leltos/simpledialogfragment/list/a;->w(IZ)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, p1, v1}, Leltos/simpledialogfragment/list/a;->w(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/list/a;->k()Leltos/simpledialogfragment/list/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Leltos/simpledialogfragment/list/a;->k()Leltos/simpledialogfragment/list/a$a;

    move-result-object v0

    iget-object v1, p0, Leltos/simpledialogfragment/list/a;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public f()I
    .locals 3

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leltos/simpledialogfragment/list/a$b;

    .line 2
    iget-boolean v2, v2, Leltos/simpledialogfragment/list/a$b;->c:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public g()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Leltos/simpledialogfragment/list/a;->f()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leltos/simpledialogfragment/list/a$b;

    .line 3
    iget-boolean v3, v2, Leltos/simpledialogfragment/list/a$b;->c:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Leltos/simpledialogfragment/list/a$b;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Leltos/simpledialogfragment/list/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFilter()Landroid/widget/Filter;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Leltos/simpledialogfragment/list/a;->k()Leltos/simpledialogfragment/list/a$a;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Leltos/simpledialogfragment/list/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/list/a$b;

    iget-object p1, p1, Leltos/simpledialogfragment/list/a$b;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Leltos/simpledialogfragment/list/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/list/a$b;

    invoke-virtual {p1}, Leltos/simpledialogfragment/list/a$b;->a()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    instance-of p3, p2, Landroid/widget/Checkable;

    if-eqz p3, :cond_0

    .line 2
    move-object p3, p2

    check-cast p3, Landroid/widget/Checkable;

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/list/a;->n(I)Z

    move-result p1

    invoke-interface {p3, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 3
    iget-boolean p1, p0, Leltos/simpledialogfragment/list/a;->b:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_0
    return-object p2
.end method

.method public h()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Leltos/simpledialogfragment/list/a;->f()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leltos/simpledialogfragment/list/a$b;

    iget-boolean v2, v2, Leltos/simpledialogfragment/list/a$b;->c:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public i()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Leltos/simpledialogfragment/list/a;->f()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leltos/simpledialogfragment/list/a$b;

    .line 3
    iget-boolean v3, v2, Leltos/simpledialogfragment/list/a$b;->c:Z

    if-eqz v3, :cond_0

    iget-object v2, v2, Leltos/simpledialogfragment/list/a$b;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public j()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leltos/simpledialogfragment/list/a$b;

    .line 3
    iget-object v2, v2, Leltos/simpledialogfragment/list/a$b;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public k()Leltos/simpledialogfragment/list/a$a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leltos/simpledialogfragment/list/a<",
            "TT;>.a;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected l(Ljava/lang/String;I)Landroid/text/Spannable;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Leltos/simpledialogfragment/list/a;->k()Leltos/simpledialogfragment/list/a$a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {v1}, Leltos/simpledialogfragment/list/a$a;->a(Leltos/simpledialogfragment/list/a$a;)Ljava/util/regex/Pattern;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {v1}, Leltos/simpledialogfragment/list/a$a;->a(Leltos/simpledialogfragment/list/a$a;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 7
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    const/16 v4, 0x21

    .line 8
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method protected m(Ljava/lang/String;Landroid/content/Context;)Landroid/text/Spannable;
    .locals 3

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/list/a;->c:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010099

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    const v0, 0x6633b5e5

    .line 3
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/list/a;->c:Ljava/lang/Integer;

    .line 4
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    :cond_0
    iget-object p2, p0, Leltos/simpledialogfragment/list/a;->c:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Leltos/simpledialogfragment/list/a;->l(Ljava/lang/String;I)Landroid/text/Spannable;

    move-result-object p1

    return-object p1
.end method

.method public n(I)Z
    .locals 1

    iget-object v0, p0, Leltos/simpledialogfragment/list/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/list/a$b;

    iget-boolean p1, p1, Leltos/simpledialogfragment/list/a$b;->c:Z

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Leltos/simpledialogfragment/list/a;->b:Z

    return-void
.end method

.method public o(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Leltos/simpledialogfragment/list/a;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leltos/simpledialogfragment/list/a$b;

    .line 3
    iput-boolean p1, v1, Leltos/simpledialogfragment/list/a$b;->c:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public p(I)V
    .locals 4

    .line 1
    iput p1, p0, Leltos/simpledialogfragment/list/a;->a:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/list/a;->o(Z)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 3
    invoke-virtual {p0}, Leltos/simpledialogfragment/list/a;->f()I

    move-result p1

    if-le p1, v1, :cond_3

    .line 4
    iget-object p1, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leltos/simpledialogfragment/list/a$b;

    if-eqz v1, :cond_1

    .line 5
    iget-boolean v3, v2, Leltos/simpledialogfragment/list/a$b;->c:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 6
    :cond_1
    iput-boolean v0, v2, Leltos/simpledialogfragment/list/a$b;->c:Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Leltos/simpledialogfragment/list/a;->e()V

    :cond_3
    :goto_1
    return-void
.end method

.method public q(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    new-instance v2, Leltos/simpledialogfragment/list/a$b;

    invoke-direct {v2, p0, v0}, Leltos/simpledialogfragment/list/a$b;-><init>(Leltos/simpledialogfragment/list/a;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Leltos/simpledialogfragment/list/a;->d:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Leltos/simpledialogfragment/list/a;->e()V

    return-void
.end method

.method public r(Ljava/util/ArrayList;Leltos/simpledialogfragment/list/a$c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+TT;>;",
            "Leltos/simpledialogfragment/list/a$c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    new-instance v2, Leltos/simpledialogfragment/list/a$b;

    invoke-interface {p2, v0}, Leltos/simpledialogfragment/list/a$c;->a(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Leltos/simpledialogfragment/list/a$b;-><init>(Leltos/simpledialogfragment/list/a;Ljava/lang/Object;Ljava/lang/Long;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Leltos/simpledialogfragment/list/a;->d:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Leltos/simpledialogfragment/list/a;->e()V

    return-void
.end method

.method public s([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/list/a;->q(Ljava/util/ArrayList;)V

    return-void
.end method

.method public t([Ljava/lang/Object;Leltos/simpledialogfragment/list/a$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Leltos/simpledialogfragment/list/a$c<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, p2}, Leltos/simpledialogfragment/list/a;->r(Ljava/util/ArrayList;Leltos/simpledialogfragment/list/a$c;)V

    return-void
.end method

.method public u(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/core/util/Pair<",
            "TT;",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/util/Pair;

    .line 3
    iget-object v1, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    new-instance v2, Leltos/simpledialogfragment/list/a$b;

    iget-object v3, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-direct {v2, p0, v3, v0}, Leltos/simpledialogfragment/list/a$b;-><init>(Leltos/simpledialogfragment/list/a;Ljava/lang/Object;Ljava/lang/Long;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Leltos/simpledialogfragment/list/a;->d:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Leltos/simpledialogfragment/list/a;->e()V

    return-void
.end method

.method public v([Ljava/lang/Object;[J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[J)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    new-instance v2, Leltos/simpledialogfragment/list/a$b;

    aget-object v3, p1, v0

    aget-wide v4, p2, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Leltos/simpledialogfragment/list/a$b;-><init>(Leltos/simpledialogfragment/list/a;Ljava/lang/Object;Ljava/lang/Long;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Leltos/simpledialogfragment/list/a;->d:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0}, Leltos/simpledialogfragment/list/a;->e()V

    return-void
.end method

.method public w(IZ)V
    .locals 2

    .line 1
    iget v0, p0, Leltos/simpledialogfragment/list/a;->a:I

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/list/a;->o(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Leltos/simpledialogfragment/list/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/list/a$b;

    iput-boolean p2, p1, Leltos/simpledialogfragment/list/a$b;->c:Z

    :cond_1
    return-void
.end method

.method public x(JZ)V
    .locals 5

    .line 1
    iget v0, p0, Leltos/simpledialogfragment/list/a;->a:I

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/list/a;->o(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leltos/simpledialogfragment/list/a$b;

    .line 4
    invoke-virtual {v1}, Leltos/simpledialogfragment/list/a$b;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_1

    .line 5
    iput-boolean p3, v1, Leltos/simpledialogfragment/list/a$b;->c:Z

    :cond_2
    return-void
.end method

.method public y(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/list/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leltos/simpledialogfragment/list/a$b;

    .line 2
    invoke-virtual {v1}, Leltos/simpledialogfragment/list/a$b;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Leltos/simpledialogfragment/list/a$b;->c:Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public z([J)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/list/a;->o(Z)V

    .line 2
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-wide v2, p1, v0

    const/4 v4, 0x1

    .line 3
    invoke-virtual {p0, v2, v3, v4}, Leltos/simpledialogfragment/list/a;->x(JZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
