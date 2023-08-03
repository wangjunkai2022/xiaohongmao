.class public Lcom/futuremind/recyclerviewfastscroll/a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RecyclerViewScrollListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuremind/recyclerviewfastscroll/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/futuremind/recyclerviewfastscroll/a$a;",
            ">;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method public constructor <init>(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scroller"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/a;->c:I

    .line 4
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/a;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    return-void
.end method


# virtual methods
.method public a(Lcom/futuremind/recyclerviewfastscroll/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "relativePos"
        }
    .end annotation

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuremind/recyclerviewfastscroll/a$a;

    invoke-interface {v1, p1}, Lcom/futuremind/recyclerviewfastscroll/a$a;->a(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method c(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rv"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollExtent()I

    move-result v1

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result p1

    :goto_0
    int-to-float v0, v0

    sub-int/2addr p1, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 8
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/a;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {p1, v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setScrollerPosition(F)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/futuremind/recyclerviewfastscroll/a;->b(F)V

    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "newScrollState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 2
    iget p1, p0, Lcom/futuremind/recyclerviewfastscroll/a;->c:I

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/a;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getViewProvider()Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->h()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    iget p1, p0, Lcom/futuremind/recyclerviewfastscroll/a;->c:I

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/a;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getViewProvider()Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->i()V

    .line 6
    :cond_1
    :goto_0
    iput p2, p0, Lcom/futuremind/recyclerviewfastscroll/a;->c:I

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rv",
            "dx",
            "dy"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/a;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {p2}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->o()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/futuremind/recyclerviewfastscroll/a;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method
