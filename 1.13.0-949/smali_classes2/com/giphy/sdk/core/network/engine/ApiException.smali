.class public final Lcom/giphy/sdk/core/network/engine/ApiException;
.super Ljava/lang/Exception;
.source "ApiException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0011\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\nB\u0019\u0008\u0016\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\rR\u0017\u0010\u0008\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/giphy/sdk/core/network/engine/ApiException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "Lcom/giphy/sdk/core/network/response/ErrorResponse;",
        "a",
        "Lcom/giphy/sdk/core/network/response/ErrorResponse;",
        "getErrorResponse",
        "()Lcom/giphy/sdk/core/network/response/ErrorResponse;",
        "errorResponse",
        "<init>",
        "(Lcom/giphy/sdk/core/network/response/ErrorResponse;)V",
        "",
        "detailMessage",
        "(Ljava/lang/String;Lcom/giphy/sdk/core/network/response/ErrorResponse;)V",
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
.field private final a:Lcom/giphy/sdk/core/network/response/ErrorResponse;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/giphy/sdk/core/network/response/ErrorResponse;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/core/network/response/ErrorResponse;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "errorResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/core/network/engine/ApiException;->a:Lcom/giphy/sdk/core/network/response/ErrorResponse;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/giphy/sdk/core/network/response/ErrorResponse;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/core/network/response/ErrorResponse;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "detailMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p2, p0, Lcom/giphy/sdk/core/network/engine/ApiException;->a:Lcom/giphy/sdk/core/network/response/ErrorResponse;

    return-void
.end method


# virtual methods
.method public final getErrorResponse()Lcom/giphy/sdk/core/network/response/ErrorResponse;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/network/engine/ApiException;->a:Lcom/giphy/sdk/core/network/response/ErrorResponse;

    return-object v0
.end method
