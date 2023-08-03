.class final Lcom/giphy/sdk/core/network/api/GPHApiClient$c;
.super Ljava/lang/Object;
.source "GPHApiClient.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/core/network/api/GPHApiClient;->a(Ljava/util/List;Lcom/giphy/sdk/core/network/api/a;Ljava/lang/String;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
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

.field final synthetic b:Lcom/giphy/sdk/core/network/api/a;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/core/network/api/GPHApiClient;Lcom/giphy/sdk/core/network/api/a;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient$c;->a:Lcom/giphy/sdk/core/network/api/GPHApiClient;

    iput-object p2, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient$c;->b:Lcom/giphy/sdk/core/network/api/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient$c;->a:Lcom/giphy/sdk/core/network/api/GPHApiClient;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/network/api/GPHApiClient;->l()Lcom/giphy/sdk/core/network/engine/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/giphy/sdk/core/network/engine/b;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/giphy/sdk/core/network/api/GPHApiClient$c$a;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/core/network/api/GPHApiClient$c$a;-><init>(Lcom/giphy/sdk/core/network/api/GPHApiClient$c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
