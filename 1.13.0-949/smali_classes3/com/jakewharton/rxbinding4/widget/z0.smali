.class final synthetic Lcom/jakewharton/rxbinding4/widget/z0;
.super Ljava/lang/Object;
.source "SeekBarChangeEventObservable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0012\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u0007\u00a8\u0006\u0004"
    }
    d2 = {
        "Landroid/widget/SeekBar;",
        "Lcom/jakewharton/rxbinding4/a;",
        "Lcom/jakewharton/rxbinding4/widget/o1;",
        "a",
        "rxbinding_release"
    }
    k = 0x5
    mv = {
        0x1,
        0x4,
        0x0
    }
    xs = "com/jakewharton/rxbinding4/widget/RxSeekBar"
.end annotation


# direct methods
.method public static final a(Landroid/widget/SeekBar;)Lcom/jakewharton/rxbinding4/a;
    .locals 1
    .param p0    # Landroid/widget/SeekBar;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SeekBar;",
            ")",
            "Lcom/jakewharton/rxbinding4/a<",
            "Lcom/jakewharton/rxbinding4/widget/o1;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/jakewharton/rxbinding4/widget/p1;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding4/widget/p1;-><init>(Landroid/widget/SeekBar;)V

    return-object v0
.end method
