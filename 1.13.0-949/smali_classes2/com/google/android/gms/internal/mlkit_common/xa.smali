.class final Lcom/google/android/gms/internal/mlkit_common/xa;
.super Lcom/google/android/gms/internal/mlkit_common/lb;
.source "com.google.mlkit:common@@18.4.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/mlkit_common/zzit;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Lcom/google/mlkit/common/sdkinternal/ModelType;

.field private f:Lcom/google/android/gms/internal/mlkit_common/zziz;

.field private g:I

.field private h:B


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/lb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/mlkit_common/zziz;)Lcom/google/android/gms/internal/mlkit_common/lb;
    .locals 1

    const-string v0, "Null downloadStatus"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->f:Lcom/google/android/gms/internal/mlkit_common/zziz;

    return-object p0
.end method

.method public final b(Lcom/google/android/gms/internal/mlkit_common/zzit;)Lcom/google/android/gms/internal/mlkit_common/lb;
    .locals 1

    const-string v0, "Null errorCode"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->a:Lcom/google/android/gms/internal/mlkit_common/zzit;

    return-object p0
.end method

.method public final c(I)Lcom/google/android/gms/internal/mlkit_common/lb;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->g:I

    iget-byte p1, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->h:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->h:B

    return-object p0
.end method

.method public final d(Lcom/google/mlkit/common/sdkinternal/ModelType;)Lcom/google/android/gms/internal/mlkit_common/lb;
    .locals 1

    const-string v0, "Null modelType"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->e:Lcom/google/mlkit/common/sdkinternal/ModelType;

    return-object p0
.end method

.method public final e(Z)Lcom/google/android/gms/internal/mlkit_common/lb;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->d:Z

    iget-byte p1, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->h:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->h:B

    return-object p0
.end method

.method public final f(Z)Lcom/google/android/gms/internal/mlkit_common/lb;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->c:Z

    iget-byte p1, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->h:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->h:B

    return-object p0
.end method

.method public final g()Lcom/google/android/gms/internal/mlkit_common/mb;
    .locals 11

    .line 1
    iget-byte v0, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->h:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->a:Lcom/google/android/gms/internal/mlkit_common/zzit;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->b:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->e:Lcom/google/mlkit/common/sdkinternal/ModelType;

    if-eqz v7, :cond_1

    iget-object v8, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->f:Lcom/google/android/gms/internal/mlkit_common/zziz;

    if-nez v8, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/za;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->c:Z

    iget-boolean v6, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->d:Z

    iget v9, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->g:I

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/mlkit_common/za;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzit;Ljava/lang/String;ZZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zziz;ILcom/google/android/gms/internal/mlkit_common/ya;)V

    return-object v0

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->a:Lcom/google/android/gms/internal/mlkit_common/zzit;

    if-nez v1, :cond_2

    const-string v1, " errorCode"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->b:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, " tfliteSchemaVersion"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-byte v1, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->h:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_4

    const-string v1, " shouldLogRoughDownloadTime"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-byte v1, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->h:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    const-string v1, " shouldLogExactDownloadTime"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->e:Lcom/google/mlkit/common/sdkinternal/ModelType;

    if-nez v1, :cond_6

    const-string v1, " modelType"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->f:Lcom/google/android/gms/internal/mlkit_common/zziz;

    if-nez v1, :cond_7

    const-string v1, " downloadStatus"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-byte v1, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->h:B

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_8

    const-string v1, " failureStatusCode"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final h(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/lb;
    .locals 0

    const-string p1, "NA"

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/xa;->b:Ljava/lang/String;

    return-object p0
.end method
