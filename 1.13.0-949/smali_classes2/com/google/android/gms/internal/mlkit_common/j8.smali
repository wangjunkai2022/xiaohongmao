.class public final Lcom/google/android/gms/internal/mlkit_common/j8;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/mlkit_common/f8;

.field private final b:Lcom/google/android/gms/internal/mlkit_common/h8;

.field private final c:Lcom/google/android/gms/internal/mlkit_common/h8;

.field private final d:Ljava/lang/Boolean;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/g8;Lcom/google/android/gms/internal/mlkit_common/i8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/g8;->a(Lcom/google/android/gms/internal/mlkit_common/g8;)Lcom/google/android/gms/internal/mlkit_common/f8;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/j8;->a:Lcom/google/android/gms/internal/mlkit_common/f8;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/j8;->b:Lcom/google/android/gms/internal/mlkit_common/h8;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/j8;->c:Lcom/google/android/gms/internal/mlkit_common/h8;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/j8;->d:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/mlkit_common/f8;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/internal/mlkit_common/g0;
        zza = 0x1
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/j8;->a:Lcom/google/android/gms/internal/mlkit_common/f8;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_common/j8;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/j8;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/j8;->a:Lcom/google/android/gms/internal/mlkit_common/f8;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_common/j8;->a:Lcom/google/android/gms/internal/mlkit_common/f8;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, p1}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, p1}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/j8;->a:Lcom/google/android/gms/internal/mlkit_common/f8;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
