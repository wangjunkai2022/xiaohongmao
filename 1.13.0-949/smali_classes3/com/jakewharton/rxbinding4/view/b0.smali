.class final synthetic Lcom/jakewharton/rxbinding4/view/b0;
.super Ljava/lang/Object;
.source "ViewVisibilityConsumer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewVisibilityConsumer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewVisibilityConsumer.kt\ncom/jakewharton/rxbinding4/view/RxView__ViewVisibilityConsumerKt\n*L\n1#1,30:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a\u001e\u0010\u0005\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00040\u0003*\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0001H\u0007\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroid/view/View;",
        "",
        "visibilityWhenFalse",
        "Lq7/g;",
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
    xs = "com/jakewharton/rxbinding4/view/RxView"
.end annotation


# direct methods
.method public static final a(Landroid/view/View;)Lq7/g;
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lq7/g<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/jakewharton/rxbinding4/view/i;->D(Landroid/view/View;IILjava/lang/Object;)Lq7/g;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroid/view/View;I)Lq7/g;
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)",
            "Lq7/g<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x8

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 1
    new-instance v0, Lcom/jakewharton/rxbinding4/view/b0$a;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding4/view/b0$a;-><init>(Landroid/view/View;I)V

    return-object v0

    .line 2
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must set visibility to INVISIBLE or GONE when false."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Setting visibility to VISIBLE when false would have no effect."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic c(Landroid/view/View;IILjava/lang/Object;)Lq7/g;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x8

    :cond_0
    invoke-static {p0, p1}, Lcom/jakewharton/rxbinding4/view/i;->C(Landroid/view/View;I)Lq7/g;

    move-result-object p0

    return-object p0
.end method
