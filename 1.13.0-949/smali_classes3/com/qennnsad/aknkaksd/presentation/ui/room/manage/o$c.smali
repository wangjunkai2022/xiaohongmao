.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o$c;
.super Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;
.source "RoomManagePresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;->f(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a<",
        "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0016\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0016\u0010\n\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0014\u00a8\u0006\u000b"
    }
    d2 = {
        "com/qennnsad/aknkaksd/presentation/ui/room/manage/o$c",
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;",
        "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;",
        "",
        "response",
        "",
        "f",
        "",
        "throwable",
        "onError",
        "d",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected d(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V
    .locals 3
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;->d(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/qennnsad/aknkaksd/util/toast/a;->f(Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public f(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V
    .locals 3
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f13038e

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/qennnsad/aknkaksd/util/toast/a;->m(IZILjava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;->onError(Ljava/lang/Throwable;)V

    const p1, 0x7f1302bd

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v0, v1, v2}, Lcom/qennnsad/aknkaksd/util/toast/a;->e(IZILjava/lang/Object;)V

    return-void
.end method
