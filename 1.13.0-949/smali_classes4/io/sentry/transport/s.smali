.class public final Lio/sentry/transport/s;
.super Ljava/lang/Object;
.source "NoOpEnvelopeCache.java"

# interfaces
.implements Lio/sentry/cache/f;


# static fields
.field private static final a:Lio/sentry/transport/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/transport/s;

    invoke-direct {v0}, Lio/sentry/transport/s;-><init>()V

    sput-object v0, Lio/sentry/transport/s;->a:Lio/sentry/transport/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lio/sentry/transport/s;
    .locals 1

    sget-object v0, Lio/sentry/transport/s;->a:Lio/sentry/transport/s;

    return-object v0
.end method


# virtual methods
.method public synthetic A(Lio/sentry/l3;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/cache/e;->a(Lio/sentry/cache/f;Lio/sentry/l3;)V

    return-void
.end method

.method public i(Lio/sentry/l3;)V
    .locals 0
    .param p1    # Lio/sentry/l3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/sentry/l3;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public y(Lio/sentry/l3;Lio/sentry/b0;)V
    .locals 0
    .param p1    # Lio/sentry/l3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    return-void
.end method
