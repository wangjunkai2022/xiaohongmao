.class public final Lcom/giphy/sdk/ui/l;
.super Ljava/lang/Object;
.source "Giphy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u00080\u00101J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J^\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2$\u0008\u0002\u0010\u000e\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u000cj\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006`\r2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0007R\"\u0010\u0018\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0013R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R$\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\"\u0010*\u001a\u00020)8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/\u00a8\u00062"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/l;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "n",
        "",
        "apiKey",
        "",
        "verificationMode",
        "",
        "videoCacheMaxBytes",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "metadata",
        "Lcom/giphy/sdk/ui/m;",
        "frescoHandler",
        "h",
        "a",
        "Z",
        "j",
        "()Z",
        "o",
        "(Z)V",
        "autoPlay",
        "c",
        "initialized",
        "Lcom/giphy/sdk/ui/o;",
        "d",
        "Lcom/giphy/sdk/ui/o;",
        "l",
        "()Lcom/giphy/sdk/ui/o;",
        "q",
        "(Lcom/giphy/sdk/ui/o;)V",
        "recents",
        "e",
        "Lcom/giphy/sdk/ui/m;",
        "k",
        "()Lcom/giphy/sdk/ui/m;",
        "p",
        "(Lcom/giphy/sdk/ui/m;)V",
        "Li2/e;",
        "themeUsed",
        "Li2/e;",
        "m",
        "()Li2/e;",
        "r",
        "(Li2/e;)V",
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
.field private static a:Z

.field private static b:Li2/e;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static c:Z

.field public static d:Lcom/giphy/sdk/ui/o;

.field private static e:Lcom/giphy/sdk/ui/m;
    .annotation build Lm8/h;
    .end annotation
.end field

.field public static final f:Lcom/giphy/sdk/ui/l;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/giphy/sdk/ui/l;

    invoke-direct {v0}, Lcom/giphy/sdk/ui/l;-><init>()V

    sput-object v0, Lcom/giphy/sdk/ui/l;->f:Lcom/giphy/sdk/ui/l;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/giphy/sdk/ui/l;->a:Z

    .line 3
    sget-object v0, Li2/d;->n:Li2/d;

    sput-object v0, Lcom/giphy/sdk/ui/l;->b:Li2/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/giphy/sdk/ui/l;)Z
    .locals 0

    sget-boolean p0, Lcom/giphy/sdk/ui/l;->c:Z

    return p0
.end method

.method public static final synthetic b(Lcom/giphy/sdk/ui/l;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/l;->n(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic c(Lcom/giphy/sdk/ui/l;Z)V
    .locals 0

    sput-boolean p1, Lcom/giphy/sdk/ui/l;->c:Z

    return-void
.end method

.method public static synthetic i(Lcom/giphy/sdk/ui/l;Landroid/content/Context;Ljava/lang/String;ZJLjava/util/HashMap;Lcom/giphy/sdk/ui/m;ILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p3

    :goto_0
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x6400000

    move-wide v5, v0

    goto :goto_1

    :cond_1
    move-wide v5, p4

    :goto_1
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v7, p6

    :goto_2
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_3

    :cond_3
    move-object/from16 v8, p7

    :goto_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 2
    invoke-virtual/range {v1 .. v8}, Lcom/giphy/sdk/ui/l;->h(Landroid/content/Context;Ljava/lang/String;ZJLjava/util/HashMap;Lcom/giphy/sdk/ui/m;)V

    return-void
.end method

.method private final n(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/facebook/cache/disk/c;->n(Landroid/content/Context;)Lcom/facebook/cache/disk/c$b;

    move-result-object v0

    const-wide/32 v1, 0x19000000

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/facebook/cache/disk/c$b;->w(J)Lcom/facebook/cache/disk/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/cache/disk/c$b;->n()Lcom/facebook/cache/disk/c;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/facebook/cache/disk/c;->n(Landroid/content/Context;)Lcom/facebook/cache/disk/c$b;

    move-result-object v1

    const-wide/32 v2, 0xfa00000

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/facebook/cache/disk/c$b;->w(J)Lcom/facebook/cache/disk/c$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/cache/disk/c$b;->n()Lcom/facebook/cache/disk/c;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 6
    new-instance v3, Lq1/g;

    invoke-direct {v3}, Lq1/g;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 8
    sget-object v3, Lcom/giphy/sdk/ui/l;->e:Lcom/giphy/sdk/ui/m;

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Lcom/giphy/sdk/ui/m;->b(Lokhttp3/OkHttpClient$Builder;)V

    .line 9
    :cond_0
    sget-object v3, Lcom/giphy/sdk/ui/l$b;->a:Lcom/giphy/sdk/ui/l$b;

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 10
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/facebook/imagepipeline/backends/okhttp3/b;->a(Landroid/content/Context;Lokhttp3/OkHttpClient;)Lcom/facebook/imagepipeline/core/i$b;

    move-result-object v2

    .line 11
    invoke-virtual {v2, v0}, Lcom/facebook/imagepipeline/core/i$b;->y0(Lcom/facebook/cache/disk/c;)Lcom/facebook/imagepipeline/core/i$b;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/core/i$b;->o0(Lcom/facebook/cache/disk/c;)Lcom/facebook/imagepipeline/core/i$b;

    move-result-object v0

    .line 13
    sget-object v1, Lcom/giphy/sdk/ui/l;->e:Lcom/giphy/sdk/ui/m;

    if-eqz v1, :cond_1

    const-string v2, "config"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/giphy/sdk/ui/m;->a(Lcom/facebook/imagepipeline/core/i$b;)V

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/i$b;->K()Lcom/facebook/imagepipeline/core/i;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/drawee/backends/pipeline/d;->f(Landroid/content/Context;Lcom/facebook/imagepipeline/core/i;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3c

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/giphy/sdk/ui/l;->i(Lcom/giphy/sdk/ui/l;Landroid/content/Context;Ljava/lang/String;ZJLjava/util/HashMap;Lcom/giphy/sdk/ui/m;ILjava/lang/Object;)V

    return-void
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x38

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v9}, Lcom/giphy/sdk/ui/l;->i(Lcom/giphy/sdk/ui/l;Landroid/content/Context;Ljava/lang/String;ZJLjava/util/HashMap;Lcom/giphy/sdk/ui/m;ILjava/lang/Object;)V

    return-void
.end method

.method public final f(Landroid/content/Context;Ljava/lang/String;ZJ)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v9}, Lcom/giphy/sdk/ui/l;->i(Lcom/giphy/sdk/ui/l;Landroid/content/Context;Ljava/lang/String;ZJLjava/util/HashMap;Lcom/giphy/sdk/ui/m;ILjava/lang/Object;)V

    return-void
.end method

.method public final g(Landroid/content/Context;Ljava/lang/String;ZJLjava/util/HashMap;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Ljava/util/HashMap;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZJ",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v9}, Lcom/giphy/sdk/ui/l;->i(Lcom/giphy/sdk/ui/l;Landroid/content/Context;Ljava/lang/String;ZJLjava/util/HashMap;Lcom/giphy/sdk/ui/m;ILjava/lang/Object;)V

    return-void
.end method

.method public final h(Landroid/content/Context;Ljava/lang/String;ZJLjava/util/HashMap;Lcom/giphy/sdk/ui/m;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Ljava/util/HashMap;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p7    # Lcom/giphy/sdk/ui/m;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZJ",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/giphy/sdk/ui/m;",
            ")V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sput-object p7, Lcom/giphy/sdk/ui/l;->e:Lcom/giphy/sdk/ui/m;

    .line 2
    new-instance p7, Lcom/giphy/sdk/ui/l$a;

    const/4 v0, 0x0

    invoke-direct {p7, p6, p1, v0}, Lcom/giphy/sdk/ui/l$a;-><init>(Ljava/util/HashMap;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 p6, 0x1

    invoke-static {v0, p7, p6, v0}, Lkotlinx/coroutines/j;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p6, Lcom/giphy/sdk/ui/utils/j;->d:Lcom/giphy/sdk/ui/utils/j;

    invoke-virtual {p6, p1, p4, p5}, Lcom/giphy/sdk/ui/utils/j;->f(Landroid/content/Context;J)V

    .line 4
    sget-object p4, Lcom/giphy/sdk/core/c;->h:Lcom/giphy/sdk/core/c;

    invoke-virtual {p4, p1, p2, p3}, Lcom/giphy/sdk/core/c;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 5
    new-instance p2, Lcom/giphy/sdk/ui/o;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-string p4, "context.applicationContext"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lcom/giphy/sdk/ui/o;-><init>(Landroid/content/Context;)V

    sput-object p2, Lcom/giphy/sdk/ui/l;->d:Lcom/giphy/sdk/ui/o;

    .line 6
    sget-object p2, Li2/a;->n:Li2/a;

    invoke-virtual {p2, p1}, Li2/a;->n(Landroid/content/Context;)V

    .line 7
    sget-object p2, Li2/d;->n:Li2/d;

    invoke-virtual {p2, p1}, Li2/d;->n(Landroid/content/Context;)V

    return-void
.end method

.method public final j()Z
    .locals 1

    sget-boolean v0, Lcom/giphy/sdk/ui/l;->a:Z

    return v0
.end method

.method public final k()Lcom/giphy/sdk/ui/m;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    sget-object v0, Lcom/giphy/sdk/ui/l;->e:Lcom/giphy/sdk/ui/m;

    return-object v0
.end method

.method public final l()Lcom/giphy/sdk/ui/o;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/giphy/sdk/ui/l;->d:Lcom/giphy/sdk/ui/o;

    if-nez v0, :cond_0

    const-string v1, "recents"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final m()Li2/e;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/giphy/sdk/ui/l;->b:Li2/e;

    return-object v0
.end method

.method public final o(Z)V
    .locals 0

    sput-boolean p1, Lcom/giphy/sdk/ui/l;->a:Z

    return-void
.end method

.method public final p(Lcom/giphy/sdk/ui/m;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/ui/m;
        .annotation build Lm8/h;
        .end annotation
    .end param

    sput-object p1, Lcom/giphy/sdk/ui/l;->e:Lcom/giphy/sdk/ui/m;

    return-void
.end method

.method public final q(Lcom/giphy/sdk/ui/o;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/ui/o;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/giphy/sdk/ui/l;->d:Lcom/giphy/sdk/ui/o;

    return-void
.end method

.method public final r(Li2/e;)V
    .locals 1
    .param p1    # Li2/e;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/giphy/sdk/ui/l;->b:Li2/e;

    return-void
.end method
