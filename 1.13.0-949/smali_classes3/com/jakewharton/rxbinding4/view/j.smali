.class public final Lcom/jakewharton/rxbinding4/view/j;
.super Ljava/lang/Object;
.source "ViewGroupHierarchyChangeEventObservable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "com/jakewharton/rxbinding4/view/k"
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
.method public static final a(Landroid/view/ViewGroup;)Lio/reactivex/rxjava3/core/g0;
    .locals 0
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lcom/jakewharton/rxbinding4/view/k0;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    invoke-static {p0}, Lcom/jakewharton/rxbinding4/view/k;->a(Landroid/view/ViewGroup;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method
