.class public final synthetic Lio/sentry/v3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:J

.field public final synthetic c:Lio/sentry/m2;

.field public final synthetic d:Lio/sentry/u0;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;JLio/sentry/m2;Lio/sentry/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/v3;->a:Ljava/io/File;

    iput-wide p2, p0, Lio/sentry/v3;->b:J

    iput-object p4, p0, Lio/sentry/v3;->c:Lio/sentry/m2;

    iput-object p5, p0, Lio/sentry/v3;->d:Lio/sentry/u0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lio/sentry/v3;->a:Ljava/io/File;

    iget-wide v1, p0, Lio/sentry/v3;->b:J

    iget-object v3, p0, Lio/sentry/v3;->c:Lio/sentry/m2;

    iget-object v4, p0, Lio/sentry/v3;->d:Lio/sentry/u0;

    invoke-static {v0, v1, v2, v3, v4}, Lio/sentry/f4;->b(Ljava/io/File;JLio/sentry/m2;Lio/sentry/u0;)[B

    move-result-object v0

    return-object v0
.end method
