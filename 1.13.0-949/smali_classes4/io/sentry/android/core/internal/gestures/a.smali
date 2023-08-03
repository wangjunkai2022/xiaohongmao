.class public final Lio/sentry/android/core/internal/gestures/a;
.super Ljava/lang/Object;
.source "AndroidViewGestureTargetLocator.java"

# interfaces
.implements Lio/sentry/internal/gestures/a;


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final a:Z

.field private final b:[I


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/a;->b:[I

    .line 3
    iput-boolean p1, p0, Lio/sentry/android/core/internal/gestures/a;->a:Z

    return-void
.end method

.method private b(Landroid/view/View;)Lio/sentry/internal/gestures/UiElement;
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Lio/sentry/android/core/internal/gestures/j;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 4
    :cond_0
    new-instance v3, Lio/sentry/internal/gestures/UiElement;

    invoke-direct {v3, p1, v2, v1, v0}, Lio/sentry/internal/gestures/UiElement;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    return-object v0
.end method

.method private static c(Landroid/view/View;Z)Z
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-class p1, Landroidx/core/view/ScrollingView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private static d(Landroid/view/View;Z)Z
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lio/sentry/android/core/internal/gestures/a;->c(Landroid/view/View;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const-class p1, Landroid/widget/AbsListView;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    const-class p1, Landroid/widget/ScrollView;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static e(Landroid/view/View;)Z
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private f(Landroid/view/View;FF)Z
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/a;->b:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/a;->b:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    .line 3
    aget v0, v0, v3

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v5, v2

    cmpg-float v5, p2, v5

    if-ltz v5, :cond_0

    add-int/2addr v2, v4

    int-to-float v2, v2

    cmpl-float p2, p2, v2

    if-gtz p2, :cond_0

    int-to-float p2, v0

    cmpg-float p2, p3, p2

    if-ltz p2, :cond_0

    add-int/2addr v0, p1

    int-to-float p1, v0

    cmpl-float p1, p3, p1

    if-gtz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/Object;FFLio/sentry/internal/gestures/UiElement$Type;)Lio/sentry/internal/gestures/UiElement;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    check-cast p1, Landroid/view/View;

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/internal/gestures/a;->f(Landroid/view/View;FF)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4
    sget-object p2, Lio/sentry/internal/gestures/UiElement$Type;->CLICKABLE:Lio/sentry/internal/gestures/UiElement$Type;

    if-ne p4, p2, :cond_1

    invoke-static {p1}, Lio/sentry/android/core/internal/gestures/a;->e(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/gestures/a;->b(Landroid/view/View;)Lio/sentry/internal/gestures/UiElement;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    sget-object p2, Lio/sentry/internal/gestures/UiElement$Type;->SCROLLABLE:Lio/sentry/internal/gestures/UiElement$Type;

    if-ne p4, p2, :cond_2

    iget-boolean p2, p0, Lio/sentry/android/core/internal/gestures/a;->a:Z

    .line 7
    invoke-static {p1, p2}, Lio/sentry/android/core/internal/gestures/a;->d(Landroid/view/View;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/gestures/a;->b(Landroid/view/View;)Lio/sentry/internal/gestures/UiElement;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method
