.class public final Lio/sentry/android/core/s1;
.super Ljava/lang/Object;
.source "ViewHierarchyEventProcessor.java"

# interfaces
.implements Lio/sentry/z;


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final a:Lio/sentry/android/core/SentryAndroidOptions;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1
    .param p1    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SentryAndroidOptions is required"

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p1, p0, Lio/sentry/android/core/s1;->a:Lio/sentry/android/core/SentryAndroidOptions;

    return-void
.end method

.method private static c(Landroid/view/View;Lio/sentry/protocol/y;)V
    .locals 5
    .param p0    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/protocol/y;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast p0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 5
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6
    invoke-static {v3}, Lio/sentry/android/core/s1;->f(Landroid/view/View;)Lio/sentry/protocol/y;

    move-result-object v4

    .line 7
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {v3, v4}, Lio/sentry/android/core/s1;->c(Landroid/view/View;Lio/sentry/protocol/y;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p1, v1}, Lio/sentry/protocol/y;->x(Ljava/util/List;)V

    return-void
.end method

.method public static d(Landroid/app/Activity;Lio/sentry/o0;)Lio/sentry/protocol/x;
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Missing activity for view hierarchy snapshot."

    invoke-interface {p1, p0, v2, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_1

    .line 3
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Missing window for view hierarchy snapshot."

    invoke-interface {p1, p0, v2, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2

    .line 5
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Missing decor view for view hierarchy snapshot."

    invoke-interface {p1, p0, v2, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 6
    :cond_2
    :try_start_0
    invoke-static {p0}, Lio/sentry/android/core/s1;->e(Landroid/view/View;)Lio/sentry/protocol/x;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Failed to process view hierarchy."

    invoke-interface {p1, v0, v2, p0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static e(Landroid/view/View;)Lio/sentry/protocol/x;
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    new-instance v1, Lio/sentry/protocol/x;

    const-string v2, "android_view_system"

    invoke-direct {v1, v2, v0}, Lio/sentry/protocol/x;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 3
    invoke-static {p0}, Lio/sentry/android/core/s1;->f(Landroid/view/View;)Lio/sentry/protocol/y;

    move-result-object v2

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {p0, v2}, Lio/sentry/android/core/s1;->c(Landroid/view/View;Lio/sentry/protocol/y;)V

    return-object v1
.end method

.method private static f(Landroid/view/View;)Lio/sentry/protocol/y;
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/protocol/y;

    invoke-direct {v0}, Lio/sentry/protocol/y;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 4
    :cond_0
    invoke-virtual {v0, v1}, Lio/sentry/protocol/y;->C(Ljava/lang/String;)V

    .line 5
    :try_start_0
    invoke-static {p0}, Lio/sentry/android/core/internal/gestures/j;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lio/sentry/protocol/y;->z(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :catchall_0
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/y;->F(Ljava/lang/Double;)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/y;->G(Ljava/lang/Double;)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/y;->E(Ljava/lang/Double;)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/y;->y(Ljava/lang/Double;)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/y;->w(Ljava/lang/Double;)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "gone"

    .line 13
    invoke-virtual {v0, p0}, Lio/sentry/protocol/y;->D(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "invisible"

    .line 14
    invoke-virtual {v0, p0}, Lio/sentry/protocol/y;->D(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p0, "visible"

    .line 15
    invoke-virtual {v0, p0}, Lio/sentry/protocol/y;->D(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/h4;
    .locals 3
    .param p1    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/sentry/h4;->H0()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/s1;->a:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachViewHierarchy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p2, p0, Lio/sentry/android/core/s1;->a:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "attachViewHierarchy is disabled."

    invoke-interface {p2, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 4
    :cond_1
    invoke-static {}, Lio/sentry/android/core/o0;->c()Lio/sentry/android/core/o0;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/o0;->b()Landroid/app/Activity;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/sentry/android/core/s1;->a:Lio/sentry/android/core/SentryAndroidOptions;

    .line 6
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    invoke-static {v0, v1}, Lio/sentry/android/core/s1;->d(Landroid/app/Activity;Lio/sentry/o0;)Lio/sentry/protocol/x;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {v0}, Lio/sentry/b;->b(Lio/sentry/protocol/x;)Lio/sentry/b;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/sentry/b0;->o(Lio/sentry/b;)V

    :cond_2
    return-object p1
.end method

.method public synthetic b(Lio/sentry/protocol/u;Lio/sentry/b0;)Lio/sentry/protocol/u;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/y;->b(Lio/sentry/z;Lio/sentry/protocol/u;Lio/sentry/b0;)Lio/sentry/protocol/u;

    move-result-object p1

    return-object p1
.end method
