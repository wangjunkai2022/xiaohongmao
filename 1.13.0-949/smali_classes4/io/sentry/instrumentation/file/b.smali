.class final Lio/sentry/instrumentation/file/b;
.super Ljava/lang/Object;
.source "FileInputStreamInitData.java"


# instance fields
.field final a:Ljava/io/File;
    .annotation build Lm8/h;
    .end annotation
.end field

.field final b:Lio/sentry/v0;
    .annotation build Lm8/h;
    .end annotation
.end field

.field final c:Ljava/io/FileInputStream;
    .annotation build Lm8/g;
    .end annotation
.end field

.field final d:Lio/sentry/SentryOptions;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/File;Lio/sentry/v0;Ljava/io/FileInputStream;Lio/sentry/SentryOptions;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lio/sentry/v0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/io/FileInputStream;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/sentry/instrumentation/file/b;->a:Ljava/io/File;

    .line 3
    iput-object p2, p0, Lio/sentry/instrumentation/file/b;->b:Lio/sentry/v0;

    .line 4
    iput-object p3, p0, Lio/sentry/instrumentation/file/b;->c:Ljava/io/FileInputStream;

    .line 5
    iput-object p4, p0, Lio/sentry/instrumentation/file/b;->d:Lio/sentry/SentryOptions;

    return-void
.end method
