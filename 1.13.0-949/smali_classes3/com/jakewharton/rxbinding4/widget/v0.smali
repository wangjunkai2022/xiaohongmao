.class final synthetic Lcom/jakewharton/rxbinding4/widget/v0;
.super Ljava/lang/Object;
.source "SearchViewQueryConsumer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0008\u0002\u001a\u001c\u0010\u0005\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00040\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0007\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroid/widget/SearchView;",
        "",
        "submit",
        "Lq7/g;",
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
    xs = "com/jakewharton/rxbinding4/widget/RxSearchView"
.end annotation


# direct methods
.method public static final a(Landroid/widget/SearchView;Z)Lq7/g;
    .locals 1
    .param p0    # Landroid/widget/SearchView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SearchView;",
            "Z)",
            "Lq7/g<",
            "-",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/jakewharton/rxbinding4/widget/v0$a;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding4/widget/v0$a;-><init>(Landroid/widget/SearchView;Z)V

    return-object v0
.end method
