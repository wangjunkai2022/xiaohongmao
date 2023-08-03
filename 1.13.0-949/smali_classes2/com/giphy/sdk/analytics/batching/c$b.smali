.class final Lcom/giphy/sdk/analytics/batching/c$b;
.super Ljava/lang/Object;
.source "PingbackSubmissionQueue.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/analytics/batching/c;->l(Lcom/giphy/sdk/analytics/models/Session;)V
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
.field final synthetic a:Lcom/giphy/sdk/analytics/batching/c;

.field final synthetic b:Lcom/giphy/sdk/analytics/models/Session;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/analytics/batching/c;Lcom/giphy/sdk/analytics/models/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/c$b;->a:Lcom/giphy/sdk/analytics/batching/c;

    iput-object p2, p0, Lcom/giphy/sdk/analytics/batching/c$b;->b:Lcom/giphy/sdk/analytics/models/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/c$b;->a:Lcom/giphy/sdk/analytics/batching/c;

    invoke-virtual {v0}, Lcom/giphy/sdk/analytics/batching/c;->o()Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/giphy/sdk/analytics/batching/c$b;->b:Lcom/giphy/sdk/analytics/models/Session;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/c$b;->a:Lcom/giphy/sdk/analytics/batching/c;

    invoke-virtual {v0}, Lcom/giphy/sdk/analytics/batching/c;->o()Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/giphy/sdk/analytics/batching/c$b;->b:Lcom/giphy/sdk/analytics/models/Session;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/c$b;->a:Lcom/giphy/sdk/analytics/batching/c;

    invoke-static {v0}, Lcom/giphy/sdk/analytics/batching/c;->k(Lcom/giphy/sdk/analytics/batching/c;)V

    .line 4
    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/c$b;->a:Lcom/giphy/sdk/analytics/batching/c;

    invoke-static {v0}, Lcom/giphy/sdk/analytics/batching/c;->j(Lcom/giphy/sdk/analytics/batching/c;)V

    return-void
.end method
