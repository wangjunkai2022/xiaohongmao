.class public final Lcom/jakewharton/rxbinding4/widget/w;
.super Ljava/lang/Object;
.source "AbsListViewScrollEventObservable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "com/jakewharton/rxbinding4/widget/x"
    }
    d2 = {}
    k = 0x4
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Landroid/widget/AbsListView;)Lio/reactivex/rxjava3/core/g0;
    .locals 0
    .param p0    # Landroid/widget/AbsListView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AbsListView;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lcom/jakewharton/rxbinding4/widget/a;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    invoke-static {p0}, Lcom/jakewharton/rxbinding4/widget/x;->a(Landroid/widget/AbsListView;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method
