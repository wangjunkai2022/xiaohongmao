.class final synthetic Lcom/jakewharton/rxbinding4/widget/e0;
.super Ljava/lang/Object;
.source "AdapterViewItemSelectionObservable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\"\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0002H\u0007\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroid/widget/Adapter;",
        "T",
        "Landroid/widget/AdapterView;",
        "Lcom/jakewharton/rxbinding4/a;",
        "",
        "a",
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
.method public static final a(Landroid/widget/AdapterView;)Lcom/jakewharton/rxbinding4/a;
    .locals 1
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
            "Lcom/jakewharton/rxbinding4/a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/jakewharton/rxbinding4/widget/k;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding4/widget/k;-><init>(Landroid/widget/AdapterView;)V

    return-object v0
.end method
