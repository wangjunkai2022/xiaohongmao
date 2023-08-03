.class public final Lio/sentry/instrumentation/file/n;
.super Ljava/io/OutputStreamWriter;
.source "SentryFileWriter.java"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 3
    new-instance v0, Lio/sentry/instrumentation/file/l;

    invoke-direct {v0, p1}, Lio/sentry/instrumentation/file/l;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 4
    new-instance v0, Lio/sentry/instrumentation/file/l;

    invoke-direct {v0, p1, p2}, Lio/sentry/instrumentation/file/l;-><init>(Ljava/io/File;Z)V

    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;ZLio/sentry/n0;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 6
    new-instance v0, Lio/sentry/instrumentation/file/l;

    invoke-direct {v0, p1, p2, p3}, Lio/sentry/instrumentation/file/l;-><init>(Ljava/io/File;ZLio/sentry/n0;)V

    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 5
    new-instance v0, Lio/sentry/instrumentation/file/l;

    invoke-direct {v0, p1}, Lio/sentry/instrumentation/file/l;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/instrumentation/file/l;

    invoke-direct {v0, p1}, Lio/sentry/instrumentation/file/l;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2
    new-instance v0, Lio/sentry/instrumentation/file/l;

    invoke-direct {v0, p1, p2}, Lio/sentry/instrumentation/file/l;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method
