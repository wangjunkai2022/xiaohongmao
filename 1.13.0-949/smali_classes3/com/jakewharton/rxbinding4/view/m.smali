.class final synthetic Lcom/jakewharton/rxbinding4/view/m;
.super Ljava/lang/Object;
.source "ViewAttachesObservable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u001a\u0012\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u0007\u001a\u0012\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroid/view/View;",
        "Lio/reactivex/rxjava3/core/g0;",
        "",
        "a",
        "b",
        "rxbinding_release"
    }
    k = 0x5
    mv = {
        0x1,
        0x4,
        0x0
    }
    xs = "com/jakewharton/rxbinding4/view/RxView"
.end annotation


# direct methods
.method public static final a(Landroid/view/View;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/jakewharton/rxbinding4/view/g0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/jakewharton/rxbinding4/view/g0;-><init>(Landroid/view/View;Z)V

    return-object v0
.end method

.method public static final b(Landroid/view/View;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/jakewharton/rxbinding4/view/g0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jakewharton/rxbinding4/view/g0;-><init>(Landroid/view/View;Z)V

    return-object v0
.end method
