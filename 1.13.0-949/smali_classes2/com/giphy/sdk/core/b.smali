.class public final Lcom/giphy/sdk/core/b;
.super Ljava/lang/Object;
.source "GPHCore.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014JJ\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022:\u0010\u000c\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000b0\u0004J\\\u0010\u0012\u001a\u00020\u000b2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000e2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00022:\u0010\u000c\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0011\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000b0\u0004\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/giphy/sdk/core/b;",
        "",
        "",
        "gifId",
        "Lkotlin/Function2;",
        "Lcom/giphy/sdk/core/network/response/MediaResponse;",
        "Lkotlin/ParameterName;",
        "name",
        "result",
        "",
        "e",
        "",
        "completionHandler",
        "a",
        "",
        "gifIds",
        "context",
        "Lcom/giphy/sdk/core/network/response/ListMediaResponse;",
        "b",
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
.field public static final a:Lcom/giphy/sdk/core/b;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/giphy/sdk/core/b;

    invoke-direct {v0}, Lcom/giphy/sdk/core/b;-><init>()V

    sput-object v0, Lcom/giphy/sdk/core/b;->a:Lcom/giphy/sdk/core/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/giphy/sdk/core/b;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/giphy/sdk/core/b;->b(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/giphy/sdk/core/network/response/MediaResponse;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "gifId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/giphy/sdk/core/c;->h:Lcom/giphy/sdk/core/c;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/c;->f()Lcom/giphy/sdk/core/network/api/GPHApiClient;

    move-result-object v0

    new-instance v1, Lcom/giphy/sdk/core/b$a;

    invoke-direct {v1, p2}, Lcom/giphy/sdk/core/b$a;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, p1, v1}, Lcom/giphy/sdk/core/network/api/GPHApiClient;->h(Ljava/lang/String;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final b(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/giphy/sdk/core/network/response/ListMediaResponse;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "gifIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/giphy/sdk/core/c;->h:Lcom/giphy/sdk/core/c;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/c;->f()Lcom/giphy/sdk/core/network/api/GPHApiClient;

    move-result-object v0

    new-instance v1, Lcom/giphy/sdk/core/b$b;

    invoke-direct {v1, p3}, Lcom/giphy/sdk/core/b$b;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, p1, v1, p2}, Lcom/giphy/sdk/core/network/api/GPHApiClient;->a(Ljava/util/List;Lcom/giphy/sdk/core/network/api/a;Ljava/lang/String;)Ljava/util/concurrent/Future;

    return-void
.end method
