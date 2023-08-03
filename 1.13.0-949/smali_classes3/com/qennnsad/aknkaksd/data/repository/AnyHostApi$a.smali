.class public final Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi$a;
.super Ljava/lang/Object;
.source "AnyHostApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic a(Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/z;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "https://webman-api.moonscap.com"

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi;->generatePushStreaming(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: generatePushStreaming"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/z;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "https://webman-api.moonscap.com"

    :cond_0
    invoke-interface {p0, p1}, Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi;->getHitList(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getHitList"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/z;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const-string p1, "https://webman-api.moonscap.com"

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi;->modifyPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: modifyPassword"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic d(Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/z;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "https://webman-api.moonscap.com"

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi;->removeHit(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: removeHit"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic e(Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/z;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "https://webman-api.moonscap.com"

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi;->setHit(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setHit"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic f(Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/z;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "https://webman-api.moonscap.com"

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi;->updateIntro(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateIntro"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic g(Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi;Ljava/lang/String;IILjava/lang/Object;)Lio/reactivex/z;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "https://webman-api.moonscap.com"

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi;->updateSubscribeNotify(Ljava/lang/String;I)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateSubscribeNotify"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
