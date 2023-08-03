.class final Lcom/giphy/sdk/core/network/api/GPHApiClient$b$a;
.super Ljava/lang/Object;
.source "GPHApiClient.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/core/network/api/GPHApiClient$b;->run()V
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
.field final synthetic a:Lcom/giphy/sdk/core/network/api/GPHApiClient$b;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/core/network/api/GPHApiClient$b;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient$b$a;->a:Lcom/giphy/sdk/core/network/api/GPHApiClient$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient$b$a;->a:Lcom/giphy/sdk/core/network/api/GPHApiClient$b;

    iget-object v0, v0, Lcom/giphy/sdk/core/network/api/GPHApiClient$b;->b:Lcom/giphy/sdk/core/network/api/a;

    .line 2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "gifId must not be blank"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v2, v1}, Lcom/giphy/sdk/core/network/api/a;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
