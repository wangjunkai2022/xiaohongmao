.class public final Lcom/giphy/sdk/core/network/api/b$a;
.super Ljava/lang/Object;
.source "GPHApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/giphy/sdk/core/network/api/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static synthetic a(Lcom/giphy/sdk/core/network/api/b;Ljava/lang/String;IILcom/giphy/sdk/core/network/api/a;ILjava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/16 p2, 0x19

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/giphy/sdk/core/network/api/b;->c(Ljava/lang/String;IILcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    .line 2
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: channelsSearch"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Lcom/giphy/sdk/core/network/api/b;Ljava/util/List;Lcom/giphy/sdk/core/network/api/a;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/giphy/sdk/core/network/api/b;->a(Ljava/util/List;Lcom/giphy/sdk/core/network/api/a;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: gifsByIds"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
