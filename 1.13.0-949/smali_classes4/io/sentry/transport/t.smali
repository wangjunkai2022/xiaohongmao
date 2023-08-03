.class public final Lio/sentry/transport/t;
.super Ljava/lang/Object;
.source "NoOpTransport.java"

# interfaces
.implements Lio/sentry/transport/q;


# annotations
.annotation build Lm8/a$c;
.end annotation


# static fields
.field private static final a:Lio/sentry/transport/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/transport/t;

    invoke-direct {v0}, Lio/sentry/transport/t;-><init>()V

    sput-object v0, Lio/sentry/transport/t;->a:Lio/sentry/transport/t;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lio/sentry/transport/t;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lio/sentry/transport/t;->a:Lio/sentry/transport/t;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public e(J)V
    .locals 0

    return-void
.end method

.method public synthetic j0(Lio/sentry/l3;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/transport/p;->a(Lio/sentry/transport/q;Lio/sentry/l3;)V

    return-void
.end method

.method public w(Lio/sentry/l3;Lio/sentry/b0;)V
    .locals 0
    .param p1    # Lio/sentry/l3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
