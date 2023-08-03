.class public final Lcom/jakewharton/rxbinding4/widget/y;
.super Ljava/lang/Object;
.source "AdapterDataChangeObservable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "com/jakewharton/rxbinding4/widget/g0"
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
.method public static final a(Landroid/widget/Adapter;)Lcom/jakewharton/rxbinding4/a;
    .locals 0
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

    invoke-static {p0}, Lcom/jakewharton/rxbinding4/widget/g0;->a(Landroid/widget/Adapter;)Lcom/jakewharton/rxbinding4/a;

    move-result-object p0

    return-object p0
.end method
