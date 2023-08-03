.class public final Lf2/b;
.super Ljava/lang/Object;
.source "GPHPingbackClient.kt"

# interfaces
.implements Lf2/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0006\u0010\u001a\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u001e\u0012\u0008\u0008\u0002\u0010$\u001a\u00020#\u00a2\u0006\u0004\u0008(\u0010)J\"\u0010\u0008\u001a\u0006\u0012\u0002\u0008\u00030\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0016Jp\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0018\"\u0008\u0008\u0000\u0010\n*\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00112\u0014\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\u00132\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\u00132\u0006\u0010\u0017\u001a\u00020\u0016R\u0017\u0010\u001a\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0017\u0010\u001f\u001a\u00020\u001e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\u0017\u0010$\u001a\u00020#8\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\u00a8\u0006*"
    }
    d2 = {
        "Lf2/b;",
        "Lf2/a;",
        "Lcom/giphy/sdk/analytics/models/Session;",
        "session",
        "Lcom/giphy/sdk/core/network/api/a;",
        "Lcom/giphy/sdk/analytics/network/response/PingbackResponse;",
        "completionHandler",
        "Ljava/util/concurrent/Future;",
        "a",
        "Lcom/giphy/sdk/core/network/response/GenericResponse;",
        "T",
        "Landroid/net/Uri;",
        "serverUrl",
        "",
        "path",
        "Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;",
        "method",
        "Ljava/lang/Class;",
        "responseClass",
        "",
        "queryStrings",
        "headers",
        "Lcom/giphy/sdk/analytics/models/SessionsRequestData;",
        "requestBody",
        "Lcom/giphy/sdk/core/threading/a;",
        "e",
        "apiKey",
        "Ljava/lang/String;",
        "c",
        "()Ljava/lang/String;",
        "Lcom/giphy/sdk/core/network/engine/b;",
        "networkSession",
        "Lcom/giphy/sdk/core/network/engine/b;",
        "d",
        "()Lcom/giphy/sdk/core/network/engine/b;",
        "Lcom/giphy/sdk/analytics/batching/a;",
        "analyticsId",
        "Lcom/giphy/sdk/analytics/batching/a;",
        "b",
        "()Lcom/giphy/sdk/analytics/batching/a;",
        "<init>",
        "(Ljava/lang/String;Lcom/giphy/sdk/core/network/engine/b;Lcom/giphy/sdk/analytics/batching/a;)V",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/giphy/sdk/core/network/engine/b;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lcom/giphy/sdk/analytics/batching/a;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lf2/b;-><init>(Ljava/lang/String;Lcom/giphy/sdk/core/network/engine/b;Lcom/giphy/sdk/analytics/batching/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/giphy/sdk/core/network/engine/b;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/core/network/engine/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lf2/b;-><init>(Ljava/lang/String;Lcom/giphy/sdk/core/network/engine/b;Lcom/giphy/sdk/analytics/batching/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/giphy/sdk/core/network/engine/b;Lcom/giphy/sdk/analytics/batching/a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/core/network/engine/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/giphy/sdk/analytics/batching/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "apiKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkSession"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/b;->b:Ljava/lang/String;

    iput-object p2, p0, Lf2/b;->c:Lcom/giphy/sdk/core/network/engine/b;

    iput-object p3, p0, Lf2/b;->d:Lcom/giphy/sdk/analytics/batching/a;

    const-string p1, "application/json"

    .line 2
    iput-object p1, p0, Lf2/b;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/giphy/sdk/core/network/engine/b;Lcom/giphy/sdk/analytics/batching/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 3
    new-instance p2, Lcom/giphy/sdk/core/network/engine/a;

    invoke-direct {p2}, Lcom/giphy/sdk/core/network/engine/a;-><init>()V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    new-instance p3, Lcom/giphy/sdk/analytics/batching/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/giphy/sdk/analytics/batching/a;-><init>(Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lf2/b;-><init>(Ljava/lang/String;Lcom/giphy/sdk/core/network/engine/b;Lcom/giphy/sdk/analytics/batching/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/giphy/sdk/analytics/models/Session;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;
    .locals 9
    .param p1    # Lcom/giphy/sdk/analytics/models/Session;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/core/network/api/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giphy/sdk/analytics/models/Session;",
            "Lcom/giphy/sdk/core/network/api/a<",
            "-",
            "Lcom/giphy/sdk/analytics/network/response/PingbackResponse;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v1, "session"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "completionHandler"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    .line 1
    sget-object v2, Lcom/giphy/sdk/core/network/api/Constants;->h:Lcom/giphy/sdk/core/network/api/Constants;

    invoke-virtual {v2}, Lcom/giphy/sdk/core/network/api/Constants;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lf2/b;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 2
    invoke-virtual {v2}, Lcom/giphy/sdk/core/network/api/Constants;->e()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Le2/a;->j:Le2/a;

    invoke-virtual {v5}, Le2/a;->i()Lcom/giphy/sdk/analytics/batching/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/giphy/sdk/analytics/batching/b;->o()Lcom/giphy/sdk/analytics/batching/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/giphy/sdk/analytics/batching/a;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v1, v6

    .line 3
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v7

    new-array v1, v6, [Lkotlin/Pair;

    .line 4
    invoke-virtual {v2}, Lcom/giphy/sdk/core/network/api/Constants;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lf2/b;->a:Ljava/lang/String;

    invoke-static {v3, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v5}, Le2/a;->f()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android Pingback "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/giphy/sdk/core/c;->h:Lcom/giphy/sdk/core/c;

    invoke-virtual {v3}, Lcom/giphy/sdk/core/c;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " v"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/giphy/sdk/core/c;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "User-Agent"

    .line 6
    invoke-interface {v6, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v2}, Lcom/giphy/sdk/core/network/api/Constants;->f()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "Constants.PINGBACK_SERVER_URL"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/giphy/sdk/core/network/api/Constants$a;->k:Lcom/giphy/sdk/core/network/api/Constants$a;

    invoke-virtual {v2}, Lcom/giphy/sdk/core/network/api/Constants$a;->f()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;->POST:Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    .line 8
    const-class v4, Lcom/giphy/sdk/analytics/network/response/PingbackResponse;

    new-instance v8, Lcom/giphy/sdk/analytics/models/SessionsRequestData;

    invoke-direct {v8, p1}, Lcom/giphy/sdk/analytics/models/SessionsRequestData;-><init>(Lcom/giphy/sdk/analytics/models/Session;)V

    move-object v0, p0

    move-object v5, v7

    move-object v7, v8

    .line 9
    invoke-virtual/range {v0 .. v7}, Lf2/b;->e(Landroid/net/Uri;Ljava/lang/String;Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;Lcom/giphy/sdk/analytics/models/SessionsRequestData;)Lcom/giphy/sdk/core/threading/a;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p2}, Lcom/giphy/sdk/core/threading/a;->k(Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/giphy/sdk/analytics/batching/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lf2/b;->d:Lcom/giphy/sdk/analytics/batching/a;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lf2/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/giphy/sdk/core/network/engine/b;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lf2/b;->c:Lcom/giphy/sdk/core/network/engine/b;

    return-object v0
.end method

.method public final e(Landroid/net/Uri;Ljava/lang/String;Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;Lcom/giphy/sdk/analytics/models/SessionsRequestData;)Lcom/giphy/sdk/core/threading/a;
    .locals 9
    .param p1    # Landroid/net/Uri;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
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
    .param p7    # Lcom/giphy/sdk/analytics/models/SessionsRequestData;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/giphy/sdk/core/network/response/GenericResponse;",
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
            "Lcom/giphy/sdk/analytics/models/SessionsRequestData;",
            ")",
            "Lcom/giphy/sdk/core/threading/a<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "serverUrl"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseClass"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestBody"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    iget-object v1, v0, Lf2/b;->c:Lcom/giphy/sdk/core/network/engine/b;

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v8}, Lcom/giphy/sdk/core/network/engine/b;->a(Landroid/net/Uri;Ljava/lang/String;Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Lcom/giphy/sdk/core/threading/a;

    move-result-object v1

    return-object v1
.end method
