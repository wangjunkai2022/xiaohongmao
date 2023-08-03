.class public final Lcom/google/android/gms/internal/mlkit_common/f8;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/mlkit_common/zzje;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/android/gms/internal/mlkit_common/zzjd;

.field private final g:Ljava/lang/Long;

.field private final h:Ljava/lang/Boolean;

.field private final i:Ljava/lang/Boolean;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/d8;Lcom/google/android/gms/internal/mlkit_common/e8;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/d8;->i(Lcom/google/android/gms/internal/mlkit_common/d8;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/f8;->a:Ljava/lang/String;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/f8;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/d8;->f(Lcom/google/android/gms/internal/mlkit_common/d8;)Lcom/google/android/gms/internal/mlkit_common/zzje;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/f8;->c:Lcom/google/android/gms/internal/mlkit_common/zzje;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/f8;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/d8;->h(Lcom/google/android/gms/internal/mlkit_common/d8;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/f8;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/d8;->e(Lcom/google/android/gms/internal/mlkit_common/d8;)Lcom/google/android/gms/internal/mlkit_common/zzjd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/f8;->f:Lcom/google/android/gms/internal/mlkit_common/zzjd;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/f8;->g:Ljava/lang/Long;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/f8;->h:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/f8;->i:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/mlkit_common/zzjd;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/internal/mlkit_common/g0;
        zza = 0x6
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/f8;->f:Lcom/google/android/gms/internal/mlkit_common/zzjd;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/mlkit_common/zzje;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/internal/mlkit_common/g0;
        zza = 0x3
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/f8;->c:Lcom/google/android/gms/internal/mlkit_common/zzje;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/internal/mlkit_common/g0;
        zza = 0x5
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/f8;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/internal/mlkit_common/g0;
        zza = 0x1
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/f8;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_common/f8;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/f8;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/f8;->a:Ljava/lang/String;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_common/f8;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_common/f8;->c:Lcom/google/android/gms/internal/mlkit_common/zzje;

    iget-object v4, p1, Lcom/google/android/gms/internal/mlkit_common/f8;->c:Lcom/google/android/gms/internal/mlkit_common/zzje;

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_common/f8;->e:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/internal/mlkit_common/f8;->e:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_common/f8;->f:Lcom/google/android/gms/internal/mlkit_common/zzjd;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_common/f8;->f:Lcom/google/android/gms/internal/mlkit_common/zzjd;

    invoke-static {v3, p1}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/f8;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/f8;->c:Lcom/google/android/gms/internal/mlkit_common/zzje;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/f8;->e:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/f8;->f:Lcom/google/android/gms/internal/mlkit_common/zzjd;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
