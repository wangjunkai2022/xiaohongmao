.class final Lcom/google/android/gms/internal/mlkit_language_id_common/k;
.super Ljava/io/OutputStream;
.source "com.google.mlkit:language-id-common@@16.0.0"


# instance fields
.field private a:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/k;->a:J

    return-void
.end method


# virtual methods
.method final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/k;->a:J

    return-wide v0
.end method

.method public final write(I)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/k;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/k;->a:J

    return-void
.end method

.method public final write([B)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/k;->a:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/k;->a:J

    return-void
.end method

.method public final write([BII)V
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-ltz p2, :cond_0

    .line 2
    array-length p1, p1

    if-gt p2, p1, :cond_0

    if-ltz p3, :cond_0

    add-int/2addr p2, p3

    if-gt p2, p1, :cond_0

    if-ltz p2, :cond_0

    .line 3
    iget-wide p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/k;->a:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/k;->a:J

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 5
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
