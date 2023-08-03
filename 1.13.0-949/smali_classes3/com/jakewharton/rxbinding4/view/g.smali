.class final synthetic Lcom/jakewharton/rxbinding4/view/g;
.super Ljava/lang/Object;
.source "MenuItemActionViewEventObservable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a(\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005*\u00020\u00002\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroid/view/MenuItem;",
        "Lkotlin/Function1;",
        "Lcom/jakewharton/rxbinding4/view/b;",
        "",
        "handled",
        "Lio/reactivex/rxjava3/core/g0;",
        "b",
        "rxbinding_release"
    }
    k = 0x5
    mv = {
        0x1,
        0x4,
        0x0
    }
    xs = "com/jakewharton/rxbinding4/view/RxMenuItem"
.end annotation


# direct methods
.method public static final a(Landroid/view/MenuItem;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Landroid/view/MenuItem;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MenuItem;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lcom/jakewharton/rxbinding4/view/b;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/jakewharton/rxbinding4/view/f;->c(Landroid/view/MenuItem;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroid/view/MenuItem;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p0    # Landroid/view/MenuItem;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MenuItem;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/jakewharton/rxbinding4/view/b;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lcom/jakewharton/rxbinding4/view/b;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/jakewharton/rxbinding4/view/c;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding4/view/c;-><init>(Landroid/view/MenuItem;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public static synthetic c(Landroid/view/MenuItem;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/g0;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lq4/a;->a:Lq4/a;

    :cond_0
    invoke-static {p0, p1}, Lcom/jakewharton/rxbinding4/view/f;->b(Landroid/view/MenuItem;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method
