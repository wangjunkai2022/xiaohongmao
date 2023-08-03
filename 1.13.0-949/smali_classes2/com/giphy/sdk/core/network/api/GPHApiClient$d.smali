.class final Lcom/giphy/sdk/core/network/api/GPHApiClient$d;
.super Ljava/lang/Object;
.source "GPHApiClient.kt"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/core/network/api/GPHApiClient;->n(Landroid/net/Uri;Ljava/lang/String;Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;Ljava/lang/Class;Ljava/util/Map;)Lcom/giphy/sdk/core/threading/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0005\u0010\u0000\u001a\n \u0002*\u0004\u0018\u0001H\u0001H\u0001\"\u0004\u0008\u0000\u0010\u0001H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "T",
        "kotlin.jvm.PlatformType",
        "call",
        "()Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/giphy/sdk/core/network/api/GPHApiClient;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Landroid/net/Uri;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

.field final synthetic f:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/core/network/api/GPHApiClient;Ljava/util/Map;Landroid/net/Uri;Ljava/lang/String;Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient$d;->a:Lcom/giphy/sdk/core/network/api/GPHApiClient;

    iput-object p2, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient$d;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient$d;->c:Landroid/net/Uri;

    iput-object p4, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient$d;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient$d;->e:Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    iput-object p6, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient$d;->f:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient$d;->a:Lcom/giphy/sdk/core/network/api/GPHApiClient;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/network/api/GPHApiClient;->j()Lcom/giphy/sdk/analytics/batching/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/giphy/sdk/analytics/batching/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient$d;->b:Ljava/util/Map;

    if-eqz v1, :cond_0

    const-string v2, "random_id"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    :cond_0
    sget-object v0, Lcom/giphy/sdk/core/c;->h:Lcom/giphy/sdk/core/c;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/c;->e()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/c;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    .line 5
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient$d;->a:Lcom/giphy/sdk/core/network/api/GPHApiClient;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/network/api/GPHApiClient;->l()Lcom/giphy/sdk/core/network/engine/b;

    move-result-object v2

    iget-object v3, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient$d;->c:Landroid/net/Uri;

    iget-object v4, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient$d;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient$d;->e:Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    iget-object v6, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient$d;->f:Ljava/lang/Class;

    iget-object v7, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient$d;->b:Ljava/util/Map;

    invoke-interface/range {v2 .. v8}, Lcom/giphy/sdk/core/network/engine/b;->c(Landroid/net/Uri;Ljava/lang/String;Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;)Lcom/giphy/sdk/core/threading/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/giphy/sdk/core/threading/a;->m()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
