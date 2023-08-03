.class public final Lcom/giphy/sdk/core/network/engine/a;
.super Ljava/lang/Object;
.source "DefaultNetworkSession.kt"

# interfaces
.implements Lcom/giphy/sdk/core/network/engine/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/core/network/engine/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultNetworkSession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultNetworkSession.kt\ncom/giphy/sdk/core/network/engine/DefaultNetworkSession\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,182:1\n1#2:183\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0000\u0018\u0000  2\u00020\u0001:\u0001\u0018B\t\u0008\u0016\u00a2\u0006\u0004\u0008%\u0010&B\u0019\u0008\u0016\u0012\u0006\u0010\"\u001a\u00020\u0019\u0012\u0006\u0010$\u001a\u00020\u001c\u00a2\u0006\u0004\u0008%\u0010\'J5\u0010\t\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u00022\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJh\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00072\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\u00112\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\u0011H\u0016Jr\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00072\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\u00112\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\u00112\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\"\u001a\u00020\u00198VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0014\u0010$\u001a\u00020\u001c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010#\u00a8\u0006("
    }
    d2 = {
        "Lcom/giphy/sdk/core/network/engine/a;",
        "Lcom/giphy/sdk/core/network/engine/b;",
        "T",
        "Ljava/net/URL;",
        "url",
        "Ljava/net/HttpURLConnection;",
        "connection",
        "Ljava/lang/Class;",
        "responseClass",
        "g",
        "(Ljava/net/URL;Ljava/net/HttpURLConnection;Ljava/lang/Class;)Ljava/lang/Object;",
        "Landroid/net/Uri;",
        "serverUrl",
        "",
        "path",
        "Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;",
        "method",
        "",
        "queryStrings",
        "headers",
        "Lcom/giphy/sdk/core/threading/a;",
        "c",
        "",
        "requestBody",
        "a",
        "Ljava/util/concurrent/ExecutorService;",
        "Ljava/util/concurrent/ExecutorService;",
        "networkRequestExecutor1",
        "Ljava/util/concurrent/Executor;",
        "b",
        "Ljava/util/concurrent/Executor;",
        "completionExecutor1",
        "d",
        "()Ljava/util/concurrent/ExecutorService;",
        "networkRequestExecutor",
        "()Ljava/util/concurrent/Executor;",
        "completionExecutor",
        "<init>",
        "()V",
        "(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final c:Lcom/google/gson/Gson;

.field public static final d:Lcom/giphy/sdk/core/network/engine/a$a;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/giphy/sdk/core/network/engine/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/giphy/sdk/core/network/engine/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/giphy/sdk/core/network/engine/a;->d:Lcom/giphy/sdk/core/network/engine/a$a;

    .line 1
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Ljava/util/Date;

    new-instance v2, Lcom/giphy/sdk/core/models/json/DateDeserializer;

    invoke-direct {v2}, Lcom/giphy/sdk/core/models/json/DateDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 2
    const-class v1, Ljava/util/Date;

    new-instance v2, Lcom/giphy/sdk/core/models/json/DateSerializer;

    invoke-direct {v2}, Lcom/giphy/sdk/core/models/json/DateSerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/giphy/sdk/core/models/json/BooleanDeserializer;

    invoke-direct {v2}, Lcom/giphy/sdk/core/models/json/BooleanDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 4
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/giphy/sdk/core/models/json/IntDeserializer;

    invoke-direct {v2}, Lcom/giphy/sdk/core/models/json/IntDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/giphy/sdk/core/models/json/MainAdapterFactory;

    invoke-direct {v1}, Lcom/giphy/sdk/core/models/json/MainAdapterFactory;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/giphy/sdk/core/network/engine/a;->c:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/giphy/sdk/core/threading/a;->j:Lcom/giphy/sdk/core/threading/a$a;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/threading/a$a;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/giphy/sdk/core/network/engine/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    invoke-virtual {v0}, Lcom/giphy/sdk/core/threading/a$a;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/giphy/sdk/core/network/engine/a;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/ExecutorService;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "networkRequestExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/core/network/engine/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 4
    iput-object p2, p0, Lcom/giphy/sdk/core/network/engine/a;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static final synthetic e()Lcom/google/gson/Gson;
    .locals 1

    sget-object v0, Lcom/giphy/sdk/core/network/engine/a;->c:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static final synthetic f(Lcom/giphy/sdk/core/network/engine/a;Ljava/net/URL;Ljava/net/HttpURLConnection;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/giphy/sdk/core/network/engine/a;->g(Ljava/net/URL;Ljava/net/HttpURLConnection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final g(Ljava/net/URL;Ljava/net/HttpURLConnection;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/giphy/sdk/core/network/engine/ApiException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-eq v6, v1, :cond_1

    const/16 v1, 0xc9

    if-eq v6, v1, :cond_1

    const/16 v1, 0xca

    if-ne v6, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 2
    :goto_1
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    const-string v3, "connection.inputStream"

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    const-string v3, "connection.errorStream"

    :goto_2
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Content-Encoding"

    .line 4
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/util/List;

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Thread.currentThread()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "gzip"

    .line 7
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_3

    :cond_3
    const-string v3, "br"

    .line 9
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 10
    new-instance v2, Lorg/brotli/dec/b;

    invoke-direct {v2, p2}, Lorg/brotli/dec/b;-><init>(Ljava/io/InputStream;)V

    :goto_3
    move-object p2, v2

    goto :goto_4

    .line 11
    :cond_4
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 12
    :cond_5
    :goto_4
    :try_start_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p2, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 v2, 0x2000

    instance-of v4, v3, Ljava/io/BufferedReader;

    if-eqz v4, :cond_6

    check-cast v3, Ljava/io/BufferedReader;

    goto :goto_5

    :cond_6
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v4

    :goto_5
    invoke-static {v3}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    invoke-static {p2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/4 p2, 0x2

    const-string v4, "{"

    if-eqz v1, :cond_9

    .line 13
    const-class p1, Ljava/lang/String;

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object v2

    .line 14
    :cond_7
    :try_start_1
    invoke-static {v2, v4, v0, p2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string v2, "{}"

    .line 15
    :cond_8
    sget-object p1, Lcom/giphy/sdk/core/network/engine/a;->c:Lcom/google/gson/Gson;

    invoke-virtual {p1, v2, p3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/gson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 16
    :catch_0
    invoke-virtual {p3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :cond_9
    :try_start_2
    invoke-static {v2, v4, v0, p2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "{\"error\": \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\"}"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Lcom/google/gson/JsonParseException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_a
    move-object p2, v2

    .line 19
    :try_start_3
    sget-object p3, Lcom/giphy/sdk/core/network/engine/a;->c:Lcom/google/gson/Gson;

    const-class v0, Lcom/giphy/sdk/core/network/response/ErrorResponse;

    invoke-virtual {p3, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/giphy/sdk/core/network/response/ErrorResponse;

    .line 20
    invoke-virtual {p3}, Lcom/giphy/sdk/core/network/response/ErrorResponse;->getMeta()Lcom/giphy/sdk/core/models/Meta;

    move-result-object v0

    if-nez v0, :cond_b

    .line 21
    new-instance v7, Lcom/giphy/sdk/core/models/Meta;

    invoke-virtual {p3}, Lcom/giphy/sdk/core/network/response/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v7

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/giphy/sdk/core/models/Meta;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p3, v7}, Lcom/giphy/sdk/core/network/response/ErrorResponse;->setMeta(Lcom/giphy/sdk/core/models/Meta;)V

    .line 22
    :cond_b
    new-instance v0, Lcom/giphy/sdk/core/network/engine/ApiException;

    const-string v1, "errorResponse"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p3}, Lcom/giphy/sdk/core/network/engine/ApiException;-><init>(Lcom/giphy/sdk/core/network/response/ErrorResponse;)V

    throw v0
    :try_end_3
    .catch Lcom/google/gson/JsonParseException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p3

    move-object v2, p2

    move-object p2, p3

    goto :goto_6

    :catch_2
    move-exception p2

    .line 23
    :goto_6
    new-instance p3, Lcom/giphy/sdk/core/network/engine/ApiException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse server error response : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/giphy/sdk/core/network/response/ErrorResponse;

    invoke-direct {p2, v6, v2}, Lcom/giphy/sdk/core/network/response/ErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-direct {p3, p1, p2}, Lcom/giphy/sdk/core/network/engine/ApiException;-><init>(Ljava/lang/String;Lcom/giphy/sdk/core/network/response/ErrorResponse;)V

    throw p3

    :catchall_0
    move-exception p1

    .line 24
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p3

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/lang/String;Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Lcom/giphy/sdk/core/threading/a;
    .locals 11
    .param p1    # Landroid/net/Uri;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Class;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/giphy/sdk/core/threading/a<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "serverUrl"

    move-object v3, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    move-object v6, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseClass"

    move-object v9, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/giphy/sdk/core/threading/a;

    new-instance v10, Lcom/giphy/sdk/core/network/engine/a$b;

    move-object v1, v10

    move-object v2, p0

    move-object v4, p2

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/giphy/sdk/core/network/engine/a$b;-><init>(Lcom/giphy/sdk/core/network/engine/a;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0}, Lcom/giphy/sdk/core/network/engine/a;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/giphy/sdk/core/network/engine/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 3
    invoke-direct {v0, v10, v1, v2}, Lcom/giphy/sdk/core/threading/a;-><init>(Ljava/util/concurrent/Callable;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public b()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/network/engine/a;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public c(Landroid/net/Uri;Ljava/lang/String;Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;)Lcom/giphy/sdk/core/threading/a;
    .locals 9
    .param p1    # Landroid/net/Uri;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Class;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/giphy/sdk/core/threading/a<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "serverUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseClass"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/giphy/sdk/core/network/engine/a;->a(Landroid/net/Uri;Ljava/lang/String;Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Lcom/giphy/sdk/core/threading/a;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/network/engine/a;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
