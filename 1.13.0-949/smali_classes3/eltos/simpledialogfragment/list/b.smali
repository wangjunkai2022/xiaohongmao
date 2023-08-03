.class public abstract Leltos/simpledialogfragment/list/b;
.super Leltos/simpledialogfragment/list/a;
.source "AdvancedSectionAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leltos/simpledialogfragment/list/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Leltos/simpledialogfragment/list/a<",
        "TT;>;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# instance fields
.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Leltos/simpledialogfragment/list/b<",
            "TT;>.a;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Leltos/simpledialogfragment/list/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leltos/simpledialogfragment/list/b;->j:Ljava/util/ArrayList;

    return-void
.end method

.method private C()V
    .locals 6

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/list/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Leltos/simpledialogfragment/list/a;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Leltos/simpledialogfragment/list/a;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Leltos/simpledialogfragment/list/b;->B(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5
    iget-object v3, p0, Leltos/simpledialogfragment/list/b;->j:Ljava/util/ArrayList;

    new-instance v5, Leltos/simpledialogfragment/list/b$a;

    invoke-direct {v5, p0, v4, v2}, Leltos/simpledialogfragment/list/b$a;-><init>(Leltos/simpledialogfragment/list/b;Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, p0, Leltos/simpledialogfragment/list/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 7
    iget-object v2, p0, Leltos/simpledialogfragment/list/b;->j:Ljava/util/ArrayList;

    new-instance v3, Leltos/simpledialogfragment/list/b$a;

    invoke-direct {v3, p0, v1, v0}, Leltos/simpledialogfragment/list/b$a;-><init>(Leltos/simpledialogfragment/list/b;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public abstract B(Ljava/lang/Object;)Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public getPositionForSection(I)I
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    iget-object v0, p0, Leltos/simpledialogfragment/list/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Leltos/simpledialogfragment/list/b;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 2
    :cond_1
    iget-object v0, p0, Leltos/simpledialogfragment/list/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/list/b$a;

    iget p1, p1, Leltos/simpledialogfragment/list/b$a;->b:I

    return p1
.end method

.method public getSectionForPosition(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/list/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Leltos/simpledialogfragment/list/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leltos/simpledialogfragment/list/b$a;

    iget v1, v1, Leltos/simpledialogfragment/list/b$a;->b:I

    if-lt p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Leltos/simpledialogfragment/list/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Leltos/simpledialogfragment/list/a;->notifyDataSetChanged()V

    .line 2
    invoke-direct {p0}, Leltos/simpledialogfragment/list/b;->C()V

    return-void
.end method
