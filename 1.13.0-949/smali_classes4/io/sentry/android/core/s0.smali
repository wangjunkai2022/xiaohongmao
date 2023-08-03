.class abstract Lio/sentry/android/core/s0;
.super Landroid/content/ContentProvider;
.source "EmptySecureContentProvider.java"


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final a:Lio/sentry/android/core/internal/util/d;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    new-instance v0, Lio/sentry/android/core/internal/util/d;

    invoke-direct {v0}, Lio/sentry/android/core/internal/util/d;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/s0;->a:Lio/sentry/android/core/internal/util/d;

    return-void
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object p1, p0, Lio/sentry/android/core/s0;->a:Lio/sentry/android/core/internal/util/d;

    invoke-virtual {p1, p0}, Lio/sentry/android/core/internal/util/d;->a(Landroid/content/ContentProvider;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    iget-object p1, p0, Lio/sentry/android/core/s0;->a:Lio/sentry/android/core/internal/util/d;

    invoke-virtual {p1, p0}, Lio/sentry/android/core/internal/util/d;->a(Landroid/content/ContentProvider;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    iget-object p1, p0, Lio/sentry/android/core/s0;->a:Lio/sentry/android/core/internal/util/d;

    invoke-virtual {p1, p0}, Lio/sentry/android/core/internal/util/d;->a(Landroid/content/ContentProvider;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object p1, p0, Lio/sentry/android/core/s0;->a:Lio/sentry/android/core/internal/util/d;

    invoke-virtual {p1, p0}, Lio/sentry/android/core/internal/util/d;->a(Landroid/content/ContentProvider;)V

    const/4 p1, 0x0

    return p1
.end method
