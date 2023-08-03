.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j;
.super Lcom/qennnsad/aknkaksd/presentation/ui/base/e;
.source "HistoryListPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/e<",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/k;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/e;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/k;",
        "",
        "anchorId",
        "",
        "g",
        "ui",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/k;)V",
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
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/k;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/k;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "ui"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/e;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/n;)V

    return-void
.end method

.method public static final synthetic f(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j;)Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/k;
    .locals 0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/e;->e()Lcom/qennnsad/aknkaksd/presentation/ui/base/n;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/k;

    return-object p0
.end method


# virtual methods
.method public final g(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "anchorId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/e;->e()Lcom/qennnsad/aknkaksd/presentation/ui/base/n;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/n;->c()Landroid/app/Dialog;

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/e;->d()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/data/repository/m;->g(Lcom/qennnsad/aknkaksd/data/repository/m;ZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/repository/b;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/b;->getPinnedMessagesHistory(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/b;->d()Lio/reactivex/h0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/z;->subscribeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p1

    .line 5
    invoke-static {}, Lio/reactivex/android/schedulers/a;->c()Lio/reactivex/h0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/z;->observeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/e;->e()Lcom/qennnsad/aknkaksd/presentation/ui/base/n;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/k;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j$a;

    invoke-direct {v1, p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j;Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/k;)V

    invoke-virtual {p1, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/g0;)V

    return-void
.end method
