.class final Lcom/google/android/play/core/internal/t1;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final a:Ljava/nio/ByteBuffer;

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:Ljava/nio/ByteBuffer;


# direct methods
.method synthetic constructor <init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;Lcom/google/android/play/core/internal/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/internal/t1;->a:Ljava/nio/ByteBuffer;

    iput-wide p2, p0, Lcom/google/android/play/core/internal/t1;->b:J

    iput-wide p4, p0, Lcom/google/android/play/core/internal/t1;->c:J

    iput-wide p6, p0, Lcom/google/android/play/core/internal/t1;->d:J

    iput-object p8, p0, Lcom/google/android/play/core/internal/t1;->e:Ljava/nio/ByteBuffer;

    return-void
.end method

.method static synthetic a(Lcom/google/android/play/core/internal/t1;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/play/core/internal/t1;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/play/core/internal/t1;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/play/core/internal/t1;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/play/core/internal/t1;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/play/core/internal/t1;->d:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/play/core/internal/t1;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/internal/t1;->a:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/play/core/internal/t1;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/internal/t1;->e:Ljava/nio/ByteBuffer;

    return-object p0
.end method
