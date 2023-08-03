.class public final Lcom/google/android/gms/internal/mlkit_common/wb;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# static fields
.field private static final a:Lcom/google/android/gms/common/internal/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/internal/k;

    const-string v1, "RemoteModelUtils"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/wb;->a:Lcom/google/android/gms/common/internal/k;

    return-void
.end method

.method public static a(Lcom/google/mlkit/common/model/d;Lcom/google/mlkit/common/sdkinternal/p;Lcom/google/android/gms/internal/mlkit_common/mb;)Lcom/google/android/gms/internal/mlkit_common/c8;
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_common/mb;->b()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/mlkit/common/model/d;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/g8;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_common/g8;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/mlkit_common/d8;

    invoke-direct {v3}, Lcom/google/android/gms/internal/mlkit_common/d8;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/mlkit/common/model/d;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_common/d8;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/d8;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_common/zzje;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzje;

    .line 3
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_common/d8;->d(Lcom/google/android/gms/internal/mlkit_common/zzje;)Lcom/google/android/gms/internal/mlkit_common/d8;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_common/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_common/d8;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/d8;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zza:Lcom/google/android/gms/internal/mlkit_common/zzjd;

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zzh:Lcom/google/android/gms/internal/mlkit_common/zzjd;

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzjd;

    goto :goto_0

    .line 9
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzjd;

    .line 10
    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/mlkit_common/d8;->b(Lcom/google/android/gms/internal/mlkit_common/zzjd;)Lcom/google/android/gms/internal/mlkit_common/d8;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_common/d8;->g()Lcom/google/android/gms/internal/mlkit_common/f8;

    move-result-object v0

    .line 11
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_common/g8;->b(Lcom/google/android/gms/internal/mlkit_common/f8;)Lcom/google/android/gms/internal/mlkit_common/g8;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_common/g8;->c()Lcom/google/android/gms/internal/mlkit_common/j8;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/z7;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/z7;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_common/mb;->c()Lcom/google/android/gms/internal/mlkit_common/zzit;

    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/z7;->d(Lcom/google/android/gms/internal/mlkit_common/zzit;)Lcom/google/android/gms/internal/mlkit_common/z7;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_common/mb;->d()Lcom/google/android/gms/internal/mlkit_common/zziz;

    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/z7;->c(Lcom/google/android/gms/internal/mlkit_common/zziz;)Lcom/google/android/gms/internal/mlkit_common/z7;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_common/mb;->a()I

    move-result v2

    int-to-long v2, v2

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/z7;->b(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_common/z7;

    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_common/z7;->f(Lcom/google/android/gms/internal/mlkit_common/j8;)Lcom/google/android/gms/internal/mlkit_common/z7;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_common/mb;->g()Z

    move-result v0

    const-string v2, "Model downloaded without its beginning time recorded."

    const-string v3, "RemoteModelUtils"

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {p1, p0}, Lcom/google/mlkit/common/sdkinternal/p;->j(Lcom/google/mlkit/common/model/d;)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/wb;->a:Lcom/google/android/gms/common/internal/k;

    .line 17
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/common/internal/k;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {p1, p0}, Lcom/google/mlkit/common/sdkinternal/p;->k(Lcom/google/mlkit/common/model/d;)J

    move-result-wide v8

    cmp-long v0, v8, v4

    if-nez v0, :cond_4

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 20
    invoke-virtual {p1, p0, v8, v9}, Lcom/google/mlkit/common/sdkinternal/p;->p(Lcom/google/mlkit/common/model/d;J)V

    :cond_4
    sub-long/2addr v8, v6

    .line 21
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_common/z7;->g(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_common/z7;

    .line 22
    :cond_5
    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_common/mb;->f()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 23
    invoke-virtual {p1, p0}, Lcom/google/mlkit/common/sdkinternal/p;->j(Lcom/google/mlkit/common/model/d;)J

    move-result-wide p0

    cmp-long p2, p0, v4

    if-nez p2, :cond_6

    sget-object p0, Lcom/google/android/gms/internal/mlkit_common/wb;->a:Lcom/google/android/gms/common/internal/k;

    .line 24
    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/common/internal/k;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p0

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_common/z7;->e(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_common/z7;

    .line 27
    :cond_7
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/z7;->i()Lcom/google/android/gms/internal/mlkit_common/c8;

    move-result-object p0

    return-object p0
.end method
