.class public final Lcom/giphy/sdk/analytics/network/response/RandomIdResponse;
.super Ljava/lang/Object;
.source "RandomIdResponse.kt"

# interfaces
.implements Lcom/giphy/sdk/core/network/response/GenericResponse;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/giphy/sdk/analytics/network/response/RandomIdResponse;",
        "Lcom/giphy/sdk/core/network/response/GenericResponse;",
        "data",
        "Lcom/giphy/sdk/analytics/models/RandomId;",
        "(Lcom/giphy/sdk/analytics/models/RandomId;)V",
        "getData",
        "()Lcom/giphy/sdk/analytics/models/RandomId;",
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
.field private final data:Lcom/giphy/sdk/analytics/models/RandomId;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/giphy/sdk/analytics/network/response/RandomIdResponse;-><init>(Lcom/giphy/sdk/analytics/models/RandomId;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/giphy/sdk/analytics/models/RandomId;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/analytics/models/RandomId;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/analytics/network/response/RandomIdResponse;->data:Lcom/giphy/sdk/analytics/models/RandomId;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/giphy/sdk/analytics/models/RandomId;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/giphy/sdk/analytics/network/response/RandomIdResponse;-><init>(Lcom/giphy/sdk/analytics/models/RandomId;)V

    return-void
.end method


# virtual methods
.method public final getData()Lcom/giphy/sdk/analytics/models/RandomId;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/analytics/network/response/RandomIdResponse;->data:Lcom/giphy/sdk/analytics/models/RandomId;

    return-object v0
.end method
