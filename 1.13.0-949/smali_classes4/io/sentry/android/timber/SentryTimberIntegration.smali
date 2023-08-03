.class public final Lio/sentry/android/timber/SentryTimberIntegration;
.super Ljava/lang/Object;
.source "SentryTimberIntegration.kt"

# interfaces
.implements Lio/sentry/z0;
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0018\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\t\u001a\u00020\u0007H\u0016R\u0016\u0010\u000c\u001a\u00020\n8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u000bR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0016\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0019\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0013\u001a\u0004\u0008\u0018\u0010\u0015\u00a8\u0006\u001c"
    }
    d2 = {
        "Lio/sentry/android/timber/SentryTimberIntegration;",
        "Lio/sentry/z0;",
        "Ljava/io/Closeable;",
        "Lio/sentry/n0;",
        "hub",
        "Lio/sentry/SentryOptions;",
        "options",
        "",
        "a",
        "close",
        "Lio/sentry/android/timber/e;",
        "Lio/sentry/android/timber/e;",
        "tree",
        "Lio/sentry/o0;",
        "b",
        "Lio/sentry/o0;",
        "logger",
        "Lio/sentry/SentryLevel;",
        "c",
        "Lio/sentry/SentryLevel;",
        "p",
        "()Lio/sentry/SentryLevel;",
        "minEventLevel",
        "d",
        "k",
        "minBreadcrumbLevel",
        "<init>",
        "(Lio/sentry/SentryLevel;Lio/sentry/SentryLevel;)V",
        "sentry-android-timber_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x3
    }
.end annotation


# instance fields
.field private a:Lio/sentry/android/timber/e;

.field private b:Lio/sentry/o0;

.field private final c:Lio/sentry/SentryLevel;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lio/sentry/SentryLevel;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lio/sentry/android/timber/SentryTimberIntegration;-><init>(Lio/sentry/SentryLevel;Lio/sentry/SentryLevel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryLevel;Lio/sentry/SentryLevel;)V
    .locals 1
    .param p1    # Lio/sentry/SentryLevel;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryLevel;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "minEventLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minBreadcrumbLevel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/timber/SentryTimberIntegration;->c:Lio/sentry/SentryLevel;

    iput-object p2, p0, Lio/sentry/android/timber/SentryTimberIntegration;->d:Lio/sentry/SentryLevel;

    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/SentryLevel;Lio/sentry/SentryLevel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 2
    sget-object p1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 3
    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    :cond_1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/timber/SentryTimberIntegration;-><init>(Lio/sentry/SentryLevel;Lio/sentry/SentryLevel;)V

    return-void
.end method

.method public static final synthetic b(Lio/sentry/android/timber/SentryTimberIntegration;)Lio/sentry/o0;
    .locals 1

    iget-object p0, p0, Lio/sentry/android/timber/SentryTimberIntegration;->b:Lio/sentry/o0;

    if-nez p0, :cond_0

    const-string v0, "logger"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic d(Lio/sentry/android/timber/SentryTimberIntegration;)Lio/sentry/android/timber/e;
    .locals 1

    iget-object p0, p0, Lio/sentry/android/timber/SentryTimberIntegration;->a:Lio/sentry/android/timber/e;

    if-nez p0, :cond_0

    const-string v0, "tree"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic h(Lio/sentry/android/timber/SentryTimberIntegration;Lio/sentry/o0;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/timber/SentryTimberIntegration;->b:Lio/sentry/o0;

    return-void
.end method

.method public static final synthetic i(Lio/sentry/android/timber/SentryTimberIntegration;Lio/sentry/android/timber/e;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/timber/SentryTimberIntegration;->a:Lio/sentry/android/timber/e;

    return-void
.end method


# virtual methods
.method public a(Lio/sentry/n0;Lio/sentry/SentryOptions;)V
    .locals 3
    .param p1    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "hub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/l;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "maven:io.sentry:sentry-android-timber"

    const-string v2, "6.13.0"

    invoke-virtual {v0, v1, v2}, Lio/sentry/protocol/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    const-string v0, "options.logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lio/sentry/android/timber/SentryTimberIntegration;->b:Lio/sentry/o0;

    .line 3
    new-instance p2, Lio/sentry/android/timber/e;

    iget-object v0, p0, Lio/sentry/android/timber/SentryTimberIntegration;->c:Lio/sentry/SentryLevel;

    iget-object v1, p0, Lio/sentry/android/timber/SentryTimberIntegration;->d:Lio/sentry/SentryLevel;

    invoke-direct {p2, p1, v0, v1}, Lio/sentry/android/timber/e;-><init>(Lio/sentry/n0;Lio/sentry/SentryLevel;Lio/sentry/SentryLevel;)V

    iput-object p2, p0, Lio/sentry/android/timber/SentryTimberIntegration;->a:Lio/sentry/android/timber/e;

    .line 4
    invoke-static {p2}, Ltimber/log/Timber;->r(Ltimber/log/Timber$c;)V

    .line 5
    iget-object p1, p0, Lio/sentry/android/timber/SentryTimberIntegration;->b:Lio/sentry/o0;

    if-nez p1, :cond_1

    const-string p2, "logger"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SentryTimberIntegration installed."

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/timber/SentryTimberIntegration;->a:Lio/sentry/android/timber/e;

    if-eqz v0, :cond_2

    if-nez v0, :cond_0

    const-string v1, "tree"

    .line 2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Ltimber/log/Timber;->v(Ltimber/log/Timber$c;)V

    .line 3
    iget-object v0, p0, Lio/sentry/android/timber/SentryTimberIntegration;->b:Lio/sentry/o0;

    if-eqz v0, :cond_2

    if-nez v0, :cond_1

    const-string v1, "logger"

    .line 4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "SentryTimberIntegration removed."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final k()Lio/sentry/SentryLevel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/android/timber/SentryTimberIntegration;->d:Lio/sentry/SentryLevel;

    return-object v0
.end method

.method public final p()Lio/sentry/SentryLevel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/android/timber/SentryTimberIntegration;->c:Lio/sentry/SentryLevel;

    return-object v0
.end method
