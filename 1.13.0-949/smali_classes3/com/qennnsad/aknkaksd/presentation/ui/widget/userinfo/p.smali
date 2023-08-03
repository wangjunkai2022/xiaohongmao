.class public final Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;
.super Ljava/lang/Object;
.source "UserInfoDialogPresenter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001d\u001a\u00020\r\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002J\u0016\u0010\t\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002R\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0013\u001a\u0004\u0018\u00010\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001c\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0015\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006 "
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;",
        "",
        "",
        "userId",
        "",
        "f",
        "uid",
        "roomId",
        "c",
        "h",
        "toUid",
        "g",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/n;",
        "a",
        "Ljava/lang/ref/WeakReference;",
        "uiInterface",
        "b",
        "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/n;",
        "ui",
        "Lf5/e;",
        "Lkotlin/Lazy;",
        "d",
        "()Lf5/e;",
        "diHelper",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "e",
        "()Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "uidInterface",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/n;)V",
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
            "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/n;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/n;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final c:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/n;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/n;
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

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;->a:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/n;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;->b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/n;

    .line 4
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$a;

    invoke-direct {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/n;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;->c:Lkotlin/Lazy;

    .line 5
    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$e;

    invoke-direct {p1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$e;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;->d:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;)Lf5/e;
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;->d()Lf5/e;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;)Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/n;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;->b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/n;

    return-object p0
.end method

.method private final d()Lf5/e;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf5/e;

    return-object v0
.end method

.method private final e()Lcom/qennnsad/aknkaksd/data/repository/m;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/lang/String;)V
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

    const-string v0, "roomId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;->e()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/data/repository/m;->g(Lcom/qennnsad/aknkaksd/data/repository/m;ZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/repository/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/b;->followUser(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

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
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$b;

    invoke-direct {p2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;)V

    invoke-virtual {p1, p2}, Lio/reactivex/z;->subscribe(Lio/reactivex/g0;)V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;->e()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/data/repository/m;->g(Lcom/qennnsad/aknkaksd/data/repository/m;ZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/repository/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/b;->getUserInfo(Ljava/lang/String;)Lio/reactivex/z;

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
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$c;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;)V

    invoke-virtual {p1, v0}, Lio/reactivex/z;->subscribe(Lio/reactivex/g0;)V

    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "toUid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendNameCard:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendNameCard"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;->e()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/data/repository/m;->g(Lcom/qennnsad/aknkaksd/data/repository/m;ZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/repository/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/b;->sendNameCard(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/b;->d()Lio/reactivex/h0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/z;->subscribeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p1

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/a;->c()Lio/reactivex/h0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/z;->observeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$d;

    invoke-direct {p2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$d;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/z;->subscribe(Lio/reactivex/g0;)V

    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;)V
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

    const-string v0, "roomId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;->e()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/data/repository/m;->g(Lcom/qennnsad/aknkaksd/data/repository/m;ZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/repository/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/b;->unfollowUser(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

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
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$f;

    invoke-direct {p2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$f;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;)V

    invoke-virtual {p1, p2}, Lio/reactivex/z;->subscribe(Lio/reactivex/g0;)V

    return-void
.end method
