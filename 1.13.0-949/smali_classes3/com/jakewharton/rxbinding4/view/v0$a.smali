.class final Lcom/jakewharton/rxbinding4/view/v0$a;
.super Lio/reactivex/rxjava3/android/b;
.source "ViewScrollChangeEventObservable.kt"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding4/view/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u000e\u0010\u0014\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00110\u0010\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J0\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0008\u0010\u000c\u001a\u00020\nH\u0014R\u0014\u0010\u000f\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0014\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00110\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/view/v0$a;",
        "Lio/reactivex/rxjava3/android/b;",
        "Landroid/view/View$OnScrollChangeListener;",
        "Landroid/view/View;",
        "v",
        "",
        "scrollX",
        "scrollY",
        "oldScrollX",
        "oldScrollY",
        "",
        "onScrollChange",
        "a",
        "b",
        "Landroid/view/View;",
        "view",
        "Lio/reactivex/rxjava3/core/n0;",
        "Lcom/jakewharton/rxbinding4/view/u0;",
        "c",
        "Lio/reactivex/rxjava3/core/n0;",
        "observer",
        "<init>",
        "(Landroid/view/View;Lio/reactivex/rxjava3/core/n0;)V",
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
.field private final b:Landroid/view/View;

.field private final c:Lio/reactivex/rxjava3/core/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/n0<",
            "-",
            "Lcom/jakewharton/rxbinding4/view/u0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lio/reactivex/rxjava3/core/n0;)V
    .locals 0
    .param p1    # Landroid/view/View;
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
            "Landroid/view/View;",
            "Lio/reactivex/rxjava3/core/n0<",
            "-",
            "Lcom/jakewharton/rxbinding4/view/u0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/rxjava3/android/b;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/view/v0$a;->b:Landroid/view/View;

    iput-object p2, p0, Lcom/jakewharton/rxbinding4/view/v0$a;->c:Lio/reactivex/rxjava3/core/n0;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/view/v0$a;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    return-void
.end method

.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/reactivex/rxjava3/android/b;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jakewharton/rxbinding4/view/v0$a;->c:Lio/reactivex/rxjava3/core/n0;

    new-instance v7, Lcom/jakewharton/rxbinding4/view/u0;

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/jakewharton/rxbinding4/view/u0;-><init>(Landroid/view/View;IIII)V

    invoke-interface {v0, v7}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
