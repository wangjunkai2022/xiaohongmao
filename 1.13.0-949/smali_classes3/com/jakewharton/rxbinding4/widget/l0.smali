.class public final Lcom/jakewharton/rxbinding4/widget/l0;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "com/jakewharton/rxbinding4/widget/m0",
        "com/jakewharton/rxbinding4/widget/n0"
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
.method public static final a(Landroid/widget/PopupMenu;)Lio/reactivex/rxjava3/core/g0;
    .locals 0
    .param p0    # Landroid/widget/PopupMenu;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/PopupMenu;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    invoke-static {p0}, Lcom/jakewharton/rxbinding4/widget/m0;->a(Landroid/widget/PopupMenu;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroid/widget/PopupMenu;)Lio/reactivex/rxjava3/core/g0;
    .locals 0
    .param p0    # Landroid/widget/PopupMenu;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/PopupMenu;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    invoke-static {p0}, Lcom/jakewharton/rxbinding4/widget/n0;->a(Landroid/widget/PopupMenu;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method
