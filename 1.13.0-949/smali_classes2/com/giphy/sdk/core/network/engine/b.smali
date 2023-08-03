.class public interface abstract Lcom/giphy/sdk/core/network/engine/b;
.super Ljava/lang/Object;
.source "NetworkSession.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008`\u0018\u00002\u00020\u0001Jh\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000e\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t2\u0014\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000b2\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000bH&Jr\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000e\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t2\u0014\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000b2\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H&R\u0014\u0010\u0015\u001a\u00020\u00128&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/giphy/sdk/core/network/engine/b;",
        "",
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
        "Lcom/giphy/sdk/core/threading/a;",
        "c",
        "requestBody",
        "a",
        "Ljava/util/concurrent/ExecutorService;",
        "d",
        "()Ljava/util/concurrent/ExecutorService;",
        "networkRequestExecutor",
        "Ljava/util/concurrent/Executor;",
        "b",
        "()Ljava/util/concurrent/Executor;",
        "completionExecutor",
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
.method public abstract a(Landroid/net/Uri;Ljava/lang/String;Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Lcom/giphy/sdk/core/threading/a;
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
.end method

.method public abstract b()Ljava/util/concurrent/Executor;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract c(Landroid/net/Uri;Ljava/lang/String;Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;)Lcom/giphy/sdk/core/threading/a;
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
.end method

.method public abstract d()Ljava/util/concurrent/ExecutorService;
    .annotation build Lm8/g;
    .end annotation
.end method
