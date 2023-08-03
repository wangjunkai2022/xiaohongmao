.class public final Lcom/im/freechat/data/c;
.super Ljava/lang/Object;
.source "DnsRepositoryImpl.kt"

# interfaces
.implements Lcom/im/freechat/domain/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/data/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDnsRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DnsRepositoryImpl.kt\ncom/im/freechat/data/DnsRepositoryImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,89:1\n1851#2,2:90\n*S KotlinDebug\n*F\n+ 1 DnsRepositoryImpl.kt\ncom/im/freechat/data/DnsRepositoryImpl\n*L\n58#1:90,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000bB\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001d\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001b\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0004H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u000b\u001a\u00020\u0004H\u0016J\u0008\u0010\u000c\u001a\u00020\u0004H\u0016J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0016J\u0013\u0010\u0011\u001a\u00020\u0010H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0014R\u001a\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0017\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/im/freechat/data/c;",
        "Lcom/im/freechat/domain/d;",
        "",
        "attempt",
        "",
        "i",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "host",
        "",
        "h",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "a",
        "c",
        "Lkotlinx/coroutines/flow/i;",
        "Lcom/im/freechat/shared/entities/DnsResolutionState;",
        "d",
        "",
        "b",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/data/sources/api/RemoteApi;",
        "Lcom/im/freechat/data/sources/api/RemoteApi;",
        "remoteApi",
        "Lkotlinx/coroutines/flow/t;",
        "Lkotlinx/coroutines/flow/t;",
        "dnsResolutionStatusFlow",
        "<init>",
        "(Lcom/im/freechat/data/sources/api/RemoteApi;)V",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final c:Lcom/im/freechat/data/c$a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static d:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/im/freechat/data/sources/api/RemoteApi;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lkotlinx/coroutines/flow/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/t<",
            "Lcom/im/freechat/shared/entities/DnsResolutionState;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/im/freechat/data/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/im/freechat/data/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/im/freechat/data/c;->c:Lcom/im/freechat/data/c$a;

    const-string v0, ""

    sput-object v0, Lcom/im/freechat/data/c;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/im/freechat/data/sources/api/RemoteApi;)V
    .locals 1
    .param p1    # Lcom/im/freechat/data/sources/api/RemoteApi;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "remoteApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/c;->a:Lcom/im/freechat/data/sources/api/RemoteApi;

    .line 3
    sget-object p1, Lcom/im/freechat/shared/entities/AwaitingResolution;->INSTANCE:Lcom/im/freechat/shared/entities/AwaitingResolution;

    invoke-static {p1}, Lkotlinx/coroutines/flow/j0;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/t;

    move-result-object p1

    iput-object p1, p0, Lcom/im/freechat/data/c;->b:Lkotlinx/coroutines/flow/t;

    return-void
.end method

.method public static final synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/im/freechat/data/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic f(Lcom/im/freechat/data/c;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/im/freechat/data/c;->h(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/im/freechat/data/c;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/im/freechat/data/c;->i(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final h(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/c$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/c$b;

    iget v1, v0, Lcom/im/freechat/data/c$b;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/c$b;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/c$b;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/c$b;-><init>(Lcom/im/freechat/data/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/c$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/c$b;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    sget-object p2, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pinging host: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v2, v5}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :try_start_1
    iget-object p2, p0, Lcom/im/freechat/data/c;->a:Lcom/im/freechat/data/sources/api/RemoteApi;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/ping"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput v4, v0, Lcom/im/freechat/data/c$b;->c:I

    invoke-interface {p2, p1, v0}, Lcom/im/freechat/data/sources/api/RemoteApi;->ping(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lretrofit2/Response;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/data/openapigen/models/Ping200Response;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Ping200Response;->getMsg()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    const-string p2, "ok"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 6
    :goto_3
    sget-object p2, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {p2, p1}, Ltimber/log/Timber$b;->b(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private final i(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/im/freechat/data/c$c;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/im/freechat/data/c$c;

    iget v4, v3, Lcom/im/freechat/data/c$c;->g:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/im/freechat/data/c$c;->g:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/im/freechat/data/c$c;

    invoke-direct {v3, v0, v2}, Lcom/im/freechat/data/c$c;-><init>(Lcom/im/freechat/data/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/im/freechat/data/c$c;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 1
    iget v5, v3, Lcom/im/freechat/data/c$c;->g:I

    const-string v6, "Host resolution attempt #"

    const/4 v7, 0x5

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    packed-switch v5, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :pswitch_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_1
    iget v1, v3, Lcom/im/freechat/data/c$c;->d:I

    iget-object v5, v3, Lcom/im/freechat/data/c$c;->c:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v12, v3, Lcom/im/freechat/data/c$c;->b:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v3, Lcom/im/freechat/data/c$c;->a:Ljava/lang/Object;

    check-cast v13, Lcom/im/freechat/data/c;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_3
    iget v1, v3, Lcom/im/freechat/data/c$c;->d:I

    iget-object v5, v3, Lcom/im/freechat/data/c$c;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/c;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :pswitch_4
    iget v1, v3, Lcom/im/freechat/data/c$c;->d:I

    iget-object v5, v3, Lcom/im/freechat/data/c$c;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/c;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :pswitch_5
    iget v1, v3, Lcom/im/freechat/data/c$c;->d:I

    iget-object v5, v3, Lcom/im/freechat/data/c$c;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/c;

    :try_start_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :pswitch_6
    iget v1, v3, Lcom/im/freechat/data/c$c;->d:I

    iget-object v5, v3, Lcom/im/freechat/data/c$c;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/c;

    :try_start_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :pswitch_7
    iget v1, v3, Lcom/im/freechat/data/c$c;->d:I

    iget-object v5, v3, Lcom/im/freechat/data/c$c;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/c;

    :try_start_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_5

    :pswitch_8
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eq v1, v10, :cond_9

    if-eq v1, v8, :cond_7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    if-eq v1, v7, :cond_1

    return-object v11

    .line 4
    :cond_1
    :try_start_5
    iget-object v2, v0, Lcom/im/freechat/data/c;->a:Lcom/im/freechat/data/sources/api/RemoteApi;

    iput-object v0, v3, Lcom/im/freechat/data/c$c;->a:Ljava/lang/Object;

    iput v1, v3, Lcom/im/freechat/data/c$c;->d:I

    iput v7, v3, Lcom/im/freechat/data/c$c;->g:I

    invoke-static {v2, v11, v3, v10, v11}, Lcom/im/freechat/data/sources/api/RemoteApi$DefaultImpls;->getApiDns5$default(Lcom/im/freechat/data/sources/api/RemoteApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-ne v2, v4, :cond_2

    return-object v4

    :cond_2
    move-object v5, v0

    :goto_1
    :try_start_6
    check-cast v2, Lcom/im/freechat/data/sources/api/entities/dns/DnsResponse;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_6

    .line 5
    :cond_3
    :try_start_7
    iget-object v5, v0, Lcom/im/freechat/data/c;->a:Lcom/im/freechat/data/sources/api/RemoteApi;

    iput-object v0, v3, Lcom/im/freechat/data/c$c;->a:Ljava/lang/Object;

    iput v1, v3, Lcom/im/freechat/data/c$c;->d:I

    iput v2, v3, Lcom/im/freechat/data/c$c;->g:I

    invoke-static {v5, v11, v3, v10, v11}, Lcom/im/freechat/data/sources/api/RemoteApi$DefaultImpls;->getApiDns4$default(Lcom/im/freechat/data/sources/api/RemoteApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    if-ne v2, v4, :cond_4

    return-object v4

    :cond_4
    move-object v5, v0

    :goto_2
    :try_start_8
    check-cast v2, Lcom/im/freechat/data/sources/api/entities/dns/DnsResponse;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_6

    .line 6
    :cond_5
    :try_start_9
    iget-object v5, v0, Lcom/im/freechat/data/c;->a:Lcom/im/freechat/data/sources/api/RemoteApi;

    iput-object v0, v3, Lcom/im/freechat/data/c$c;->a:Ljava/lang/Object;

    iput v1, v3, Lcom/im/freechat/data/c$c;->d:I

    iput v2, v3, Lcom/im/freechat/data/c$c;->g:I

    invoke-static {v5, v11, v3, v10, v11}, Lcom/im/freechat/data/sources/api/RemoteApi$DefaultImpls;->getApiDns3$default(Lcom/im/freechat/data/sources/api/RemoteApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    if-ne v2, v4, :cond_6

    return-object v4

    :cond_6
    move-object v5, v0

    :goto_3
    :try_start_a
    check-cast v2, Lcom/im/freechat/data/sources/api/entities/dns/DnsResponse;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_6

    .line 7
    :cond_7
    :try_start_b
    iget-object v2, v0, Lcom/im/freechat/data/c;->a:Lcom/im/freechat/data/sources/api/RemoteApi;

    iput-object v0, v3, Lcom/im/freechat/data/c$c;->a:Ljava/lang/Object;

    iput v1, v3, Lcom/im/freechat/data/c$c;->d:I

    iput v8, v3, Lcom/im/freechat/data/c$c;->g:I

    invoke-static {v2, v11, v3, v10, v11}, Lcom/im/freechat/data/sources/api/RemoteApi$DefaultImpls;->getApiDns2$default(Lcom/im/freechat/data/sources/api/RemoteApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    if-ne v2, v4, :cond_8

    return-object v4

    :cond_8
    move-object v5, v0

    :goto_4
    :try_start_c
    check-cast v2, Lcom/im/freechat/data/sources/api/entities/dns/DnsResponse;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_6

    .line 8
    :cond_9
    :try_start_d
    iget-object v2, v0, Lcom/im/freechat/data/c;->a:Lcom/im/freechat/data/sources/api/RemoteApi;

    iput-object v0, v3, Lcom/im/freechat/data/c$c;->a:Ljava/lang/Object;

    iput v1, v3, Lcom/im/freechat/data/c$c;->d:I

    iput v10, v3, Lcom/im/freechat/data/c$c;->g:I

    invoke-static {v2, v11, v3, v10, v11}, Lcom/im/freechat/data/sources/api/RemoteApi$DefaultImpls;->getApiDns1$default(Lcom/im/freechat/data/sources/api/RemoteApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    if-ne v2, v4, :cond_a

    return-object v4

    :cond_a
    move-object v5, v0

    :goto_5
    :try_start_e
    check-cast v2, Lcom/im/freechat/data/sources/api/entities/dns/DnsResponse;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_6

    :catch_0
    move-object v5, v0

    :catch_1
    move-object v2, v11

    :goto_6
    if-eqz v2, :cond_b

    .line 9
    invoke-virtual {v2}, Lcom/im/freechat/data/sources/api/entities/dns/DnsResponse;->getAnswerList()Ljava/util/List;

    move-result-object v2

    goto :goto_7

    :cond_b
    move-object v2, v11

    :goto_7
    if-eqz v2, :cond_d

    .line 10
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_c

    goto :goto_8

    :cond_c
    const/4 v12, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v12, 0x1

    :goto_9
    if-eqz v12, :cond_f

    .line 11
    sget-object v2, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " failed"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/2addr v1, v10

    .line 12
    iput-object v11, v3, Lcom/im/freechat/data/c$c;->a:Ljava/lang/Object;

    const/4 v2, 0x6

    iput v2, v3, Lcom/im/freechat/data/c$c;->g:I

    invoke-direct {v5, v1, v3}, Lcom/im/freechat/data/c;->i(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_e

    return-object v4

    :cond_e
    :goto_a
    return-object v2

    .line 13
    :cond_f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v12, v2

    move-object v13, v5

    :cond_10
    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/im/freechat/data/sources/api/entities/dns/DnsAnswerResponse;

    .line 14
    invoke-virtual {v2}, Lcom/im/freechat/data/sources/api/entities/dns/DnsAnswerResponse;->getType()I

    move-result v5

    const/16 v14, 0x21

    if-ne v5, v14, :cond_10

    .line 15
    invoke-virtual {v2}, Lcom/im/freechat/data/sources/api/entities/dns/DnsAnswerResponse;->getData()Ljava/lang/String;

    move-result-object v15

    const-string v2, " "

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x6

    const/16 v20, 0x0

    invoke-static/range {v15 .. v20}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "."

    .line 16
    invoke-static {v2, v5, v9, v8, v11}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 17
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v10

    invoke-virtual {v2, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v5, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_11
    move-object v5, v2

    .line 18
    sget-object v2, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Host resolved: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-array v15, v9, [Ljava/lang/Object;

    invoke-virtual {v2, v14, v15}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    iput-object v13, v3, Lcom/im/freechat/data/c$c;->a:Ljava/lang/Object;

    iput-object v12, v3, Lcom/im/freechat/data/c$c;->b:Ljava/lang/Object;

    iput-object v5, v3, Lcom/im/freechat/data/c$c;->c:Ljava/lang/Object;

    iput v1, v3, Lcom/im/freechat/data/c$c;->d:I

    const/4 v2, 0x7

    iput v2, v3, Lcom/im/freechat/data/c$c;->g:I

    invoke-direct {v13, v5, v3}, Lcom/im/freechat/data/c;->h(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_12

    return-object v4

    :cond_12
    :goto_c
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v14, "Host "

    if-eqz v2, :cond_13

    .line 20
    sget-object v1, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is reachable, setting..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    .line 21
    :cond_13
    sget-object v2, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is unreachable, proceeding next with answer"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v14, v9, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v14}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 22
    :cond_14
    sget-object v2, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " failed, answer is wrong type or null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-ge v1, v7, :cond_16

    add-int/2addr v1, v10

    .line 23
    iput-object v11, v3, Lcom/im/freechat/data/c$c;->a:Ljava/lang/Object;

    iput-object v11, v3, Lcom/im/freechat/data/c$c;->b:Ljava/lang/Object;

    iput-object v11, v3, Lcom/im/freechat/data/c$c;->c:Ljava/lang/Object;

    const/16 v2, 0x8

    iput v2, v3, Lcom/im/freechat/data/c$c;->g:I

    invoke-direct {v13, v1, v3}, Lcom/im/freechat/data/c;->i(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_15

    return-object v4

    :cond_15
    :goto_d
    return-object v2

    :cond_16
    return-object v11

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/im/freechat/data/c;->c:Lcom/im/freechat/data/c$a;

    invoke-virtual {v0}, Lcom/im/freechat/data/c$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p1, Lcom/im/freechat/data/c$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/im/freechat/data/c$d;

    iget v1, v0, Lcom/im/freechat/data/c$d;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/c$d;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/c$d;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/c$d;-><init>(Lcom/im/freechat/data/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/im/freechat/data/c$d;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/c$d;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v0, v0, Lcom/im/freechat/data/c$d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/im/freechat/data/c;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v5, "Resolving DOH..."

    invoke-virtual {p1, v5, v2}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iput-object p0, v0, Lcom/im/freechat/data/c$d;->a:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/data/c$d;->d:I

    invoke-direct {p0, v4, v0}, Lcom/im/freechat/data/c;->i(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 6
    sput-object p1, Lcom/im/freechat/data/c;->d:Ljava/lang/String;

    .line 7
    sget-object p1, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DOH resolved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/im/freechat/data/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object p1, v0, Lcom/im/freechat/data/c;->b:Lkotlinx/coroutines/flow/t;

    sget-object v0, Lcom/im/freechat/shared/entities/Resolved;->INSTANCE:Lcom/im/freechat/shared/entities/Resolved;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/t;->setValue(Ljava/lang/Object;)V

    .line 9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 10
    :cond_4
    iget-object p1, v0, Lcom/im/freechat/data/c;->b:Lkotlinx/coroutines/flow/t;

    sget-object v0, Lcom/im/freechat/shared/entities/Failed;->INSTANCE:Lcom/im/freechat/shared/entities/Failed;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/t;->setValue(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "All DoH Answers are unsuccessful. Giving up with error"

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/im/freechat/data/c;->c:Lcom/im/freechat/data/c$a;

    invoke-virtual {v0}, Lcom/im/freechat/data/c$a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lkotlinx/coroutines/flow/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/shared/entities/DnsResolutionState;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/c;->b:Lkotlinx/coroutines/flow/t;

    return-object v0
.end method
