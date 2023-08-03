.class public interface abstract Lf2/a;
.super Ljava/lang/Object;
.source "GPHPingbackApi.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008`\u0018\u00002\u00020\u0001J\"\u0010\u0008\u001a\u0006\u0012\u0002\u0008\u00030\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H&\u00a8\u0006\t"
    }
    d2 = {
        "Lf2/a;",
        "",
        "Lcom/giphy/sdk/analytics/models/Session;",
        "session",
        "Lcom/giphy/sdk/core/network/api/a;",
        "Lcom/giphy/sdk/analytics/network/response/PingbackResponse;",
        "completionHandler",
        "Ljava/util/concurrent/Future;",
        "a",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/giphy/sdk/analytics/models/Session;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;
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
.end method
