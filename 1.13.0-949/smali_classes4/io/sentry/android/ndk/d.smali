.class public final Lio/sentry/android/ndk/d;
.super Ljava/lang/Object;
.source "NdkScopeObserver.java"

# interfaces
.implements Lio/sentry/q0;


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final a:Lio/sentry/SentryOptions;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lio/sentry/android/ndk/c;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/sentry/android/ndk/NativeScope;

    invoke-direct {v0}, Lio/sentry/android/ndk/NativeScope;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/sentry/android/ndk/d;-><init>(Lio/sentry/SentryOptions;Lio/sentry/android/ndk/c;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/android/ndk/c;)V
    .locals 1
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/ndk/c;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The SentryOptions object is required."

    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/android/ndk/d;->a:Lio/sentry/SentryOptions;

    const-string p1, "The NativeScope object is required."

    .line 4
    invoke-static {p2, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/ndk/c;

    iput-object p1, p0, Lio/sentry/android/ndk/d;->b:Lio/sentry/android/ndk/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/ndk/d;->b:Lio/sentry/android/ndk/c;

    invoke-interface {v0, p1, p2}, Lio/sentry/android/ndk/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 2
    iget-object v0, p0, Lio/sentry/android/ndk/d;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Scope sync setTag(%s) has an error."

    invoke-interface {v0, v1, p2, p1, v2}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/ndk/d;->b:Lio/sentry/android/ndk/c;

    invoke-interface {v0, p1}, Lio/sentry/android/ndk/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lio/sentry/android/ndk/d;->a:Lio/sentry/SentryOptions;

    .line 3
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "Scope sync removeExtra(%s) has an error."

    .line 4
    invoke-interface {v1, v2, v0, p1, v3}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/ndk/d;->b:Lio/sentry/android/ndk/c;

    invoke-interface {v0, p1}, Lio/sentry/android/ndk/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lio/sentry/android/ndk/d;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "Scope sync removeTag(%s) has an error."

    invoke-interface {v1, v2, v0, p1, v3}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/ndk/d;->b:Lio/sentry/android/ndk/c;

    invoke-interface {v0, p1, p2}, Lio/sentry/android/ndk/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 2
    iget-object v0, p0, Lio/sentry/android/ndk/d;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Scope sync setExtra(%s) has an error."

    invoke-interface {v0, v1, p2, p1, v2}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public f(Lio/sentry/protocol/w;)V
    .locals 4
    .param p1    # Lio/sentry/protocol/w;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lio/sentry/android/ndk/d;->b:Lio/sentry/android/ndk/c;

    invoke-interface {p1}, Lio/sentry/android/ndk/c;->f()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/android/ndk/d;->b:Lio/sentry/android/ndk/c;

    invoke-virtual {p1}, Lio/sentry/protocol/w;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/sentry/protocol/w;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/sentry/protocol/w;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/sentry/protocol/w;->n()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, v3, p1}, Lio/sentry/android/ndk/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lio/sentry/android/ndk/d;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Scope sync setUser has an error."

    invoke-interface {v0, v1, p1, v3, v2}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public g(Lio/sentry/f;)V
    .locals 9
    .param p1    # Lio/sentry/f;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/f;->k()Lio/sentry/SentryLevel;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/sentry/f;->k()Lio/sentry/SentryLevel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 3
    :goto_0
    invoke-virtual {p1}, Lio/sentry/f;->m()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/k;->g(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {p1}, Lio/sentry/f;->j()Ljava/util/Map;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 6
    iget-object v4, p0, Lio/sentry/android/ndk/d;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/u0;

    move-result-object v4

    invoke-interface {v4, v1}, Lio/sentry/u0;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    move-object v7, v2

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 7
    :try_start_2
    iget-object v4, p0, Lio/sentry/android/ndk/d;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v7, "Breadcrumb data is not serializable."

    new-array v8, v0, [Ljava/lang/Object;

    invoke-interface {v4, v5, v1, v7, v8}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :goto_2
    iget-object v1, p0, Lio/sentry/android/ndk/d;->b:Lio/sentry/android/ndk/c;

    .line 9
    invoke-virtual {p1}, Lio/sentry/f;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/sentry/f;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lio/sentry/f;->n()Ljava/lang/String;

    move-result-object p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p1

    .line 10
    invoke-interface/range {v1 .. v7}, Lio/sentry/android/ndk/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 11
    iget-object v1, p0, Lio/sentry/android/ndk/d;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Scope sync addBreadcrumb has an error."

    invoke-interface {v1, v2, p1, v3, v0}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void
.end method
