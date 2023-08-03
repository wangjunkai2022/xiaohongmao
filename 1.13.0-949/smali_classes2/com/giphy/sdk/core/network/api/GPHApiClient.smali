.class public final Lcom/giphy/sdk/core/network/api/GPHApiClient;
.super Ljava/lang/Object;
.source "GPHApiClient.kt"

# interfaces
.implements Lcom/giphy/sdk/core/network/api/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;,
        Lcom/giphy/sdk/core/network/api/GPHApiClient$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGPHApiClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GPHApiClient.kt\ncom/giphy/sdk/core/network/api/GPHApiClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,267:1\n1#2:268\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 \u00142\u00020\u0001:\u0002\"CB%\u0008\u0007\u0012\u0006\u00106\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010;\u001a\u000207\u0012\u0008\u0008\u0002\u0010@\u001a\u00020<\u00a2\u0006\u0004\u0008A\u0010BJ\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J[\u0010\u0012\u001a\u0006\u0012\u0002\u0008\u00030\u00112\u0006\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013JI\u0010\u0014\u001a\u0006\u0012\u0002\u0008\u00030\u00112\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001a\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u00112\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u000eH\u0016J2\u0010\u0019\u001a\u0006\u0012\u0002\u0008\u00030\u00112\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u000eH\u0016J6\u0010\u001c\u001a\u0006\u0012\u0002\u0008\u00030\u00112\u0006\u0010\u001a\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u000eH\u0016J\"\u0010\u001e\u001a\u0006\u0012\u0002\u0008\u00030\u00112\u0006\u0010\u001d\u001a\u00020\u00042\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u000eH\u0016J2\u0010\"\u001a\u0006\u0012\u0002\u0008\u00030\u00112\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0008\u0010!\u001a\u0004\u0018\u00010\u0004H\u0016JN\u0010.\u001a\u0008\u0012\u0004\u0012\u00028\u00000-\"\u0004\u0008\u0000\u0010#2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\'2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00028\u00000)2\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010+J5\u0010/\u001a\u0006\u0012\u0002\u0008\u00030\u00112\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u00072\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016\u00a2\u0006\u0004\u0008/\u00100J,\u00102\u001a\u0006\u0012\u0002\u0008\u00030\u00112\u0006\u00101\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016R\u0017\u00106\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u00103\u001a\u0004\u00084\u00105R\u0017\u0010;\u001a\u0002078\u0006\u00a2\u0006\u000c\n\u0004\u0008/\u00108\u001a\u0004\u00089\u0010:R\u0017\u0010@\u001a\u00020<8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010=\u001a\u0004\u0008>\u0010?\u00a8\u0006D"
    }
    d2 = {
        "Lcom/giphy/sdk/core/network/api/GPHApiClient;",
        "Lcom/giphy/sdk/core/network/api/b;",
        "Lcom/giphy/sdk/core/models/enums/MediaType;",
        "type",
        "",
        "m",
        "searchQuery",
        "",
        "limit",
        "offset",
        "Lcom/giphy/sdk/core/models/enums/RatingType;",
        "rating",
        "Lcom/giphy/sdk/core/models/enums/LangType;",
        "lang",
        "Lcom/giphy/sdk/core/network/api/a;",
        "Lcom/giphy/sdk/core/network/response/ListMediaResponse;",
        "completionHandler",
        "Ljava/util/concurrent/Future;",
        "d",
        "(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/models/enums/LangType;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;",
        "e",
        "(Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;",
        "Lcom/giphy/sdk/core/network/response/TrendingSearchesResponse;",
        "i",
        "Lcom/giphy/sdk/core/network/response/ChannelsSearchResponse;",
        "c",
        "tag",
        "Lcom/giphy/sdk/core/network/response/MediaResponse;",
        "f",
        "gifId",
        "h",
        "",
        "gifIds",
        "context",
        "a",
        "T",
        "Landroid/net/Uri;",
        "serverUrl",
        "path",
        "Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;",
        "method",
        "Ljava/lang/Class;",
        "responseClass",
        "",
        "queryStrings",
        "Lcom/giphy/sdk/core/threading/a;",
        "n",
        "b",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;",
        "query",
        "g",
        "Ljava/lang/String;",
        "k",
        "()Ljava/lang/String;",
        "apiKey",
        "Lcom/giphy/sdk/core/network/engine/b;",
        "Lcom/giphy/sdk/core/network/engine/b;",
        "l",
        "()Lcom/giphy/sdk/core/network/engine/b;",
        "networkSession",
        "Lcom/giphy/sdk/analytics/batching/a;",
        "Lcom/giphy/sdk/analytics/batching/a;",
        "j",
        "()Lcom/giphy/sdk/analytics/batching/a;",
        "analyticsId",
        "<init>",
        "(Ljava/lang/String;Lcom/giphy/sdk/core/network/engine/b;Lcom/giphy/sdk/analytics/batching/a;)V",
        "HTTPMethod",
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
.field public static final d:Ljava/lang/String; = "api_key"
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final e:Lcom/giphy/sdk/core/network/api/GPHApiClient$a;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/giphy/sdk/core/network/engine/b;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/giphy/sdk/analytics/batching/a;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/giphy/sdk/core/network/api/GPHApiClient$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/giphy/sdk/core/network/api/GPHApiClient$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/giphy/sdk/core/network/api/GPHApiClient;->e:Lcom/giphy/sdk/core/network/api/GPHApiClient$a;

    return-void
.end method

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

    invoke-direct/range {v0 .. v5}, Lcom/giphy/sdk/core/network/api/GPHApiClient;-><init>(Ljava/lang/String;Lcom/giphy/sdk/core/network/engine/b;Lcom/giphy/sdk/analytics/batching/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/giphy/sdk/core/network/api/GPHApiClient;-><init>(Ljava/lang/String;Lcom/giphy/sdk/core/network/engine/b;Lcom/giphy/sdk/analytics/batching/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    iput-object p1, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient;->b:Lcom/giphy/sdk/core/network/engine/b;

    iput-object p3, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient;->c:Lcom/giphy/sdk/analytics/batching/a;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/giphy/sdk/core/network/engine/b;Lcom/giphy/sdk/analytics/batching/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 2
    new-instance p2, Lcom/giphy/sdk/core/network/engine/a;

    invoke-direct {p2}, Lcom/giphy/sdk/core/network/engine/a;-><init>()V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 3
    new-instance p3, Lcom/giphy/sdk/analytics/batching/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/giphy/sdk/analytics/batching/a;-><init>(Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/giphy/sdk/core/network/api/GPHApiClient;-><init>(Ljava/lang/String;Lcom/giphy/sdk/core/network/engine/b;Lcom/giphy/sdk/analytics/batching/a;)V

    return-void
.end method

.method private final m(Lcom/giphy/sdk/core/models/enums/MediaType;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/giphy/sdk/core/models/enums/MediaType;->sticker:Lcom/giphy/sdk/core/models/enums/MediaType;

    if-ne p1, v0, :cond_0

    const-string p1, "stickers"

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/giphy/sdk/core/models/enums/MediaType;->text:Lcom/giphy/sdk/core/models/enums/MediaType;

    if-ne p1, v0, :cond_1

    const-string p1, "text"

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcom/giphy/sdk/core/models/enums/MediaType;->video:Lcom/giphy/sdk/core/models/enums/MediaType;

    if-ne p1, v0, :cond_2

    const-string p1, "videos"

    goto :goto_0

    :cond_2
    const-string p1, "gifs"

    :goto_0
    return-object p1
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/giphy/sdk/core/network/api/a;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/core/network/api/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/giphy/sdk/core/network/api/a<",
            "-",
            "Lcom/giphy/sdk/core/network/response/ListMediaResponse;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "gifIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/Pair;

    .line 1
    iget-object v2, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient;->a:Ljava/lang/String;

    const-string v3, "api_key"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v9

    if-eqz p3, :cond_0

    const-string v1, "context"

    .line 2
    invoke-interface {v9, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_0
    if-ge v3, v1, :cond_3

    .line 5
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object p1, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient;->b:Lcom/giphy/sdk/core/network/engine/b;

    invoke-interface {p1}, Lcom/giphy/sdk/core/network/engine/b;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p3, Lcom/giphy/sdk/core/network/api/GPHApiClient$c;

    invoke-direct {p3, p0, p2}, Lcom/giphy/sdk/core/network/api/GPHApiClient$c;-><init>(Lcom/giphy/sdk/core/network/api/GPHApiClient;Lcom/giphy/sdk/core/network/api/a;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const-string p2, "networkSession.networkRe\u2026      }\n                }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 7
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v3, v2, :cond_2

    const-string v2, ","

    .line 9
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "str.toString()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "ids"

    invoke-interface {v9, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object p1, Lcom/giphy/sdk/core/network/api/Constants;->h:Lcom/giphy/sdk/core/network/api/Constants;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/network/api/Constants;->g()Landroid/net/Uri;

    move-result-object v5

    .line 12
    sget-object p1, Lcom/giphy/sdk/core/network/api/Constants$a;->k:Lcom/giphy/sdk/core/network/api/Constants$a;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/network/api/Constants$a;->e()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;->GET:Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    const-class v8, Lcom/giphy/sdk/core/network/response/ListMediaResponse;

    move-object v4, p0

    .line 13
    invoke-virtual/range {v4 .. v9}, Lcom/giphy/sdk/core/network/api/GPHApiClient;->n(Landroid/net/Uri;Ljava/lang/String;Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;Ljava/lang/Class;Ljava/util/Map;)Lcom/giphy/sdk/core/threading/a;

    move-result-object p1

    .line 14
    invoke-virtual {p1, p2}, Lcom/giphy/sdk/core/threading/a;->k(Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;
    .locals 10
    .param p1    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/giphy/sdk/core/network/api/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/giphy/sdk/core/network/api/a<",
            "-",
            "Lcom/giphy/sdk/core/network/response/ListMediaResponse;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "completionHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/Pair;

    .line 1
    iget-object v2, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient;->a:Ljava/lang/String;

    const-string v3, "api_key"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v9

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "limit"

    invoke-interface {v9, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "offset"

    invoke-interface {v9, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_1
    sget-object p1, Lcom/giphy/sdk/core/network/api/Constants;->h:Lcom/giphy/sdk/core/network/api/Constants;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/network/api/Constants;->g()Landroid/net/Uri;

    move-result-object v5

    .line 5
    sget-object p1, Lcom/giphy/sdk/core/network/api/Constants$a;->k:Lcom/giphy/sdk/core/network/api/Constants$a;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/network/api/Constants$a;->c()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;->GET:Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    .line 6
    const-class v8, Lcom/giphy/sdk/core/network/response/ListMediaResponse;

    move-object v4, p0

    .line 7
    invoke-virtual/range {v4 .. v9}, Lcom/giphy/sdk/core/network/api/GPHApiClient;->n(Landroid/net/Uri;Ljava/lang/String;Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;Ljava/lang/Class;Ljava/util/Map;)Lcom/giphy/sdk/core/threading/a;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v1, 0x0

    .line 8
    invoke-static {p3, v0, v3, p2, v1}, Lcom/giphy/sdk/tracking/a;->b(Lcom/giphy/sdk/core/network/api/a;ZZILjava/lang/Object;)Lcom/giphy/sdk/core/network/api/a;

    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Lcom/giphy/sdk/core/threading/a;->k(Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;IILcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/giphy/sdk/core/network/api/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/giphy/sdk/core/network/api/a<",
            "-",
            "Lcom/giphy/sdk/core/network/response/ChannelsSearchResponse;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "searchQuery"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    .line 1
    iget-object v1, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient;->a:Ljava/lang/String;

    const-string v2, "api_key"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "q"

    .line 2
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 3
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v7

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "limit"

    invoke-interface {v7, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "offset"

    invoke-interface {v7, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Lcom/giphy/sdk/core/network/api/Constants;->h:Lcom/giphy/sdk/core/network/api/Constants;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/network/api/Constants;->g()Landroid/net/Uri;

    move-result-object v3

    sget-object p1, Lcom/giphy/sdk/core/network/api/Constants$a;->k:Lcom/giphy/sdk/core/network/api/Constants$a;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/network/api/Constants$a;->b()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;->GET:Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    .line 7
    const-class v6, Lcom/giphy/sdk/core/network/response/ChannelsSearchResponse;

    move-object v2, p0

    .line 8
    invoke-virtual/range {v2 .. v7}, Lcom/giphy/sdk/core/network/api/GPHApiClient;->n(Landroid/net/Uri;Ljava/lang/String;Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;Ljava/lang/Class;Ljava/util/Map;)Lcom/giphy/sdk/core/threading/a;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p4}, Lcom/giphy/sdk/core/threading/a;->k(Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/models/enums/LangType;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/core/models/enums/MediaType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lcom/giphy/sdk/core/models/enums/RatingType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Lcom/giphy/sdk/core/models/enums/LangType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Lcom/giphy/sdk/core/network/api/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/giphy/sdk/core/models/enums/MediaType;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/giphy/sdk/core/models/enums/RatingType;",
            "Lcom/giphy/sdk/core/models/enums/LangType;",
            "Lcom/giphy/sdk/core/network/api/a<",
            "-",
            "Lcom/giphy/sdk/core/network/response/ListMediaResponse;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    move-object v6, p0

    move-object v0, p1

    move-object v7, p2

    move-object/from16 v8, p7

    const-string v1, "searchQuery"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "completionHandler"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/Pair;

    .line 1
    iget-object v2, v6, Lcom/giphy/sdk/core/network/api/GPHApiClient;->a:Ljava/lang/String;

    const-string v3, "api_key"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v1, v9

    const-string v2, "q"

    .line 2
    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v10, 0x1

    aput-object v0, v1, v10

    .line 3
    sget-object v0, Le2/a;->j:Le2/a;

    invoke-virtual {v0}, Le2/a;->i()Lcom/giphy/sdk/analytics/batching/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/giphy/sdk/analytics/batching/b;->o()Lcom/giphy/sdk/analytics/batching/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/giphy/sdk/analytics/batching/a;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pingback_id"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 4
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v5

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "limit"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p4, :cond_1

    .line 6
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "offset"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "rating"

    if-eqz p5, :cond_2

    .line 7
    invoke-virtual/range {p5 .. p5}, Lcom/giphy/sdk/core/models/enums/RatingType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_2
    sget-object v1, Lcom/giphy/sdk/core/models/enums/RatingType;->pg13:Lcom/giphy/sdk/core/models/enums/RatingType;

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/enums/RatingType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz p6, :cond_3

    .line 9
    invoke-virtual/range {p6 .. p6}, Lcom/giphy/sdk/core/models/enums/LangType;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lang"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_3
    sget-object v0, Lcom/giphy/sdk/core/network/api/Constants;->h:Lcom/giphy/sdk/core/network/api/Constants;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/network/api/Constants;->g()Landroid/net/Uri;

    move-result-object v1

    .line 11
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Lcom/giphy/sdk/core/network/api/Constants$a;->k:Lcom/giphy/sdk/core/network/api/Constants$a;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/network/api/Constants$a;->h()Ljava/lang/String;

    move-result-object v0

    new-array v2, v10, [Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/giphy/sdk/core/network/api/GPHApiClient;->m(Lcom/giphy/sdk/core/models/enums/MediaType;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;->GET:Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    .line 12
    const-class v4, Lcom/giphy/sdk/core/network/response/ListMediaResponse;

    move-object v0, p0

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/giphy/sdk/core/network/api/GPHApiClient;->n(Landroid/net/Uri;Ljava/lang/String;Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;Ljava/lang/Class;Ljava/util/Map;)Lcom/giphy/sdk/core/threading/a;

    move-result-object v0

    .line 14
    sget-object v1, Lcom/giphy/sdk/core/models/enums/MediaType;->text:Lcom/giphy/sdk/core/models/enums/MediaType;

    if-ne v7, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    .line 15
    invoke-static {v8, v9, v1, v10, v2}, Lcom/giphy/sdk/tracking/a;->b(Lcom/giphy/sdk/core/network/api/a;ZZILjava/lang/Object;)Lcom/giphy/sdk/core/network/api/a;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/threading/a;->k(Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;
    .locals 10
    .param p1    # Lcom/giphy/sdk/core/models/enums/MediaType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lcom/giphy/sdk/core/models/enums/RatingType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lcom/giphy/sdk/core/network/api/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giphy/sdk/core/models/enums/MediaType;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/giphy/sdk/core/models/enums/RatingType;",
            "Lcom/giphy/sdk/core/network/api/a<",
            "-",
            "Lcom/giphy/sdk/core/network/response/ListMediaResponse;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "completionHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    .line 1
    iget-object v1, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient;->a:Ljava/lang/String;

    const-string v2, "api_key"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    sget-object v1, Le2/a;->j:Le2/a;

    invoke-virtual {v1}, Le2/a;->i()Lcom/giphy/sdk/analytics/batching/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/giphy/sdk/analytics/batching/b;->o()Lcom/giphy/sdk/analytics/batching/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/giphy/sdk/analytics/batching/a;->d()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pingback_id"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 3
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v9

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "limit"

    invoke-interface {v9, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "offset"

    invoke-interface {v9, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p2, "rating"

    if-eqz p4, :cond_2

    .line 6
    invoke-virtual {p4}, Lcom/giphy/sdk/core/models/enums/RatingType;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v9, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_2
    sget-object p3, Lcom/giphy/sdk/core/models/enums/RatingType;->pg13:Lcom/giphy/sdk/core/models/enums/RatingType;

    invoke-virtual {p3}, Lcom/giphy/sdk/core/models/enums/RatingType;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v9, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :goto_0
    sget-object p2, Lcom/giphy/sdk/core/network/api/Constants;->h:Lcom/giphy/sdk/core/network/api/Constants;

    invoke-virtual {p2}, Lcom/giphy/sdk/core/network/api/Constants;->g()Landroid/net/Uri;

    move-result-object v5

    .line 9
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p2, Lcom/giphy/sdk/core/network/api/Constants$a;->k:Lcom/giphy/sdk/core/network/api/Constants$a;

    invoke-virtual {p2}, Lcom/giphy/sdk/core/network/api/Constants$a;->i()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/giphy/sdk/core/network/api/GPHApiClient;->m(Lcom/giphy/sdk/core/models/enums/MediaType;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v2

    invoke-static {p3, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;->GET:Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    .line 10
    const-class v8, Lcom/giphy/sdk/core/network/response/ListMediaResponse;

    move-object v4, p0

    .line 11
    invoke-virtual/range {v4 .. v9}, Lcom/giphy/sdk/core/network/api/GPHApiClient;->n(Landroid/net/Uri;Ljava/lang/String;Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;Ljava/lang/Class;Ljava/util/Map;)Lcom/giphy/sdk/core/threading/a;

    move-result-object p2

    .line 12
    sget-object p3, Lcom/giphy/sdk/core/models/enums/MediaType;->text:Lcom/giphy/sdk/core/models/enums/MediaType;

    if-ne p1, p3, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    const/4 p3, 0x0

    .line 13
    invoke-static {p5, v2, p1, v3, p3}, Lcom/giphy/sdk/tracking/a;->b(Lcom/giphy/sdk/core/network/api/a;ZZILjava/lang/Object;)Lcom/giphy/sdk/core/network/api/a;

    move-result-object p1

    .line 14
    invoke-virtual {p2, p1}, Lcom/giphy/sdk/core/threading/a;->k(Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Lcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/core/models/enums/MediaType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/giphy/sdk/core/models/enums/RatingType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lcom/giphy/sdk/core/network/api/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/giphy/sdk/core/models/enums/MediaType;",
            "Lcom/giphy/sdk/core/models/enums/RatingType;",
            "Lcom/giphy/sdk/core/network/api/a<",
            "-",
            "Lcom/giphy/sdk/core/network/response/MediaResponse;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "completionHandler"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    .line 1
    iget-object v2, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient;->a:Ljava/lang/String;

    const-string v3, "api_key"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v1, v0

    .line 3
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v9

    const-string p1, "rating"

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p3}, Lcom/giphy/sdk/core/models/enums/RatingType;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v9, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    sget-object p3, Lcom/giphy/sdk/core/models/enums/RatingType;->pg13:Lcom/giphy/sdk/core/models/enums/RatingType;

    invoke-virtual {p3}, Lcom/giphy/sdk/core/models/enums/RatingType;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v9, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :goto_0
    new-instance p1, Lcom/giphy/sdk/core/network/api/GPHApiClient$e;

    invoke-direct {p1, p4}, Lcom/giphy/sdk/core/network/api/GPHApiClient$e;-><init>(Lcom/giphy/sdk/core/network/api/a;)V

    .line 7
    sget-object p3, Lcom/giphy/sdk/core/network/api/Constants;->h:Lcom/giphy/sdk/core/network/api/Constants;

    invoke-virtual {p3}, Lcom/giphy/sdk/core/network/api/Constants;->g()Landroid/net/Uri;

    move-result-object v5

    .line 8
    sget-object p3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p3, Lcom/giphy/sdk/core/network/api/Constants$a;->k:Lcom/giphy/sdk/core/network/api/Constants$a;

    invoke-virtual {p3}, Lcom/giphy/sdk/core/network/api/Constants$a;->g()Ljava/lang/String;

    move-result-object p3

    new-array p4, v0, [Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/giphy/sdk/core/network/api/GPHApiClient;->m(Lcom/giphy/sdk/core/models/enums/MediaType;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, v3

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;->GET:Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    .line 9
    const-class v8, Lcom/giphy/sdk/core/network/response/RandomGifResponse;

    move-object v4, p0

    .line 10
    invoke-virtual/range {v4 .. v9}, Lcom/giphy/sdk/core/network/api/GPHApiClient;->n(Landroid/net/Uri;Ljava/lang/String;Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;Ljava/lang/Class;Ljava/util/Map;)Lcom/giphy/sdk/core/threading/a;

    move-result-object p2

    .line 11
    invoke-virtual {p2, p1}, Lcom/giphy/sdk/core/threading/a;->k(Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/LangType;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/core/models/enums/LangType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/giphy/sdk/core/network/api/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/giphy/sdk/core/models/enums/LangType;",
            "Lcom/giphy/sdk/core/network/api/a<",
            "-",
            "Lcom/giphy/sdk/core/network/response/ListMediaResponse;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/Pair;

    .line 1
    iget-object v1, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient;->a:Ljava/lang/String;

    const-string v2, "api_key"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "m"

    .line 2
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 3
    sget-object p1, Le2/a;->j:Le2/a;

    invoke-virtual {p1}, Le2/a;->i()Lcom/giphy/sdk/analytics/batching/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/giphy/sdk/analytics/batching/b;->o()Lcom/giphy/sdk/analytics/batching/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/giphy/sdk/analytics/batching/a;->d()Ljava/lang/String;

    move-result-object p1

    const-string v1, "pingback_id"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 4
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v7

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/giphy/sdk/core/models/enums/LangType;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "lang"

    invoke-interface {v7, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    sget-object p1, Lcom/giphy/sdk/core/network/api/Constants;->h:Lcom/giphy/sdk/core/network/api/Constants;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/network/api/Constants;->g()Landroid/net/Uri;

    move-result-object v3

    sget-object p1, Lcom/giphy/sdk/core/network/api/Constants$a;->k:Lcom/giphy/sdk/core/network/api/Constants$a;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/network/api/Constants$a;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;->GET:Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    .line 7
    const-class v6, Lcom/giphy/sdk/core/network/response/ListMediaResponse;

    move-object v2, p0

    .line 8
    invoke-virtual/range {v2 .. v7}, Lcom/giphy/sdk/core/network/api/GPHApiClient;->n(Landroid/net/Uri;Ljava/lang/String;Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;Ljava/lang/Class;Ljava/util/Map;)Lcom/giphy/sdk/core/threading/a;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p3}, Lcom/giphy/sdk/core/threading/a;->k(Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;
    .locals 10
    .param p1    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Lcom/giphy/sdk/core/network/api/a<",
            "-",
            "Lcom/giphy/sdk/core/network/response/MediaResponse;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "gifId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient;->b:Lcom/giphy/sdk/core/network/engine/b;

    invoke-interface {p1}, Lcom/giphy/sdk/core/network/engine/b;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/giphy/sdk/core/network/api/GPHApiClient$b;

    invoke-direct {v0, p0, p2}, Lcom/giphy/sdk/core/network/api/GPHApiClient$b;-><init>(Lcom/giphy/sdk/core/network/api/GPHApiClient;Lcom/giphy/sdk/core/network/api/a;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const-string p2, "networkSession.networkRe\u2026          }\n            }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/Pair;

    .line 3
    iget-object v2, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient;->a:Ljava/lang/String;

    const-string v3, "api_key"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v9

    .line 4
    sget-object v1, Lcom/giphy/sdk/core/network/api/Constants;->h:Lcom/giphy/sdk/core/network/api/Constants;

    invoke-virtual {v1}, Lcom/giphy/sdk/core/network/api/Constants;->g()Landroid/net/Uri;

    move-result-object v5

    .line 5
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v1, Lcom/giphy/sdk/core/network/api/Constants$a;->k:Lcom/giphy/sdk/core/network/api/Constants$a;

    invoke-virtual {v1}, Lcom/giphy/sdk/core/network/api/Constants$a;->d()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string p1, "java.lang.String.format(format, *args)"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;->GET:Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    const-class v8, Lcom/giphy/sdk/core/network/response/MediaResponse;

    move-object v4, p0

    .line 6
    invoke-virtual/range {v4 .. v9}, Lcom/giphy/sdk/core/network/api/GPHApiClient;->n(Landroid/net/Uri;Ljava/lang/String;Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;Ljava/lang/Class;Ljava/util/Map;)Lcom/giphy/sdk/core/threading/a;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lcom/giphy/sdk/core/threading/a;->k(Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;
    .locals 9
    .param p1    # Lcom/giphy/sdk/core/network/api/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giphy/sdk/core/network/api/a<",
            "-",
            "Lcom/giphy/sdk/core/network/response/TrendingSearchesResponse;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "completionHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/Pair;

    .line 1
    iget-object v1, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient;->a:Ljava/lang/String;

    const-string v2, "api_key"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v8

    .line 2
    sget-object v0, Lcom/giphy/sdk/core/network/api/Constants;->h:Lcom/giphy/sdk/core/network/api/Constants;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/network/api/Constants;->g()Landroid/net/Uri;

    move-result-object v4

    sget-object v0, Lcom/giphy/sdk/core/network/api/Constants$a;->k:Lcom/giphy/sdk/core/network/api/Constants$a;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/network/api/Constants$a;->j()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;->GET:Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    .line 3
    const-class v7, Lcom/giphy/sdk/core/network/response/TrendingSearchesResponse;

    move-object v3, p0

    .line 4
    invoke-virtual/range {v3 .. v8}, Lcom/giphy/sdk/core/network/api/GPHApiClient;->n(Landroid/net/Uri;Ljava/lang/String;Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;Ljava/lang/Class;Ljava/util/Map;)Lcom/giphy/sdk/core/threading/a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/giphy/sdk/core/threading/a;->k(Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final j()Lcom/giphy/sdk/analytics/batching/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient;->c:Lcom/giphy/sdk/analytics/batching/a;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Lcom/giphy/sdk/core/network/engine/b;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient;->b:Lcom/giphy/sdk/core/network/engine/b;

    return-object v0
.end method

.method public final n(Landroid/net/Uri;Ljava/lang/String;Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;Ljava/lang/Class;Ljava/util/Map;)Lcom/giphy/sdk/core/threading/a;
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
            ">;)",
            "Lcom/giphy/sdk/core/threading/a<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "serverUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseClass"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/giphy/sdk/core/threading/a;

    new-instance v8, Lcom/giphy/sdk/core/network/api/GPHApiClient$d;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/giphy/sdk/core/network/api/GPHApiClient$d;-><init>(Lcom/giphy/sdk/core/network/api/GPHApiClient;Ljava/util/Map;Landroid/net/Uri;Ljava/lang/String;Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;Ljava/lang/Class;)V

    .line 2
    iget-object p1, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient;->b:Lcom/giphy/sdk/core/network/engine/b;

    invoke-interface {p1}, Lcom/giphy/sdk/core/network/engine/b;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iget-object p2, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient;->b:Lcom/giphy/sdk/core/network/engine/b;

    invoke-interface {p2}, Lcom/giphy/sdk/core/network/engine/b;->b()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 3
    invoke-direct {v0, v8, p1, p2}, Lcom/giphy/sdk/core/threading/a;-><init>(Ljava/util/concurrent/Callable;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
