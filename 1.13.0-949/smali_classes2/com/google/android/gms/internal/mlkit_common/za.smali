.class final Lcom/google/android/gms/internal/mlkit_common/za;
.super Lcom/google/android/gms/internal/mlkit_common/mb;
.source "com.google.mlkit:common@@18.4.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/mlkit_common/zzit;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Z

.field private final e:Lcom/google/mlkit/common/sdkinternal/ModelType;

.field private final f:Lcom/google/android/gms/internal/mlkit_common/zziz;

.field private final g:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzit;Ljava/lang/String;ZZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zziz;ILcom/google/android/gms/internal/mlkit_common/ya;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/mb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/za;->a:Lcom/google/android/gms/internal/mlkit_common/zzit;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/za;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/mlkit_common/za;->c:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/mlkit_common/za;->d:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_common/za;->e:Lcom/google/mlkit/common/sdkinternal/ModelType;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_common/za;->f:Lcom/google/android/gms/internal/mlkit_common/zziz;

    iput p7, p0, Lcom/google/android/gms/internal/mlkit_common/za;->g:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/za;->g:I

    return v0
.end method

.method public final b()Lcom/google/mlkit/common/sdkinternal/ModelType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/za;->e:Lcom/google/mlkit/common/sdkinternal/ModelType;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/mlkit_common/zzit;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/za;->a:Lcom/google/android/gms/internal/mlkit_common/zzit;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/mlkit_common/zziz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/za;->f:Lcom/google/android/gms/internal/mlkit_common/zziz;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/za;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_common/mb;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/mb;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/za;->a:Lcom/google/android/gms/internal/mlkit_common/zzit;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/mb;->c()Lcom/google/android/gms/internal/mlkit_common/zzit;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/za;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/mb;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_common/za;->c:Z

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/mb;->g()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_common/za;->d:Z

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/mb;->f()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/za;->e:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/mb;->b()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/za;->f:Lcom/google/android/gms/internal/mlkit_common/zziz;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/mb;->d()Lcom/google/android/gms/internal/mlkit_common/zziz;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/za;->g:I

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/mb;->a()I

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/za;->d:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/za;->c:Z

    return v0
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/za;->a:Lcom/google/android/gms/internal/mlkit_common/zzit;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/za;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/za;->c:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    const/4 v5, 0x1

    if-eq v5, v2, :cond_0

    const/16 v2, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v2, 0x4cf

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/za;->d:Z

    if-eq v5, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x4cf

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/za;->e:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/za;->f:Lcom/google/android/gms/internal/mlkit_common/zziz;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/za;->g:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/za;->a:Lcom/google/android/gms/internal/mlkit_common/zzit;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/za;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/za;->c:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/mlkit_common/za;->d:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_common/za;->e:Lcom/google/mlkit/common/sdkinternal/ModelType;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_common/za;->f:Lcom/google/android/gms/internal/mlkit_common/zziz;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/google/android/gms/internal/mlkit_common/za;->g:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoteModelLoggingOptions{errorCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tfliteSchemaVersion="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", shouldLogRoughDownloadTime="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", shouldLogExactDownloadTime="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", modelType="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", downloadStatus="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", failureStatusCode="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
