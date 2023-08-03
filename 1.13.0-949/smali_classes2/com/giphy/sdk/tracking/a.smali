.class public final Lcom/giphy/sdk/tracking/a;
.super Ljava/lang/Object;
.source "CompletionHandlerExtension.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u001a,\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0000*\u0008\u0012\u0004\u0012\u00020\u00010\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002H\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/giphy/sdk/core/network/api/a;",
        "Lcom/giphy/sdk/core/network/response/ListMediaResponse;",
        "",
        "isEmoji",
        "isText",
        "a",
        "giphy-ui-2.1.9_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static final a(Lcom/giphy/sdk/core/network/api/a;ZZ)Lcom/giphy/sdk/core/network/api/a;
    .locals 1
    .param p0    # Lcom/giphy/sdk/core/network/api/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giphy/sdk/core/network/api/a<",
            "-",
            "Lcom/giphy/sdk/core/network/response/ListMediaResponse;",
            ">;ZZ)",
            "Lcom/giphy/sdk/core/network/api/a<",
            "Lcom/giphy/sdk/core/network/response/ListMediaResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "$this$completionHandlerWithUserDictionary"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/giphy/sdk/tracking/a$a;

    invoke-direct {v0, p0}, Lcom/giphy/sdk/tracking/a$a;-><init>(Lcom/giphy/sdk/core/network/api/a;)V

    .line 2
    new-instance p0, Lcom/giphy/sdk/tracking/a$b;

    invoke-direct {p0, p1, p2, v0}, Lcom/giphy/sdk/tracking/a$b;-><init>(ZZLcom/giphy/sdk/tracking/a$a;)V

    return-object p0
.end method

.method public static synthetic b(Lcom/giphy/sdk/core/network/api/a;ZZILjava/lang/Object;)Lcom/giphy/sdk/core/network/api/a;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/giphy/sdk/tracking/a;->a(Lcom/giphy/sdk/core/network/api/a;ZZ)Lcom/giphy/sdk/core/network/api/a;

    move-result-object p0

    return-object p0
.end method
