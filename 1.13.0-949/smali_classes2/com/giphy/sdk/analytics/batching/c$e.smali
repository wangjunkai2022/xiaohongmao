.class public final Lcom/giphy/sdk/analytics/batching/c$e;
.super Ljava/lang/Object;
.source "PingbackSubmissionQueue.kt"

# interfaces
.implements Lcom/giphy/sdk/core/network/api/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/analytics/batching/c;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giphy/sdk/core/network/api/a<",
        "Lcom/giphy/sdk/analytics/network/response/PingbackResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/giphy/sdk/analytics/batching/c$e",
        "Lcom/giphy/sdk/core/network/api/a;",
        "Lcom/giphy/sdk/analytics/network/response/PingbackResponse;",
        "result",
        "",
        "e",
        "",
        "b",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giphy/sdk/analytics/models/Session;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/c$e;->a:Lcom/giphy/sdk/analytics/batching/c;

    iput-object p2, p0, Lcom/giphy/sdk/analytics/batching/c$e;->b:Lcom/giphy/sdk/analytics/models/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/giphy/sdk/analytics/network/response/PingbackResponse;

    invoke-virtual {p0, p1, p2}, Lcom/giphy/sdk/analytics/batching/c$e;->b(Lcom/giphy/sdk/analytics/network/response/PingbackResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/giphy/sdk/analytics/network/response/PingbackResponse;Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Lcom/giphy/sdk/analytics/network/response/PingbackResponse;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string p1, "PINGBACK"

    if-eqz p2, :cond_1

    .line 1
    sget-object v0, Le2/a;->j:Le2/a;

    invoke-virtual {v0}, Le2/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error submitting session. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/giphy/sdk/analytics/batching/c$e;->a:Lcom/giphy/sdk/analytics/batching/c;

    invoke-virtual {p1}, Lcom/giphy/sdk/analytics/batching/c;->o()Ljava/util/LinkedList;

    move-result-object p1

    iget-object p2, p0, Lcom/giphy/sdk/analytics/batching/c$e;->b:Lcom/giphy/sdk/analytics/models/Session;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/giphy/sdk/analytics/batching/c$e;->a:Lcom/giphy/sdk/analytics/batching/c;

    invoke-static {p1}, Lcom/giphy/sdk/analytics/batching/c;->k(Lcom/giphy/sdk/analytics/batching/c;)V

    .line 5
    iget-object p1, p0, Lcom/giphy/sdk/analytics/batching/c$e;->a:Lcom/giphy/sdk/analytics/batching/c;

    invoke-static {p1}, Lcom/giphy/sdk/analytics/batching/c;->e(Lcom/giphy/sdk/analytics/batching/c;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/giphy/sdk/analytics/batching/c$e;->a:Lcom/giphy/sdk/analytics/batching/c;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/giphy/sdk/analytics/batching/c;->i(Lcom/giphy/sdk/analytics/batching/c;I)V

    .line 7
    sget-object p2, Le2/a;->j:Le2/a;

    invoke-virtual {p2}, Le2/a;->h()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 p2, 0x2

    new-array v1, p2, [Ljava/lang/Object;

    .line 9
    iget-object v2, p0, Lcom/giphy/sdk/analytics/batching/c$e;->b:Lcom/giphy/sdk/analytics/models/Session;

    invoke-virtual {v2}, Lcom/giphy/sdk/analytics/models/Session;->getSessionId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/giphy/sdk/analytics/batching/c$e;->b:Lcom/giphy/sdk/analytics/models/Session;

    invoke-virtual {v2}, Lcom/giphy/sdk/analytics/models/Session;->getEvents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 10
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Successfully submitted session %s %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
