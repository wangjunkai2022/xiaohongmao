.class final synthetic Lcom/jakewharton/rxbinding4/widget/i0;
.super Ljava/lang/Object;
.source "AutoCompleteTextViewItemClickEventObservable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0012\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u0007\u00a8\u0006\u0004"
    }
    d2 = {
        "Landroid/widget/AutoCompleteTextView;",
        "Lio/reactivex/rxjava3/core/g0;",
        "Lcom/jakewharton/rxbinding4/widget/d;",
        "a",
        "rxbinding_release"
    }
    k = 0x5
    mv = {
        0x1,
        0x4,
        0x0
    }
    xs = "com/jakewharton/rxbinding4/widget/RxAutoCompleteTextView"
.end annotation


# direct methods
.method public static final a(Landroid/widget/AutoCompleteTextView;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p0    # Landroid/widget/AutoCompleteTextView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AutoCompleteTextView;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lcom/jakewharton/rxbinding4/widget/d;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/jakewharton/rxbinding4/widget/o;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding4/widget/o;-><init>(Landroid/widget/AutoCompleteTextView;)V

    return-object v0
.end method
