.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;
.super Ljava/lang/Object;
.source "RoomManagePresenter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u000f\u00a2\u0006\u0004\u0008 \u0010!J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002J&\u0010\r\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u0002R\u001a\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u001a\u001a\u00020\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\u001c\u001a\u00020\u001b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u0013\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;",
        "",
        "",
        "roomUid",
        "",
        "d",
        "uid",
        "info",
        "f",
        "anchorId",
        "roomId",
        "duration",
        "reason",
        "e",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/n;",
        "a",
        "Ljava/lang/ref/WeakReference;",
        "uiInterface",
        "b",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/n;",
        "ui",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "c",
        "()Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "Lf5/e;",
        "helper",
        "Lf5/e;",
        "()Lf5/e;",
        "uidInterface",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/n;)V",
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
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/n;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/n;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final c:Lf5/e;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lcom/qennnsad/aknkaksd/data/repository/m;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/n;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/n;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "uidInterface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;->a:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/n;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/n;

    .line 4
    invoke-interface {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/n;->b()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lf5/d;

    invoke-static {p1, v0}, Ldagger/hilt/c;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf5/d;

    invoke-interface {p1}, Lf5/d;->c()Lf5/e;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;->c:Lf5/e;

    .line 5
    invoke-virtual {p1}, Lf5/e;->g()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;->d:Lcom/qennnsad/aknkaksd/data/repository/m;

    return-void
.end method

.method public static final synthetic a(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;)Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/n;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/n;

    return-object p0
.end method


# virtual methods
.method public final b()Lf5/e;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;->c:Lf5/e;

    return-object v0
.end method

.method public final c()Lcom/qennnsad/aknkaksd/data/repository/m;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;->d:Lcom/qennnsad/aknkaksd/data/repository/m;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "roomUid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;->d:Lcom/qennnsad/aknkaksd/data/repository/m;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/data/repository/m;->g(Lcom/qennnsad/aknkaksd/data/repository/m;ZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/repository/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/b;->getAdmin(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    .line 2
    invoke-static {}, Lio/reactivex/schedulers/b;->d()Lio/reactivex/h0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/z;->subscribeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/android/schedulers/a;->c()Lio/reactivex/h0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/z;->observeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o$a;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;)V

    invoke-virtual {p1, v0}, Lio/reactivex/z;->subscribe(Lio/reactivex/g0;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "anchorId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "roomId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "duration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;->d:Lcom/qennnsad/aknkaksd/data/repository/m;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/data/repository/m;->g(Lcom/qennnsad/aknkaksd/data/repository/m;ZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/repository/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/data/repository/b;->roomWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    .line 2
    invoke-static {}, Lio/reactivex/schedulers/b;->d()Lio/reactivex/h0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/z;->subscribeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/android/schedulers/a;->c()Lio/reactivex/h0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/z;->observeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o$b;

    invoke-direct {p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o$b;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/z;->subscribe(Lio/reactivex/g0;)V

    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "uid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;->d:Lcom/qennnsad/aknkaksd/data/repository/m;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/data/repository/m;->g(Lcom/qennnsad/aknkaksd/data/repository/m;ZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/repository/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/b;->userReport(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    .line 2
    invoke-static {}, Lio/reactivex/schedulers/b;->d()Lio/reactivex/h0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/z;->subscribeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/android/schedulers/a;->c()Lio/reactivex/h0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/z;->observeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o$c;

    invoke-direct {p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o$c;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/z;->subscribe(Lio/reactivex/g0;)V

    return-void
.end method
