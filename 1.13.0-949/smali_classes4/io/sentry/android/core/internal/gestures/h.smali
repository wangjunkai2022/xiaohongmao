.class public final Lio/sentry/android/core/internal/gestures/h;
.super Lio/sentry/android/core/internal/gestures/k;
.source "SentryWindowCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/internal/gestures/h$b;
    }
.end annotation

.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final b:Landroid/view/Window$Callback;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lio/sentry/android/core/internal/gestures/g;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Landroidx/core/view/GestureDetectorCompat;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lio/sentry/SentryOptions;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final f:Lio/sentry/android/core/internal/gestures/h$b;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/Window$Callback;Landroid/content/Context;Lio/sentry/android/core/internal/gestures/g;Lio/sentry/SentryOptions;)V
    .locals 6
    .param p1    # Landroid/view/Window$Callback;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/android/core/internal/gestures/g;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lio/sentry/SentryOptions;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    new-instance v2, Landroidx/core/view/GestureDetectorCompat;

    invoke-direct {v2, p2, p3}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance v5, Lio/sentry/android/core/internal/gestures/h$a;

    invoke-direct {v5}, Lio/sentry/android/core/internal/gestures/h$a;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/sentry/android/core/internal/gestures/h;-><init>(Landroid/view/Window$Callback;Landroidx/core/view/GestureDetectorCompat;Lio/sentry/android/core/internal/gestures/g;Lio/sentry/SentryOptions;Lio/sentry/android/core/internal/gestures/h$b;)V

    return-void
.end method

.method constructor <init>(Landroid/view/Window$Callback;Landroidx/core/view/GestureDetectorCompat;Lio/sentry/android/core/internal/gestures/g;Lio/sentry/SentryOptions;Lio/sentry/android/core/internal/gestures/h$b;)V
    .locals 0
    .param p1    # Landroid/view/Window$Callback;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/GestureDetectorCompat;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/android/core/internal/gestures/g;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lio/sentry/SentryOptions;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lio/sentry/android/core/internal/gestures/h$b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/gestures/k;-><init>(Landroid/view/Window$Callback;)V

    .line 3
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/h;->b:Landroid/view/Window$Callback;

    .line 4
    iput-object p3, p0, Lio/sentry/android/core/internal/gestures/h;->c:Lio/sentry/android/core/internal/gestures/g;

    .line 5
    iput-object p4, p0, Lio/sentry/android/core/internal/gestures/h;->e:Lio/sentry/SentryOptions;

    .line 6
    iput-object p2, p0, Lio/sentry/android/core/internal/gestures/h;->d:Landroidx/core/view/GestureDetectorCompat;

    .line 7
    iput-object p5, p0, Lio/sentry/android/core/internal/gestures/h;->f:Lio/sentry/android/core/internal/gestures/h$b;

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/h;->d:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/h;->c:Lio/sentry/android/core/internal/gestures/g;

    invoke-virtual {v0, p1}, Lio/sentry/android/core/internal/gestures/g;->n(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/view/Window$Callback;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/h;->b:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/h;->c:Lio/sentry/android/core/internal/gestures/g;

    sget-object v1, Lio/sentry/SpanStatus;->CANCELLED:Lio/sentry/SpanStatus;

    invoke-virtual {v0, v1}, Lio/sentry/android/core/internal/gestures/g;->p(Lio/sentry/SpanStatus;)V

    return-void
.end method

.method public bridge synthetic dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Lio/sentry/android/core/internal/gestures/k;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Lio/sentry/android/core/internal/gestures/k;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Lio/sentry/android/core/internal/gestures/k;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Lio/sentry/android/core/internal/gestures/k;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/h;->f:Lio/sentry/android/core/internal/gestures/h$b;

    invoke-interface {v0, p1}, Lio/sentry/android/core/internal/gestures/h$b;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/gestures/h;->b(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 4
    :try_start_1
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/h;->e:Lio/sentry/SentryOptions;

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/h;->e:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error dispatching touch event"

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 6
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 7
    throw p1

    .line 8
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lio/sentry/android/core/internal/gestures/k;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Lio/sentry/android/core/internal/gestures/k;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    invoke-super {p0, p1}, Lio/sentry/android/core/internal/gestures/k;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public bridge synthetic onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    invoke-super {p0, p1}, Lio/sentry/android/core/internal/gestures/k;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public bridge synthetic onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lio/sentry/android/core/internal/gestures/k;->onAttachedToWindow()V

    return-void
.end method

.method public bridge synthetic onContentChanged()V
    .locals 0

    invoke-super {p0}, Lio/sentry/android/core/internal/gestures/k;->onContentChanged()V

    return-void
.end method

.method public bridge synthetic onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0
    .param p2    # Landroid/view/Menu;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lio/sentry/android/core/internal/gestures/k;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onCreatePanelView(I)Landroid/view/View;
    .locals 0
    .annotation build Lm8/h;
    .end annotation

    invoke-super {p0, p1}, Lio/sentry/android/core/internal/gestures/k;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lio/sentry/android/core/internal/gestures/k;->onDetachedFromWindow()V

    return-void
.end method

.method public bridge synthetic onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0
    .param p2    # Landroid/view/MenuItem;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lio/sentry/android/core/internal/gestures/k;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0
    .param p2    # Landroid/view/Menu;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lio/sentry/android/core/internal/gestures/k;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p2    # Landroid/view/Menu;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lio/sentry/android/core/internal/gestures/k;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public bridge synthetic onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Landroid/view/Menu;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lio/sentry/android/core/internal/gestures/k;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onSearchRequested()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lio/sentry/android/core/internal/gestures/k;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lio/sentry/android/core/internal/gestures/k;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1}, Lio/sentry/android/core/internal/gestures/k;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public bridge synthetic onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lio/sentry/android/core/internal/gestures/k;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public bridge synthetic onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0
    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/sentry/android/core/internal/gestures/k;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lio/sentry/android/core/internal/gestures/k;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
