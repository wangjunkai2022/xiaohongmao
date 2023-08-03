.class public final Lcom/im/freechat/data/sources/api/RemoteApi$DefaultImpls;
.super Ljava/lang/Object;
.source "RemoteApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/data/sources/api/RemoteApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
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
.method public static synthetic getApiDns1$default(Lcom/im/freechat/data/sources/api/RemoteApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "https://223.5.5.5/resolve?name=_messager._tls.api.moonscap.com&type=33"

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/im/freechat/data/sources/api/RemoteApi;->getApiDns1(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getApiDns1"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getApiDns2$default(Lcom/im/freechat/data/sources/api/RemoteApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "https://doh.pub/dns-query?name=_messager._tls.api.moonscap.com&type=33"

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/im/freechat/data/sources/api/RemoteApi;->getApiDns2(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getApiDns2"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getApiDns3$default(Lcom/im/freechat/data/sources/api/RemoteApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "https://1.1.1.1/dns-query?name=_messager._tls.api.moonscap.com&type=SRV&ct=application/dns-json"

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/im/freechat/data/sources/api/RemoteApi;->getApiDns3(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getApiDns3"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getApiDns4$default(Lcom/im/freechat/data/sources/api/RemoteApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "https://1.0.0.1/dns-query?name=_messager._tls.api.moonscap.com&type=SRV&ct=application/dns-json"

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/im/freechat/data/sources/api/RemoteApi;->getApiDns4(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getApiDns4"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getApiDns5$default(Lcom/im/freechat/data/sources/api/RemoteApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "https://cloudflare-dns.com/dns-query?name=_messager._tls.api.moonscap.com&type=SRV&ct=application/dns-json"

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/im/freechat/data/sources/api/RemoteApi;->getApiDns5(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getApiDns5"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
