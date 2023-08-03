.class final synthetic Lcom/jakewharton/rxbinding4/widget/g0;
.super Ljava/lang/Object;
.source "AdapterDataChangeObservable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a#\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u00028\u0000H\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroid/widget/Adapter;",
        "T",
        "Lcom/jakewharton/rxbinding4/a;",
        "a",
        "(Landroid/widget/Adapter;)Lcom/jakewharton/rxbinding4/a;",
        "rxbinding_release"
    }
    k = 0x5
    mv = {
        0x1,
        0x4,
        0x0
    }
    xs = "com/jakewharton/rxbinding4/widget/RxAdapter"
.end annotation


# direct methods
.method public static final a(Landroid/widget/Adapter;)Lcom/jakewharton/rxbinding4/a;
    .locals 1
    .param p0    # Landroid/widget/Adapter;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/Adapter;",
            ">(TT;)",
            "Lcom/jakewharton/rxbinding4/a<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/jakewharton/rxbinding4/widget/c;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding4/widget/c;-><init>(Landroid/widget/Adapter;)V

    return-object v0
.end method
