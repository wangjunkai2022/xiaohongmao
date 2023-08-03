.class final synthetic Lcom/jakewharton/rxbinding4/widget/d0;
.super Ljava/lang/Object;
.source "AdapterViewItemLongClickObservable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a2\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Landroid/widget/Adapter;",
        "T",
        "Landroid/widget/AdapterView;",
        "Lkotlin/Function0;",
        "",
        "handled",
        "Lio/reactivex/rxjava3/core/g0;",
        "",
        "b",
        "rxbinding_release"
    }
    k = 0x5
    mv = {
        0x1,
        0x4,
        0x0
    }
    xs = "com/jakewharton/rxbinding4/widget/RxAdapterView"
.end annotation


# direct methods
.method public static final a(Landroid/widget/AdapterView;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/Adapter;",
            ">(",
            "Landroid/widget/AdapterView<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/jakewharton/rxbinding4/widget/z;->h(Landroid/widget/AdapterView;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroid/widget/AdapterView;Lkotlin/jvm/functions/Function0;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/Adapter;",
            ">(",
            "Landroid/widget/AdapterView<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/jakewharton/rxbinding4/widget/i;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding4/widget/i;-><init>(Landroid/widget/AdapterView;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public static synthetic c(Landroid/widget/AdapterView;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/g0;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lq4/a;->a:Lq4/a;

    :cond_0
    invoke-static {p0, p1}, Lcom/jakewharton/rxbinding4/widget/z;->g(Landroid/widget/AdapterView;Lkotlin/jvm/functions/Function0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method
