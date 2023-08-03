.class public final Lcom/giphy/sdk/core/network/api/GPHApiClient$e;
.super Ljava/lang/Object;
.source "GPHApiClient.kt"

# interfaces
.implements Lcom/giphy/sdk/core/network/api/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/core/network/api/GPHApiClient;->f(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Lcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giphy/sdk/core/network/api/a<",
        "Lcom/giphy/sdk/core/network/response/RandomGifResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/giphy/sdk/core/network/api/GPHApiClient$e",
        "Lcom/giphy/sdk/core/network/api/a;",
        "Lcom/giphy/sdk/core/network/response/RandomGifResponse;",
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
.field final synthetic a:Lcom/giphy/sdk/core/network/api/a;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/core/network/api/a;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient$e;->a:Lcom/giphy/sdk/core/network/api/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/giphy/sdk/core/network/response/RandomGifResponse;

    invoke-virtual {p0, p1, p2}, Lcom/giphy/sdk/core/network/api/GPHApiClient$e;->b(Lcom/giphy/sdk/core/network/response/RandomGifResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/giphy/sdk/core/network/response/RandomGifResponse;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/core/network/response/RandomGifResponse;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p2, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient$e;->a:Lcom/giphy/sdk/core/network/api/a;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/network/response/RandomGifResponse;->toGifResponse()Lcom/giphy/sdk/core/network/response/MediaResponse;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Lcom/giphy/sdk/core/network/api/a;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/giphy/sdk/core/network/api/GPHApiClient$e;->a:Lcom/giphy/sdk/core/network/api/a;

    invoke-interface {p1, v0, p2}, Lcom/giphy/sdk/core/network/api/a;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
