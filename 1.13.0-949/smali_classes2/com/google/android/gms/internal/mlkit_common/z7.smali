.class public final Lcom/google/android/gms/internal/mlkit_common/z7;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/mlkit_common/j8;

.field private b:Ljava/lang/Long;

.field private c:Lcom/google/android/gms/internal/mlkit_common/zzit;

.field private d:Ljava/lang/Long;

.field private e:Lcom/google/android/gms/internal/mlkit_common/zziz;

.field private f:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/mlkit_common/z7;)Lcom/google/android/gms/internal/mlkit_common/zzit;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/z7;->c:Lcom/google/android/gms/internal/mlkit_common/zzit;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/google/android/gms/internal/mlkit_common/z7;)Lcom/google/android/gms/internal/mlkit_common/zziz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/z7;->e:Lcom/google/android/gms/internal/mlkit_common/zziz;

    return-object p0
.end method

.method static bridge synthetic j(Lcom/google/android/gms/internal/mlkit_common/z7;)Lcom/google/android/gms/internal/mlkit_common/j8;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/z7;->a:Lcom/google/android/gms/internal/mlkit_common/j8;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/google/android/gms/internal/mlkit_common/z7;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/z7;->f:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/google/android/gms/internal/mlkit_common/z7;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/z7;->d:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic m(Lcom/google/android/gms/internal/mlkit_common/z7;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/z7;->b:Ljava/lang/Long;

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_common/z7;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/z7;->f:Ljava/lang/Long;

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/internal/mlkit_common/zziz;)Lcom/google/android/gms/internal/mlkit_common/z7;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/z7;->e:Lcom/google/android/gms/internal/mlkit_common/zziz;

    return-object p0
.end method

.method public final d(Lcom/google/android/gms/internal/mlkit_common/zzit;)Lcom/google/android/gms/internal/mlkit_common/z7;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/z7;->c:Lcom/google/android/gms/internal/mlkit_common/zzit;

    return-object p0
.end method

.method public final e(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_common/z7;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/z7;->d:Ljava/lang/Long;

    return-object p0
.end method

.method public final f(Lcom/google/android/gms/internal/mlkit_common/j8;)Lcom/google/android/gms/internal/mlkit_common/z7;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/z7;->a:Lcom/google/android/gms/internal/mlkit_common/j8;

    return-object p0
.end method

.method public final g(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_common/z7;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/z7;->b:Ljava/lang/Long;

    return-object p0
.end method

.method public final i()Lcom/google/android/gms/internal/mlkit_common/c8;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/c8;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_common/c8;-><init>(Lcom/google/android/gms/internal/mlkit_common/z7;Lcom/google/android/gms/internal/mlkit_common/b8;)V

    return-object v0
.end method
