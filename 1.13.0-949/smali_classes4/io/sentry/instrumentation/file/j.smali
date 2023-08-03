.class public final synthetic Lio/sentry/instrumentation/file/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/sentry/instrumentation/file/a$a;


# instance fields
.field public final synthetic a:Lio/sentry/instrumentation/file/l;

.field public final synthetic b:[B


# direct methods
.method public synthetic constructor <init>(Lio/sentry/instrumentation/file/l;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/instrumentation/file/j;->a:Lio/sentry/instrumentation/file/l;

    iput-object p2, p0, Lio/sentry/instrumentation/file/j;->b:[B

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/sentry/instrumentation/file/j;->a:Lio/sentry/instrumentation/file/l;

    iget-object v1, p0, Lio/sentry/instrumentation/file/j;->b:[B

    invoke-static {v0, v1}, Lio/sentry/instrumentation/file/l;->d(Lio/sentry/instrumentation/file/l;[B)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
