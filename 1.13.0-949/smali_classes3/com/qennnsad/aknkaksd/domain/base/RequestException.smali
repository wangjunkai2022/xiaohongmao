.class public Lcom/qennnsad/aknkaksd/domain/base/RequestException;
.super Ljava/lang/Exception;
.source "RequestException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0008\u0008\u0016\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0019\u0012\u0010\u0010\t\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00040\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bR!\u0010\t\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00040\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/base/RequestException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;",
        "",
        "a",
        "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;",
        "getResponse",
        "()Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;",
        "response",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


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

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/base/RequestException;->a:Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;

    return-void
.end method


# virtual methods
.method public final getResponse()Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/base/RequestException;->a:Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;

    return-object v0
.end method
