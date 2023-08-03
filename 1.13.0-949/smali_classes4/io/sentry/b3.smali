.class public final synthetic Lio/sentry/b3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:[Ljava/io/File;


# direct methods
.method public synthetic constructor <init>([Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/b3;->a:[Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/sentry/b3;->a:[Ljava/io/File;

    invoke-static {v0}, Lio/sentry/c3;->a([Ljava/io/File;)V

    return-void
.end method
