.class final synthetic Lcom/jakewharton/rxbinding4/widget/j1;
.super Ljava/lang/Object;
.source "ToolbarItemClickObservable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0012\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u0007\u00a8\u0006\u0004"
    }
    d2 = {
        "Landroid/widget/Toolbar;",
        "Lio/reactivex/rxjava3/core/g0;",
        "Landroid/view/MenuItem;",
        "a",
        "rxbinding_release"
    }
    k = 0x5
    mv = {
        0x1,
        0x4,
        0x0
    }
    xs = "com/jakewharton/rxbinding4/widget/RxToolbar"
.end annotation


# direct methods
.method public static final a(Landroid/widget/Toolbar;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p0    # Landroid/widget/Toolbar;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Toolbar;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/jakewharton/rxbinding4/widget/e2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding4/widget/e2;-><init>(Landroid/widget/Toolbar;)V

    return-object v0
.end method
