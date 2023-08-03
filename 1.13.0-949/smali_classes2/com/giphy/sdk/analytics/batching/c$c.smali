.class final Lcom/giphy/sdk/analytics/batching/c$c;
.super Ljava/lang/Object;
.source "PingbackSubmissionQueue.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/analytics/batching/c;->m()V
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


# direct methods
.method constructor <init>(Lcom/giphy/sdk/analytics/batching/c;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/c$c;->a:Lcom/giphy/sdk/analytics/batching/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/c$c;->a:Lcom/giphy/sdk/analytics/batching/c;

    invoke-static {v0}, Lcom/giphy/sdk/analytics/batching/c;->j(Lcom/giphy/sdk/analytics/batching/c;)V

    return-void
.end method
