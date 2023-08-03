.class final synthetic Lcom/jakewharton/rxbinding4/widget/a1;
.super Ljava/lang/Object;
.source "SeekBarChangeObservable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u001a\u0012\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u0007\u001a\u0012\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u0007\u001a\u0012\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u0007\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroid/widget/SeekBar;",
        "Lcom/jakewharton/rxbinding4/a;",
        "",
        "a",
        "c",
        "b",
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
    .locals 2
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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/jakewharton/rxbinding4/widget/q1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jakewharton/rxbinding4/widget/q1;-><init>(Landroid/widget/SeekBar;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static final b(Landroid/widget/SeekBar;)Lcom/jakewharton/rxbinding4/a;
    .locals 2
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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/jakewharton/rxbinding4/widget/q1;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, p0, v1}, Lcom/jakewharton/rxbinding4/widget/q1;-><init>(Landroid/widget/SeekBar;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static final c(Landroid/widget/SeekBar;)Lcom/jakewharton/rxbinding4/a;
    .locals 2
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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/jakewharton/rxbinding4/widget/q1;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, p0, v1}, Lcom/jakewharton/rxbinding4/widget/q1;-><init>(Landroid/widget/SeekBar;Ljava/lang/Boolean;)V

    return-object v0
.end method
