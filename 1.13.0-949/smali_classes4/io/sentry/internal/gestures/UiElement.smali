.class public final Lio/sentry/internal/gestures/UiElement;
.super Ljava/lang/Object;
.source "UiElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/internal/gestures/UiElement$Type;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field final b:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field final c:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field final d:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/internal/gestures/UiElement;->a:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Lio/sentry/internal/gestures/UiElement;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/sentry/internal/gestures/UiElement;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lio/sentry/internal/gestures/UiElement;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/internal/gestures/UiElement;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/internal/gestures/UiElement;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/internal/gestures/UiElement;->d:Ljava/lang/String;

    const-string v1, "UiElement.tag can\'t be null"

    invoke-static {v0, v1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/internal/gestures/UiElement;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/internal/gestures/UiElement;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/internal/gestures/UiElement;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lio/sentry/internal/gestures/UiElement;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lio/sentry/internal/gestures/UiElement;

    .line 3
    iget-object v2, p0, Lio/sentry/internal/gestures/UiElement;->b:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/internal/gestures/UiElement;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lio/sentry/util/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/internal/gestures/UiElement;->c:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/internal/gestures/UiElement;->c:Ljava/lang/String;

    .line 4
    invoke-static {v2, v3}, Lio/sentry/util/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/internal/gestures/UiElement;->d:Ljava/lang/String;

    iget-object p1, p1, Lio/sentry/internal/gestures/UiElement;->d:Ljava/lang/String;

    .line 5
    invoke-static {v2, p1}, Lio/sentry/util/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lio/sentry/internal/gestures/UiElement;->a:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/sentry/internal/gestures/UiElement;->c:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/sentry/internal/gestures/UiElement;->d:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lio/sentry/util/l;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
