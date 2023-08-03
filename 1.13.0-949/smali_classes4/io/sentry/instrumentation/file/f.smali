.class public final synthetic Lio/sentry/instrumentation/file/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/sentry/instrumentation/file/a$a;


# instance fields
.field public final synthetic a:Lio/sentry/instrumentation/file/h;

.field public final synthetic b:[B


# direct methods
.method public synthetic constructor <init>(Lio/sentry/instrumentation/file/h;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/instrumentation/file/f;->a:Lio/sentry/instrumentation/file/h;

    iput-object p2, p0, Lio/sentry/instrumentation/file/f;->b:[B

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/sentry/instrumentation/file/f;->a:Lio/sentry/instrumentation/file/h;

    iget-object v1, p0, Lio/sentry/instrumentation/file/f;->b:[B

    invoke-static {v0, v1}, Lio/sentry/instrumentation/file/h;->d(Lio/sentry/instrumentation/file/h;[B)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
