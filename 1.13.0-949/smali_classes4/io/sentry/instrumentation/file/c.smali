.class final Lio/sentry/instrumentation/file/c;
.super Ljava/lang/Object;
.source "FileOutputStreamInitData.java"


# instance fields
.field final a:Ljava/io/File;
    .annotation build Lm8/h;
    .end annotation
.end field

.field final b:Lio/sentry/v0;
    .annotation build Lm8/h;
    .end annotation
.end field

.field final c:Z

.field final d:Ljava/io/FileOutputStream;
    .annotation build Lm8/g;
    .end annotation
.end field

.field final e:Lio/sentry/SentryOptions;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/File;ZLio/sentry/v0;Ljava/io/FileOutputStream;Lio/sentry/SentryOptions;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/v0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/io/FileOutputStream;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/sentry/instrumentation/file/c;->a:Ljava/io/File;

    .line 3
    iput-boolean p2, p0, Lio/sentry/instrumentation/file/c;->c:Z

    .line 4
    iput-object p3, p0, Lio/sentry/instrumentation/file/c;->b:Lio/sentry/v0;

    .line 5
    iput-object p4, p0, Lio/sentry/instrumentation/file/c;->d:Ljava/io/FileOutputStream;

    .line 6
    iput-object p5, p0, Lio/sentry/instrumentation/file/c;->e:Lio/sentry/SentryOptions;

    return-void
.end method
