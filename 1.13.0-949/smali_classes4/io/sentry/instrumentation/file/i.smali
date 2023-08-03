.class public final synthetic Lio/sentry/instrumentation/file/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/sentry/instrumentation/file/a$a;


# instance fields
.field public final synthetic a:Lio/sentry/instrumentation/file/l;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lio/sentry/instrumentation/file/l;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/instrumentation/file/i;->a:Lio/sentry/instrumentation/file/l;

    iput p2, p0, Lio/sentry/instrumentation/file/i;->b:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/sentry/instrumentation/file/i;->a:Lio/sentry/instrumentation/file/l;

    iget v1, p0, Lio/sentry/instrumentation/file/i;->b:I

    invoke-static {v0, v1}, Lio/sentry/instrumentation/file/l;->b(Lio/sentry/instrumentation/file/l;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
