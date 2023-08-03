.class public final Ly4/e;
.super Ljava/lang/Object;
.source "AnalyticsController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006J\u0006\u0010\n\u001a\u00020\u0004\u00a8\u0006\u000f"
    }
    d2 = {
        "Ly4/e;",
        "",
        "Lcom/qennnsad/aknkaksd/analytics/data/events/Event;",
        "event",
        "",
        "e",
        "",
        "id",
        "username",
        "k",
        "j",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lu7/f;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly4/e;->a:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Ly4/e;Lcom/qennnsad/aknkaksd/analytics/data/events/Event;)V
    .locals 0

    invoke-static {p0, p1}, Ly4/e;->g(Ly4/e;Lcom/qennnsad/aknkaksd/analytics/data/events/Event;)V

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Ly4/e;->h(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static {p0}, Ly4/e;->i(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic d(Lcom/qennnsad/aknkaksd/analytics/data/events/Event;)Lcom/qennnsad/aknkaksd/analytics/data/events/Event;
    .locals 0

    invoke-static {p0}, Ly4/e;->f(Lcom/qennnsad/aknkaksd/analytics/data/events/Event;)Lcom/qennnsad/aknkaksd/analytics/data/events/Event;

    move-result-object p0

    return-object p0
.end method

.method private static final f(Lcom/qennnsad/aknkaksd/analytics/data/events/Event;)Lcom/qennnsad/aknkaksd/analytics/data/events/Event;
    .locals 1

    const-string v0, "$event"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final g(Ly4/e;Lcom/qennnsad/aknkaksd/analytics/data/events/Event;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recording event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Analytics"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "e"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventKt;->mapToPostHogProps(Lcom/qennnsad/aknkaksd/analytics/data/events/Event;)Lcom/posthog/android/s;

    move-result-object v0

    .line 3
    iget-object p0, p0, Ly4/e;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/posthog/android/PostHog;->U(Landroid/content/Context;)Lcom/posthog/android/PostHog;

    move-result-object p0

    .line 4
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/analytics/data/events/Event;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/posthog/android/PostHog;->f(Ljava/lang/String;Lcom/posthog/android/s;)V

    .line 5
    invoke-virtual {p0}, Lcom/posthog/android/PostHog;->k()V

    return-void
.end method

.method private static final h(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "$disposable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error recording event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Analytics"

    invoke-static {v1, v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lio/reactivex/disposables/c;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/disposables/c;->dispose()V

    :cond_0
    return-void
.end method

.method private static final i(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    const-string v0, "$disposable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lio/reactivex/disposables/c;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/disposables/c;->dispose()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final e(Lcom/qennnsad/aknkaksd/analytics/data/events/Event;)V
    .locals 4
    .param p1    # Lcom/qennnsad/aknkaksd/analytics/data/events/Event;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 2
    new-instance v1, Ly4/a;

    invoke-direct {v1, p1}, Ly4/a;-><init>(Lcom/qennnsad/aknkaksd/analytics/data/events/Event;)V

    invoke-static {v1}, Lio/reactivex/z;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/z;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/b;->d()Lio/reactivex/h0;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/z;->subscribeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p1

    .line 4
    new-instance v1, Ly4/d;

    invoke-direct {v1, p0}, Ly4/d;-><init>(Ly4/e;)V

    new-instance v2, Ly4/c;

    invoke-direct {v2, v0}, Ly4/c;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v3, Ly4/b;

    invoke-direct {v3, v0}, Ly4/b;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, v1, v2, v3}, Lio/reactivex/z;->subscribe(Ln7/g;Ln7/g;Ln7/a;)Lio/reactivex/disposables/c;

    move-result-object p1

    .line 5
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Ly4/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/posthog/android/PostHog;->U(Landroid/content/Context;)Lcom/posthog/android/PostHog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/posthog/android/PostHog;->L()V

    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "username"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xxx POSTHOG USER ID SET: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Analytics"

    invoke-static {v3, v2}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v2, Lcom/posthog/android/s;

    invoke-direct {v2}, Lcom/posthog/android/s;-><init>()V

    .line 3
    invoke-virtual {v2, v0, p1}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    .line 4
    invoke-virtual {v2, v1, p2}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    .line 5
    iget-object p2, p0, Ly4/e;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/posthog/android/PostHog;->U(Landroid/content/Context;)Lcom/posthog/android/PostHog;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Lcom/posthog/android/PostHog;->A(Ljava/lang/String;Lcom/posthog/android/s;)V

    return-void
.end method
