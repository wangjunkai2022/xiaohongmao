.class public abstract Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;
.super Ljava/lang/Object;
.source "ScrollerViewProvider.java"


# instance fields
.field private a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

.field private b:Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

.field private c:Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->c:Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->j()Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    move-result-object v0

    iput-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->c:Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->c:Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    return-object v0
.end method

.method public abstract b()I
.end method

.method protected c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->b:Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->m()Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    move-result-object v0

    iput-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->b:Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->b:Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    return-object v0
.end method

.method protected e()Lcom/futuremind/recyclerviewfastscroll/FastScroller;
    .locals 1

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    return-object v0
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->d()Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->d()Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;->a()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->a()Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->a()Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;->a()V

    :cond_1
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->d()Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->d()Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;->b()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->a()Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->a()Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;->b()V

    :cond_1
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->d()Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->d()Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;->c()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->a()Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->a()Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;->c()V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->d()Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->d()Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;->d()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->a()Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->a()Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;->d()V

    :cond_1
    return-void
.end method

.method protected abstract j()Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract k()Landroid/widget/TextView;
.end method

.method public abstract l(Landroid/view/ViewGroup;)Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation
.end method

.method protected abstract m()Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract n(Landroid/view/ViewGroup;)Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation
.end method

.method public o(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scroller"
        }
    .end annotation

    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/c;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    return-void
.end method
