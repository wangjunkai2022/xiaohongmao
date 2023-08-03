.class Lcom/posthog/android/r$e;
.super Ljava/lang/Object;
.source "PostHogIntegration.java"

# interfaces
.implements Lcom/posthog/android/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/android/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field final a:Lcom/posthog/android/r$d;

.field final b:Lcom/posthog/android/e;

.field c:I

.field d:I


# direct methods
.method constructor <init>(Lcom/posthog/android/r$d;Lcom/posthog/android/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/posthog/android/r$e;->a:Lcom/posthog/android/r$d;

    .line 3
    iput-object p2, p0, Lcom/posthog/android/r$e;->b:Lcom/posthog/android/e;

    return-void
.end method


# virtual methods
.method public d(Ljava/io/InputStream;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/posthog/android/r$e;->b:Lcom/posthog/android/e;

    invoke-virtual {v0, p1}, Lcom/posthog/android/e;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    .line 2
    iget v0, p0, Lcom/posthog/android/r$e;->c:I

    add-int/2addr v0, p2

    const/4 v1, 0x0

    const v2, 0x73f78

    if-le v0, v2, :cond_0

    return v1

    .line 3
    :cond_0
    iput v0, p0, Lcom/posthog/android/r$e;->c:I

    .line 4
    new-array v0, p2, [B

    .line 5
    invoke-virtual {p1, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    .line 6
    iget-object p1, p0, Lcom/posthog/android/r$e;->a:Lcom/posthog/android/r$d;

    new-instance p2, Ljava/lang/String;

    sget-object v1, Lcom/posthog/android/r;->r:Ljava/nio/charset/Charset;

    invoke-direct {p2, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/posthog/android/r$d;->d(Ljava/lang/String;)Lcom/posthog/android/r$d;

    .line 7
    iget p1, p0, Lcom/posthog/android/r$e;->d:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/posthog/android/r$e;->d:I

    return p2
.end method
