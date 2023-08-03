.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j$a;
.super Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;
.source "HistoryListPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j;->g(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a<",
        "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse<",
        "Ljava/util/List<",
        "+",
        "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j$a",
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;",
        "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;",
        "",
        "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
        "response",
        "",
        "f",
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
.field final synthetic e:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j;Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/k;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j$a;->e:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j;

    invoke-direct {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/n;)V

    return-void
.end method


# virtual methods
.method public f(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse<",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j$a;->e:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j;->f(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j;)Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "response.data"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/k;->A(Ljava/util/List;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j$a;->e:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j;->f(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j;)Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/k;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/n;->a()V

    :cond_1
    return-void
.end method
