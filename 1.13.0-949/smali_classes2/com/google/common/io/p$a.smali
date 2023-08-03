.class Lcom/google/common/io/p$a;
.super Lcom/google/common/io/f;
.source "FileBackedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/p;-><init>(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/io/p;


# direct methods
.method constructor <init>(Lcom/google/common/io/p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/io/p$a;->a:Lcom/google/common/io/p;

    invoke-direct {p0}, Lcom/google/common/io/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/p$a;->a:Lcom/google/common/io/p;

    invoke-virtual {v0}, Lcom/google/common/io/p;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_0
    return-void
.end method

.method public m()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/io/p$a;->a:Lcom/google/common/io/p;

    invoke-static {v0}, Lcom/google/common/io/p;->a(Lcom/google/common/io/p;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
