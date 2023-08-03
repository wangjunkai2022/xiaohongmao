.class public final Lcom/giphy/sdk/core/c;
.super Ljava/lang/Object;
.source "GiphyCore.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001d\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u00082\u00103J \u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006J \u0010\r\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0006J\u000e\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0004R\"\u0010\u0015\u001a\u00020\u000c8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R>\u0010\u001e\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0016j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\"\u0010\u000e\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\"\u0010\'\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010\u001f\u001a\u0004\u0008%\u0010!\"\u0004\u0008&\u0010#R*\u0010.\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00068\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u0016\u00100\u001a\u00020\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010/R2\u00101\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000c0\u0016j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000c`\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010\u0019\u00a8\u00064"
    }
    d2 = {
        "Lcom/giphy/sdk/core/c;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "apiKey",
        "",
        "verificationMode",
        "",
        "a",
        "instanceName",
        "enableVerificationMode",
        "Lcom/giphy/sdk/core/network/api/GPHApiClient;",
        "c",
        "name",
        "j",
        "Lcom/giphy/sdk/core/network/api/GPHApiClient;",
        "f",
        "()Lcom/giphy/sdk/core/network/api/GPHApiClient;",
        "l",
        "(Lcom/giphy/sdk/core/network/api/GPHApiClient;)V",
        "apiClient",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "b",
        "Ljava/util/HashMap;",
        "e",
        "()Ljava/util/HashMap;",
        "k",
        "(Ljava/util/HashMap;)V",
        "additionalHeaders",
        "Ljava/lang/String;",
        "h",
        "()Ljava/lang/String;",
        "n",
        "(Ljava/lang/String;)V",
        "d",
        "i",
        "o",
        "versionName",
        "value",
        "Z",
        "g",
        "()Z",
        "m",
        "(Z)V",
        "logsEnabled",
        "Landroid/content/Context;",
        "applicationContext",
        "secondaryApiClientInstances",
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
.field public static a:Lcom/giphy/sdk/core/network/api/GPHApiClient;

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private static c:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static d:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static e:Z

.field private static f:Landroid/content/Context;

.field private static g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/giphy/sdk/core/network/api/GPHApiClient;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lcom/giphy/sdk/core/c;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/giphy/sdk/core/c;

    invoke-direct {v0}, Lcom/giphy/sdk/core/c;-><init>()V

    sput-object v0, Lcom/giphy/sdk/core/c;->h:Lcom/giphy/sdk/core/c;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/giphy/sdk/core/c;->b:Ljava/util/HashMap;

    const-string v0, "CoreSDK"

    .line 3
    sput-object v0, Lcom/giphy/sdk/core/c;->c:Ljava/lang/String;

    const-string v0, "3.1.9"

    .line 4
    sput-object v0, Lcom/giphy/sdk/core/c;->d:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/giphy/sdk/core/c;->g:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/giphy/sdk/core/c;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/giphy/sdk/core/c;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic d(Lcom/giphy/sdk/core/c;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/giphy/sdk/core/network/api/GPHApiClient;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/giphy/sdk/core/c;->c(Ljava/lang/String;Ljava/lang/String;Z)Lcom/giphy/sdk/core/network/api/GPHApiClient;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/giphy/sdk/core/c;->f:Landroid/content/Context;

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/Pair;

    .line 2
    sget-object v2, Lcom/giphy/sdk/core/c;->d:Ljava/lang/String;

    const-string v3, "X-GIPHY-SDK-VERSION"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 3
    sget-object v2, Lcom/giphy/sdk/core/c;->c:Ljava/lang/String;

    const-string v3, "X-GIPHY-SDK-NAME"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "X-GIPHY-SDK-PLATFORM"

    const-string v4, "Android"

    .line 4
    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    .line 5
    sget-object v2, Lcom/giphy/sdk/core/d;->a:Lcom/giphy/sdk/core/d;

    invoke-virtual {v2, p1}, Lcom/giphy/sdk/core/d;->a(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "X-GIPHY-UI-SDK-IS-EXTENSION"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v0, v4

    const-string v2, "Accept-Encoding"

    const-string v4, "gzip,br"

    .line 6
    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v0, v4

    .line 7
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/giphy/sdk/core/c;->b:Ljava/util/HashMap;

    .line 8
    sget-object v0, Le2/a;->j:Le2/a;

    sget-object v2, Lcom/giphy/sdk/core/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Le2/a;->l(Ljava/util/HashMap;)V

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3}, Le2/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 10
    new-instance p1, Lcom/giphy/sdk/core/network/api/GPHApiClient;

    .line 11
    new-instance v7, Lcom/giphy/sdk/analytics/batching/a;

    invoke-direct {v7, p2, v3, p3}, Lcom/giphy/sdk/analytics/batching/a;-><init>(Ljava/lang/String;ZZ)V

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, p2

    .line 12
    invoke-direct/range {v4 .. v9}, Lcom/giphy/sdk/core/network/api/GPHApiClient;-><init>(Ljava/lang/String;Lcom/giphy/sdk/core/network/engine/b;Lcom/giphy/sdk/analytics/batching/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object p1, Lcom/giphy/sdk/core/c;->a:Lcom/giphy/sdk/core/network/api/GPHApiClient;

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Z)Lcom/giphy/sdk/core/network/api/GPHApiClient;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "instanceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/giphy/sdk/core/network/api/GPHApiClient;

    .line 2
    new-instance v4, Lcom/giphy/sdk/analytics/batching/a;

    const/4 v1, 0x0

    invoke-direct {v4, p2, v1, p3}, Lcom/giphy/sdk/analytics/batching/a;-><init>(Ljava/lang/String;ZZ)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p2

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/giphy/sdk/core/network/api/GPHApiClient;-><init>(Ljava/lang/String;Lcom/giphy/sdk/core/network/engine/b;Lcom/giphy/sdk/analytics/batching/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    sget-object p2, Lcom/giphy/sdk/core/c;->g:Ljava/util/HashMap;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final e()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/giphy/sdk/core/c;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public final f()Lcom/giphy/sdk/core/network/api/GPHApiClient;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/giphy/sdk/core/c;->a:Lcom/giphy/sdk/core/network/api/GPHApiClient;

    if-nez v0, :cond_0

    const-string v1, "apiClient"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final g()Z
    .locals 1

    sget-boolean v0, Lcom/giphy/sdk/core/c;->e:Z

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/giphy/sdk/core/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/giphy/sdk/core/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final j(Ljava/lang/String;)Lcom/giphy/sdk/core/network/api/GPHApiClient;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/giphy/sdk/core/c;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/giphy/sdk/core/network/api/GPHApiClient;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An instance with name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was never configured."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k(Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/giphy/sdk/core/c;->b:Ljava/util/HashMap;

    return-void
.end method

.method public final l(Lcom/giphy/sdk/core/network/api/GPHApiClient;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/core/network/api/GPHApiClient;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/giphy/sdk/core/c;->a:Lcom/giphy/sdk/core/network/api/GPHApiClient;

    return-void
.end method

.method public final m(Z)V
    .locals 1

    .line 1
    sput-boolean p1, Lcom/giphy/sdk/core/c;->e:Z

    .line 2
    sget-object v0, Le2/a;->j:Le2/a;

    invoke-virtual {v0, p1}, Le2/a;->n(Z)V

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/giphy/sdk/core/c;->c:Ljava/lang/String;

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/giphy/sdk/core/c;->d:Ljava/lang/String;

    return-void
.end method
