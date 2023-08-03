.class public Lio/sentry/android/core/internal/util/h;
.super Ljava/lang/Object;
.source "FirstDrawDoneListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ObsoleteSdkInt"
    }
.end annotation

.annotation build Landroidx/annotation/RequiresApi;
    api = 0x10
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Ljava/lang/Runnable;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/h;->a:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    iput-object p2, p0, Lio/sentry/android/core/internal/util/h;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lio/sentry/android/core/internal/util/h;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/util/h;->d(Landroid/view/View;)V

    return-void
.end method

.method private static b(Landroid/view/View;Lio/sentry/android/core/m0;)Z
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/android/core/m0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lio/sentry/android/core/internal/util/h;->c(Landroid/view/View;Lio/sentry/android/core/m0;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static c(Landroid/view/View;Lio/sentry/android/core/m0;)Z
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/android/core/m0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/sentry/android/core/m0;->d()I

    move-result p1

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public static e(Landroid/view/View;Ljava/lang/Runnable;Lio/sentry/android/core/m0;)V
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/core/m0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/sentry/android/core/internal/util/h;

    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/internal/util/h;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {p2}, Lio/sentry/android/core/m0;->d()I

    move-result p1

    const/16 v1, 0x1a

    if-ge p1, v1, :cond_0

    .line 3
    invoke-static {p0, p2}, Lio/sentry/android/core/internal/util/h;->b(Landroid/view/View;Lio/sentry/android/core/m0;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lio/sentry/android/core/internal/util/h$a;

    invoke-direct {p1, v0}, Lio/sentry/android/core/internal/util/h$a;-><init>(Lio/sentry/android/core/internal/util/h;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/util/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lio/sentry/android/core/internal/util/g;

    invoke-direct {v2, p0, v0}, Lio/sentry/android/core/internal/util/g;-><init>(Lio/sentry/android/core/internal/util/h;Landroid/view/View;)V

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4
    iget-object v0, p0, Lio/sentry/android/core/internal/util/h;->a:Landroid/os/Handler;

    iget-object v1, p0, Lio/sentry/android/core/internal/util/h;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
