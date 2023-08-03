.class public final Lcom/qennnsad/aknkaksd/domain/base/TokenExpiredException;
.super Lcom/qennnsad/aknkaksd/domain/base/RequestException;
.source "RequestException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0010\u0010\u0002\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00040\u0003\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/base/TokenExpiredException;",
        "Lcom/qennnsad/aknkaksd/domain/base/RequestException;",
        "response",
        "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;",
        "",
        "(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/domain/base/RequestException;-><init>(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V

    return-void
.end method
