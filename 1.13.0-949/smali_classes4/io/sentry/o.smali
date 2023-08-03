.class public final synthetic Lio/sentry/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic a:Lio/sentry/p;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/o;->a:Lio/sentry/p;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lio/sentry/o;->a:Lio/sentry/p;

    invoke-static {v0, p1, p2}, Lio/sentry/p;->b(Lio/sentry/p;Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
