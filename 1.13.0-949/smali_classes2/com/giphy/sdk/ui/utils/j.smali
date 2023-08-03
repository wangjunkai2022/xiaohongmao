.class public final Lcom/giphy/sdk/ui/utils/j;
.super Ljava/lang/Object;
.source "VideoCache.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008J\u000e\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u001b\u001a\u00020\u00158\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\"\u0010\"\u001a\u00020\u001c8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001d\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/utils/j;",
        "",
        "Lcom/giphy/sdk/core/models/Media;",
        "media",
        "Lcom/google/android/exoplayer2/upstream/o;",
        "e",
        "Landroid/content/Context;",
        "context",
        "",
        "maxBytes",
        "",
        "f",
        "h",
        "Lcom/google/android/exoplayer2/upstream/cache/Cache;",
        "a",
        "Lcom/google/android/exoplayer2/upstream/cache/Cache;",
        "b",
        "()Lcom/google/android/exoplayer2/upstream/cache/Cache;",
        "i",
        "(Lcom/google/android/exoplayer2/upstream/cache/Cache;)V",
        "cache",
        "Lcom/google/android/exoplayer2/upstream/cache/b$d;",
        "Lcom/google/android/exoplayer2/upstream/cache/b$d;",
        "d",
        "()Lcom/google/android/exoplayer2/upstream/cache/b$d;",
        "k",
        "(Lcom/google/android/exoplayer2/upstream/cache/b$d;)V",
        "cacheDataSourceFactory",
        "Lcom/google/android/exoplayer2/upstream/cache/b;",
        "c",
        "Lcom/google/android/exoplayer2/upstream/cache/b;",
        "()Lcom/google/android/exoplayer2/upstream/cache/b;",
        "j",
        "(Lcom/google/android/exoplayer2/upstream/cache/b;)V",
        "cacheDataSource",
        "<init>",
        "()V",
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
.field public static a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field public static b:Lcom/google/android/exoplayer2/upstream/cache/b$d;

.field public static c:Lcom/google/android/exoplayer2/upstream/cache/b;

.field public static final d:Lcom/giphy/sdk/ui/utils/j;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/giphy/sdk/ui/utils/j;

    invoke-direct {v0}, Lcom/giphy/sdk/ui/utils/j;-><init>()V

    sput-object v0, Lcom/giphy/sdk/ui/utils/j;->d:Lcom/giphy/sdk/ui/utils/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/giphy/sdk/ui/utils/j;Lcom/giphy/sdk/core/models/Media;)Lcom/google/android/exoplayer2/upstream/o;
    .locals 0

    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/utils/j;->e(Lcom/giphy/sdk/core/models/Media;)Lcom/google/android/exoplayer2/upstream/o;

    move-result-object p0

    return-object p0
.end method

.method private final e(Lcom/giphy/sdk/core/models/Media;)Lcom/google/android/exoplayer2/upstream/o;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/o$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/o$b;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/giphy/sdk/ui/utils/h;->e(Lcom/giphy/sdk/core/models/Media;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/o$b;->j(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/o$b;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/upstream/o$b;->i(J)Lcom/google/android/exoplayer2/upstream/o$b;

    move-result-object p1

    const/4 v0, -0x1

    int-to-long v0, v0

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/upstream/o$b;->h(J)Lcom/google/android/exoplayer2/upstream/o$b;

    move-result-object p1

    const-string v0, "DataSpec.Builder()\n     \u2026(C.LENGTH_UNSET.toLong())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/o$b;->a()Lcom/google/android/exoplayer2/upstream/o;

    move-result-object p1

    const-string v0, "builder.build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic g(Lcom/giphy/sdk/ui/utils/j;Landroid/content/Context;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/32 p2, 0x6400000

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/giphy/sdk/ui/utils/j;->f(Landroid/content/Context;J)V

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/giphy/sdk/ui/utils/j;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    if-nez v0, :cond_0

    const-string v1, "cache"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final c()Lcom/google/android/exoplayer2/upstream/cache/b;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/giphy/sdk/ui/utils/j;->c:Lcom/google/android/exoplayer2/upstream/cache/b;

    if-nez v0, :cond_0

    const-string v1, "cacheDataSource"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final d()Lcom/google/android/exoplayer2/upstream/cache/b$d;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/giphy/sdk/ui/utils/j;->b:Lcom/google/android/exoplayer2/upstream/cache/b$d;

    if-nez v0, :cond_0

    const-string v1, "cacheDataSourceFactory"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final f(Landroid/content/Context;J)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/giphy/sdk/ui/utils/j;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "video-cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/t;

    invoke-direct {v1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/t;-><init>(J)V

    .line 4
    new-instance p2, Lcom/google/android/exoplayer2/upstream/cache/v;

    new-instance p3, Lcom/google/android/exoplayer2/database/c;

    invoke-direct {p3, p1}, Lcom/google/android/exoplayer2/database/c;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0, v1, p3}, Lcom/google/android/exoplayer2/upstream/cache/v;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/d;Lcom/google/android/exoplayer2/database/a;)V

    sput-object p2, Lcom/giphy/sdk/ui/utils/j;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 5
    new-instance p2, Lcom/google/android/exoplayer2/upstream/cache/b$d;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/upstream/cache/b$d;-><init>()V

    .line 6
    sget-object p3, Lcom/giphy/sdk/ui/utils/j;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    if-nez p3, :cond_1

    const-string v0, "cache"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/b$d;->k(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/b$d;

    .line 7
    new-instance p3, Lcom/google/android/exoplayer2/upstream/t;

    const-string v0, "GiphySDK"

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/z0;->t0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-direct {p3, p1, v0}, Lcom/google/android/exoplayer2/upstream/t;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/b$d;->q(Lcom/google/android/exoplayer2/upstream/m$a;)Lcom/google/android/exoplayer2/upstream/cache/b$d;

    .line 11
    sput-object p2, Lcom/giphy/sdk/ui/utils/j;->b:Lcom/google/android/exoplayer2/upstream/cache/b$d;

    .line 12
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/cache/b$d;->d()Lcom/google/android/exoplayer2/upstream/cache/b;

    move-result-object p1

    const-string p2, "cacheDataSourceFactory.createDataSource()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/giphy/sdk/ui/utils/j;->c:Lcom/google/android/exoplayer2/upstream/cache/b;

    return-void
.end method

.method public final h(Lcom/giphy/sdk/core/models/Media;)V
    .locals 8
    .param p1    # Lcom/giphy/sdk/core/models/Media;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "media"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareVideo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    sget-object v2, Lkotlinx/coroutines/a2;->a:Lkotlinx/coroutines/a2;

    invoke-static {}, Lkotlinx/coroutines/i1;->c()Lkotlinx/coroutines/n0;

    move-result-object v3

    new-instance v5, Lcom/giphy/sdk/ui/utils/j$a;

    const/4 v0, 0x0

    invoke-direct {v5, p1, v0}, Lcom/giphy/sdk/ui/utils/j$a;-><init>(Lcom/giphy/sdk/core/models/Media;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    return-void
.end method

.method public final i(Lcom/google/android/exoplayer2/upstream/cache/Cache;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/giphy/sdk/ui/utils/j;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    return-void
.end method

.method public final j(Lcom/google/android/exoplayer2/upstream/cache/b;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/upstream/cache/b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/giphy/sdk/ui/utils/j;->c:Lcom/google/android/exoplayer2/upstream/cache/b;

    return-void
.end method

.method public final k(Lcom/google/android/exoplayer2/upstream/cache/b$d;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/upstream/cache/b$d;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/giphy/sdk/ui/utils/j;->b:Lcom/google/android/exoplayer2/upstream/cache/b$d;

    return-void
.end method
