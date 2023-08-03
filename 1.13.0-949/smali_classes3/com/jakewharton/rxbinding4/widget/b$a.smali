.class final Lcom/jakewharton/rxbinding4/widget/b$a;
.super Lio/reactivex/rxjava3/android/b;
.source "AbsListViewScrollEventObservable.kt"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding4/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u000e\u0010\u0018\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00150\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0018\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J(\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0016J\u0008\u0010\r\u001a\u00020\u0007H\u0014R\u0016\u0010\u0010\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0018\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00150\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/widget/b$a;",
        "Lio/reactivex/rxjava3/android/b;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/widget/AbsListView;",
        "absListView",
        "",
        "scrollState",
        "",
        "onScrollStateChanged",
        "firstVisibleItem",
        "visibleItemCount",
        "totalItemCount",
        "onScroll",
        "a",
        "b",
        "I",
        "currentScrollState",
        "c",
        "Landroid/widget/AbsListView;",
        "view",
        "Lio/reactivex/rxjava3/core/n0;",
        "Lcom/jakewharton/rxbinding4/widget/a;",
        "d",
        "Lio/reactivex/rxjava3/core/n0;",
        "observer",
        "<init>",
        "(Landroid/widget/AbsListView;Lio/reactivex/rxjava3/core/n0;)V",
        "rxbinding_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private b:I

.field private final c:Landroid/widget/AbsListView;

.field private final d:Lio/reactivex/rxjava3/core/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/n0<",
            "-",
            "Lcom/jakewharton/rxbinding4/widget/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;Lio/reactivex/rxjava3/core/n0;)V
    .locals 0
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AbsListView;",
            "Lio/reactivex/rxjava3/core/n0<",
            "-",
            "Lcom/jakewharton/rxbinding4/widget/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/rxjava3/android/b;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/b$a;->c:Landroid/widget/AbsListView;

    iput-object p2, p0, Lcom/jakewharton/rxbinding4/widget/b$a;->d:Lio/reactivex/rxjava3/core/n0;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/b$a;->c:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/reactivex/rxjava3/android/b;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/jakewharton/rxbinding4/widget/a;

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/b$a;->c:Landroid/widget/AbsListView;

    iget v2, p0, Lcom/jakewharton/rxbinding4/widget/b$a;->b:I

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jakewharton/rxbinding4/widget/a;-><init>(Landroid/widget/AbsListView;IIII)V

    .line 3
    iget-object p2, p0, Lcom/jakewharton/rxbinding4/widget/b$a;->d:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {p2, p1}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 6
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iput p2, p0, Lcom/jakewharton/rxbinding4/widget/b$a;->b:I

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/android/b;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/jakewharton/rxbinding4/widget/a;

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/b$a;->c:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    .line 4
    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/b$a;->c:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/b$a;->c:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    move-object v0, p1

    move v2, p2

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/jakewharton/rxbinding4/widget/a;-><init>(Landroid/widget/AbsListView;IIII)V

    .line 6
    iget-object p2, p0, Lcom/jakewharton/rxbinding4/widget/b$a;->d:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {p2, p1}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
