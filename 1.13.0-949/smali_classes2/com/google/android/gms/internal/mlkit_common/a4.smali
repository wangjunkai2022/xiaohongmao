.class public final Lcom/google/android/gms/internal/mlkit_common/a4;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/mlkit_common/k;

.field private b:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzan;->zzg()Lcom/google/android/gms/internal/mlkit_common/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/a4;->a:Lcom/google/android/gms/internal/mlkit_common/k;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/z2;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzan;->zzg()Lcom/google/android/gms/internal/mlkit_common/k;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/a4;->a:Lcom/google/android/gms/internal/mlkit_common/k;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/mlkit_common/a4;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/a4;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "A SourcePolicy can only set internal() or external() once."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/d;->d(ZLjava/lang/Object;)V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/a4;->b:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final b()Lcom/google/android/gms/internal/mlkit_common/a4;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/a4;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "A SourcePolicy can only set internal() or external() once."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/d;->d(ZLjava/lang/Object;)V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/a4;->b:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final c()Lcom/google/android/gms/internal/mlkit_common/c6;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/a4;->b:Ljava/lang/Boolean;

    const-string v1, "Must call internal() or external() when building a SourcePolicy."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/c6;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/a4;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_common/a4;->a:Lcom/google/android/gms/internal/mlkit_common/k;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_common/k;->d()Lcom/google/android/gms/internal/mlkit_common/zzan;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_common/c6;-><init>(ZZLcom/google/android/gms/internal/mlkit_common/zzan;Lcom/google/android/gms/internal/mlkit_common/b5;)V

    return-object v0
.end method
