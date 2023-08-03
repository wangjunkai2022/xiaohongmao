.class public final Lio/sentry/s1;
.super Ljava/lang/Object;
.source "NoOpEnvelopeReader.java"

# interfaces
.implements Lio/sentry/k0;


# static fields
.field private static final a:Lio/sentry/s1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/s1;

    invoke-direct {v0}, Lio/sentry/s1;-><init>()V

    sput-object v0, Lio/sentry/s1;->a:Lio/sentry/s1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lio/sentry/s1;
    .locals 1

    sget-object v0, Lio/sentry/s1;->a:Lio/sentry/s1;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lio/sentry/l3;
    .locals 0
    .param p1    # Ljava/io/InputStream;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
