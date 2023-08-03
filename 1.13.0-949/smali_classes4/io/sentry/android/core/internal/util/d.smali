.class public final Lio/sentry/android/core/internal/util/d;
.super Ljava/lang/Object;
.source "ContentProviderSecurityChecker.java"


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final a:Lio/sentry/android/core/m0;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/android/core/m0;

    invoke-static {}, Lio/sentry/u1;->e()Lio/sentry/u1;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/android/core/m0;-><init>(Lio/sentry/o0;)V

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/util/d;-><init>(Lio/sentry/android/core/m0;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/android/core/m0;)V
    .locals 0
    .param p1    # Lio/sentry/android/core/m0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/sentry/android/core/internal/util/d;->a:Lio/sentry/android/core/m0;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentProvider;)V
    .locals 2
    .param p1    # Landroid/content/ContentProvider;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/util/d;->a:Lio/sentry/android/core/m0;

    invoke-virtual {v0}, Lio/sentry/android/core/m0;->d()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Provider does not allow for granting of Uri permissions"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method
