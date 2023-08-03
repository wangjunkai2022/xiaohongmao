.class public final Lio/sentry/android/core/internal/gestures/g;
.super Ljava/lang/Object;
.source "SentryGestureListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/internal/gestures/g$b;
    }
.end annotation

.annotation build Lm8/a$c;
.end annotation


# static fields
.field static final h:Ljava/lang/String; = "ui.action"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lio/sentry/n0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lio/sentry/android/core/SentryAndroidOptions;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private d:Lio/sentry/internal/gestures/UiElement;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private e:Lio/sentry/w0;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final g:Lio/sentry/android/core/internal/gestures/g$b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lio/sentry/n0;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->d:Lio/sentry/internal/gestures/UiElement;

    .line 3
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->e:Lio/sentry/w0;

    .line 4
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->f:Ljava/lang/String;

    .line 5
    new-instance v1, Lio/sentry/android/core/internal/gestures/g$b;

    invoke-direct {v1, v0}, Lio/sentry/android/core/internal/gestures/g$b;-><init>(Lio/sentry/android/core/internal/gestures/g$a;)V

    iput-object v1, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$b;

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->a:Ljava/lang/ref/WeakReference;

    .line 7
    iput-object p2, p0, Lio/sentry/android/core/internal/gestures/g;->b:Lio/sentry/n0;

    .line 8
    iput-object p3, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    return-void
.end method

.method public static synthetic a(Lio/sentry/android/core/internal/gestures/g;Lio/sentry/r2;Lio/sentry/w0;Lio/sentry/w0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/internal/gestures/g;->j(Lio/sentry/r2;Lio/sentry/w0;Lio/sentry/w0;)V

    return-void
.end method

.method public static synthetic b(Lio/sentry/android/core/internal/gestures/g;Lio/sentry/r2;Lio/sentry/w0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/internal/gestures/g;->k(Lio/sentry/r2;Lio/sentry/w0;)V

    return-void
.end method

.method public static synthetic c(Lio/sentry/android/core/internal/gestures/g;Lio/sentry/w0;Lio/sentry/r2;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/internal/gestures/g;->l(Lio/sentry/w0;Lio/sentry/r2;)V

    return-void
.end method

.method public static synthetic d(Lio/sentry/android/core/internal/gestures/g;Lio/sentry/r2;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/gestures/g;->m(Lio/sentry/r2;)V

    return-void
.end method

.method private e(Lio/sentry/internal/gestures/UiElement;Ljava/lang/String;Ljava/util/Map;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1    # Lio/sentry/internal/gestures/UiElement;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Landroid/view/MotionEvent;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/internal/gestures/UiElement;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableUserInteractionBreadcrumbs()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lio/sentry/b0;

    invoke-direct {v0}, Lio/sentry/b0;-><init>()V

    const-string v1, "android:motionEvent"

    .line 3
    invoke-virtual {v0, v1, p4}, Lio/sentry/b0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lio/sentry/internal/gestures/UiElement;->e()Ljava/lang/Object;

    move-result-object p4

    const-string v1, "android:view"

    invoke-virtual {v0, v1, p4}, Lio/sentry/b0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object p4, p0, Lio/sentry/android/core/internal/gestures/g;->b:Lio/sentry/n0;

    .line 6
    invoke-virtual {p1}, Lio/sentry/internal/gestures/UiElement;->c()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/sentry/internal/gestures/UiElement;->a()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {p1}, Lio/sentry/internal/gestures/UiElement;->d()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p2, v1, v2, p1, p3}, Lio/sentry/f;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/sentry/f;

    move-result-object p1

    .line 10
    invoke-interface {p4, p1, v0}, Lio/sentry/n0;->s(Lio/sentry/f;Lio/sentry/b0;)V

    return-void
.end method

.method private h(Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, ". No breadcrumb captured."

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 3
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity is null in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-interface {v0, v4, p1, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 7
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Window is null in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    invoke-interface {v0, v4, p1, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 9
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 11
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DecorView is null in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    .line 12
    invoke-interface {v0, v4, p1, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_2
    return-object v0
.end method

.method private i(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic j(Lio/sentry/r2;Lio/sentry/w0;Lio/sentry/w0;)V
    .locals 2

    if-nez p3, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Lio/sentry/r2;->O(Lio/sentry/w0;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    invoke-interface {p2}, Lio/sentry/w0;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "Transaction \'%s\' won\'t be bound to the Scope since there\'s one already in there."

    .line 5
    invoke-interface {p1, p3, p2, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic k(Lio/sentry/r2;Lio/sentry/w0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->e:Lio/sentry/w0;

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/sentry/r2;->h()V

    :cond_0
    return-void
.end method

.method private synthetic l(Lio/sentry/w0;Lio/sentry/r2;)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Lio/sentry/android/core/internal/gestures/g;->f(Lio/sentry/r2;Lio/sentry/w0;)V

    return-void
.end method

.method private synthetic m(Lio/sentry/r2;)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/sentry/android/core/internal/gestures/g;->g(Lio/sentry/r2;)V

    return-void
.end method

.method private o(Lio/sentry/internal/gestures/UiElement;Ljava/lang/String;)V
    .locals 6
    .param p1    # Lio/sentry/internal/gestures/UiElement;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableUserInteractionTracing()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Activity is null, no transaction captured."

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/sentry/internal/gestures/UiElement;->b()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/g;->d:Lio/sentry/internal/gestures/UiElement;

    .line 6
    iget-object v4, p0, Lio/sentry/android/core/internal/gestures/g;->e:Lio/sentry/w0;

    if-eqz v4, :cond_4

    .line 7
    invoke-virtual {p1, v3}, Lio/sentry/internal/gestures/UiElement;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/g;->f:Ljava/lang/String;

    .line 8
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/g;->e:Lio/sentry/w0;

    .line 9
    invoke-interface {v3}, Lio/sentry/v0;->b()Z

    move-result v3

    if-nez v3, :cond_3

    .line 10
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 11
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The view with id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already has an ongoing transaction assigned. Rescheduling finish"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->e:Lio/sentry/w0;

    invoke-interface {p1}, Lio/sentry/w0;->C()V

    :cond_2
    return-void

    .line 15
    :cond_3
    sget-object v1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-virtual {p0, v1}, Lio/sentry/android/core/internal/gestures/g;->p(Lio/sentry/SpanStatus;)V

    .line 16
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/gestures/g;->i(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ui.action."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    new-instance v2, Lio/sentry/r5;

    invoke-direct {v2}, Lio/sentry/r5;-><init>()V

    const/4 v3, 0x1

    .line 19
    invoke-virtual {v2, v3}, Lio/sentry/r5;->n(Z)V

    .line 20
    iget-object v4, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/sentry/r5;->j(Ljava/lang/Long;)V

    .line 21
    invoke-virtual {v2, v3}, Lio/sentry/r5;->m(Z)V

    .line 22
    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/g;->b:Lio/sentry/n0;

    new-instance v4, Lio/sentry/p5;

    sget-object v5, Lio/sentry/protocol/TransactionNameSource;->COMPONENT:Lio/sentry/protocol/TransactionNameSource;

    invoke-direct {v4, v0, v5, v1}, Lio/sentry/p5;-><init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;)V

    .line 23
    invoke-interface {v3, v4, v2}, Lio/sentry/n0;->N(Lio/sentry/p5;Lio/sentry/r5;)Lio/sentry/w0;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/g;->b:Lio/sentry/n0;

    new-instance v2, Lio/sentry/android/core/internal/gestures/f;

    invoke-direct {v2, p0, v0}, Lio/sentry/android/core/internal/gestures/f;-><init>(Lio/sentry/android/core/internal/gestures/g;Lio/sentry/w0;)V

    invoke-interface {v1, v2}, Lio/sentry/n0;->t(Lio/sentry/s2;)V

    .line 25
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->e:Lio/sentry/w0;

    .line 26
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->d:Lio/sentry/internal/gestures/UiElement;

    .line 27
    iput-object p2, p0, Lio/sentry/android/core/internal/gestures/g;->f:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method f(Lio/sentry/r2;Lio/sentry/w0;)V
    .locals 1
    .param p1    # Lio/sentry/r2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/w0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/n;
    .end annotation

    new-instance v0, Lio/sentry/android/core/internal/gestures/d;

    invoke-direct {v0, p0, p1, p2}, Lio/sentry/android/core/internal/gestures/d;-><init>(Lio/sentry/android/core/internal/gestures/g;Lio/sentry/r2;Lio/sentry/w0;)V

    invoke-virtual {p1, v0}, Lio/sentry/r2;->T(Lio/sentry/r2$b;)V

    return-void
.end method

.method g(Lio/sentry/r2;)V
    .locals 1
    .param p1    # Lio/sentry/r2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/n;
    .end annotation

    new-instance v0, Lio/sentry/android/core/internal/gestures/c;

    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/internal/gestures/c;-><init>(Lio/sentry/android/core/internal/gestures/g;Lio/sentry/r2;)V

    invoke-virtual {p1, v0}, Lio/sentry/r2;->T(Lio/sentry/r2$b;)V

    return-void
.end method

.method public n(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "onUp"

    .line 1
    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/gestures/g;->h(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$b;

    invoke-static {v1}, Lio/sentry/android/core/internal/gestures/g$b;->a(Lio/sentry/android/core/internal/gestures/g$b;)Lio/sentry/internal/gestures/UiElement;

    move-result-object v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$b;

    invoke-static {v0}, Lio/sentry/android/core/internal/gestures/g$b;->b(Lio/sentry/android/core/internal/gestures/g$b;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 5
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Unable to define scroll type. No breadcrumb captured."

    .line 6
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$b;

    invoke-static {v0, p1}, Lio/sentry/android/core/internal/gestures/g$b;->d(Lio/sentry/android/core/internal/gestures/g$b;Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$b;

    .line 9
    invoke-static {v2}, Lio/sentry/android/core/internal/gestures/g$b;->b(Lio/sentry/android/core/internal/gestures/g$b;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "direction"

    .line 10
    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 11
    invoke-direct {p0, v1, v2, v0, p1}, Lio/sentry/android/core/internal/gestures/g;->e(Lio/sentry/internal/gestures/UiElement;Ljava/lang/String;Ljava/util/Map;Landroid/view/MotionEvent;)V

    .line 12
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$b;

    invoke-static {p1}, Lio/sentry/android/core/internal/gestures/g$b;->b(Lio/sentry/android/core/internal/gestures/g$b;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lio/sentry/android/core/internal/gestures/g;->o(Lio/sentry/internal/gestures/UiElement;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$b;

    invoke-static {p1}, Lio/sentry/android/core/internal/gestures/g$b;->e(Lio/sentry/android/core/internal/gestures/g$b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$b;

    invoke-static {v1}, Lio/sentry/android/core/internal/gestures/g$b;->e(Lio/sentry/android/core/internal/gestures/g$b;)V

    .line 2
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$b;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v1, v2}, Lio/sentry/android/core/internal/gestures/g$b;->f(Lio/sentry/android/core/internal/gestures/g$b;F)F

    .line 3
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$b;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v1, p1}, Lio/sentry/android/core/internal/gestures/g$b;->g(Lio/sentry/android/core/internal/gestures/g$b;F)F

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$b;

    const-string p2, "swipe"

    invoke-static {p1, p2}, Lio/sentry/android/core/internal/gestures/g$b;->c(Lio/sentry/android/core/internal/gestures/g$b;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string p2, "onScroll"

    .line 1
    invoke-direct {p0, p2}, Lio/sentry/android/core/internal/gestures/g;->h(Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p4, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$b;

    invoke-static {p4}, Lio/sentry/android/core/internal/gestures/g$b;->b(Lio/sentry/android/core/internal/gestures/g$b;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_2

    .line 3
    iget-object p4, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sget-object v1, Lio/sentry/internal/gestures/UiElement$Type;->SCROLLABLE:Lio/sentry/internal/gestures/UiElement$Type;

    .line 5
    invoke-static {p4, p2, v0, p1, v1}, Lio/sentry/android/core/internal/gestures/j;->a(Lio/sentry/android/core/SentryAndroidOptions;Landroid/view/View;FFLio/sentry/internal/gestures/UiElement$Type;)Lio/sentry/internal/gestures/UiElement;

    move-result-object p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 7
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array p4, p3, [Ljava/lang/Object;

    const-string v0, "Unable to find scroll target. No breadcrumb captured."

    .line 8
    invoke-interface {p1, p2, v0, p4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return p3

    .line 9
    :cond_1
    iget-object p2, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 10
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object p4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scroll target found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Lio/sentry/internal/gestures/UiElement;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, p3, [Ljava/lang/Object;

    invoke-interface {p2, p4, v0, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object p2, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$b;

    invoke-static {p2, p1}, Lio/sentry/android/core/internal/gestures/g$b;->h(Lio/sentry/android/core/internal/gestures/g$b;Lio/sentry/internal/gestures/UiElement;)V

    .line 13
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$b;

    const-string p2, "scroll"

    invoke-static {p1, p2}, Lio/sentry/android/core/internal/gestures/g$b;->c(Lio/sentry/android/core/internal/gestures/g$b;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_0
    return p3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "onSingleTapUp"

    .line 1
    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/gestures/g;->h(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sget-object v5, Lio/sentry/internal/gestures/UiElement$Type;->CLICKABLE:Lio/sentry/internal/gestures/UiElement$Type;

    .line 4
    invoke-static {v2, v0, v3, v4, v5}, Lio/sentry/android/core/internal/gestures/j;->a(Lio/sentry/android/core/SentryAndroidOptions;Landroid/view/View;FFLio/sentry/internal/gestures/UiElement$Type;)Lio/sentry/internal/gestures/UiElement;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 6
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Unable to find click target. No breadcrumb captured."

    .line 7
    invoke-interface {p1, v0, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 8
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "click"

    invoke-direct {p0, v0, v3, v2, p1}, Lio/sentry/android/core/internal/gestures/g;->e(Lio/sentry/internal/gestures/UiElement;Ljava/lang/String;Ljava/util/Map;Landroid/view/MotionEvent;)V

    .line 9
    invoke-direct {p0, v0, v3}, Lio/sentry/android/core/internal/gestures/g;->o(Lio/sentry/internal/gestures/UiElement;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v1
.end method

.method p(Lio/sentry/SpanStatus;)V
    .locals 1
    .param p1    # Lio/sentry/SpanStatus;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->e:Lio/sentry/w0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lio/sentry/v0;->t(Lio/sentry/SpanStatus;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->b:Lio/sentry/n0;

    new-instance v0, Lio/sentry/android/core/internal/gestures/e;

    invoke-direct {v0, p0}, Lio/sentry/android/core/internal/gestures/e;-><init>(Lio/sentry/android/core/internal/gestures/g;)V

    invoke-interface {p1, v0}, Lio/sentry/n0;->t(Lio/sentry/s2;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->e:Lio/sentry/w0;

    .line 5
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->d:Lio/sentry/internal/gestures/UiElement;

    if-eqz v0, :cond_1

    .line 6
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->d:Lio/sentry/internal/gestures/UiElement;

    .line 7
    :cond_1
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->f:Ljava/lang/String;

    return-void
.end method
