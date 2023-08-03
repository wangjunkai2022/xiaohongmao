.class Lcom/posthog/android/l$c;
.super Lcom/posthog/android/l;
.source "PayloadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/android/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:Lcom/posthog/android/t;


# direct methods
.method constructor <init>(Lcom/posthog/android/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/posthog/android/l;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/posthog/android/l$c;->a:Lcom/posthog/android/t;

    return-void
.end method


# virtual methods
.method a([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/posthog/android/l$c;->a:Lcom/posthog/android/t;

    invoke-virtual {v0, p1}, Lcom/posthog/android/t;->a([B)V

    return-void
.end method

.method b(Lcom/posthog/android/l$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/posthog/android/l$c;->a:Lcom/posthog/android/t;

    invoke-virtual {v0, p1}, Lcom/posthog/android/t;->i(Lcom/posthog/android/l$a;)I

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/posthog/android/l$c;->a:Lcom/posthog/android/t;

    invoke-virtual {v0}, Lcom/posthog/android/t;->close()V

    return-void
.end method

.method d(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/posthog/android/l$c;->a:Lcom/posthog/android/t;

    invoke-virtual {v0, p1}, Lcom/posthog/android/t;->G(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method size()I
    .locals 1

    iget-object v0, p0, Lcom/posthog/android/l$c;->a:Lcom/posthog/android/t;

    invoke-virtual {v0}, Lcom/posthog/android/t;->size()I

    move-result v0

    return v0
.end method
