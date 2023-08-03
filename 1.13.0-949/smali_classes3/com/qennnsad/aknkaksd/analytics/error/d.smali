.class public final Lcom/qennnsad/aknkaksd/analytics/error/d;
.super Ljava/lang/Object;
.source "SentryReporter.kt"

# interfaces
.implements Lcom/qennnsad/aknkaksd/analytics/error/b;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0004H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/analytics/error/d;",
        "Lcom/qennnsad/aknkaksd/analytics/error/b;",
        "",
        "e",
        "",
        "b",
        "",
        "id",
        "a",
        "c",
        "<init>",
        "()V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final b:Lcom/qennnsad/aknkaksd/analytics/error/d;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/error/d;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/analytics/error/d;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/error/d;->b:Lcom/qennnsad/aknkaksd/analytics/error/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/sentry/protocol/w;

    invoke-direct {v0}, Lio/sentry/protocol/w;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lio/sentry/protocol/w;->q(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lio/sentry/c3;->c0(Lio/sentry/protocol/w;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/google/gson/JsonIOException;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v1, Lcom/qennnsad/aknkaksd/analytics/error/LAControlledError;

    invoke-direct {v1, p1}, Lcom/qennnsad/aknkaksd/analytics/error/LAControlledError;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Ltimber/log/Timber$b;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lio/sentry/c3;->A(J)V

    return-void
.end method
