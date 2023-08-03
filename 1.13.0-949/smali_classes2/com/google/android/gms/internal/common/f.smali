.class final Lcom/google/android/gms/internal/common/f;
.super Lcom/google/android/gms/internal/common/zzag;
.source "com.google.android.gms:play-services-basement@@18.0.1"


# instance fields
.field final transient c:I

.field final transient d:I

.field final synthetic e:Lcom/google/android/gms/internal/common/zzag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/common/zzag;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/common/f;->e:Lcom/google/android/gms/internal/common/zzag;

    invoke-direct {p0}, Lcom/google/android/gms/internal/common/zzag;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/common/f;->c:I

    iput p3, p0, Lcom/google/android/gms/internal/common/f;->d:I

    return-void
.end method


# virtual methods
.method final b()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/common/f;->e:Lcom/google/android/gms/internal/common/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzac;->c()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/common/f;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/common/f;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method final c()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/common/f;->e:Lcom/google/android/gms/internal/common/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzac;->c()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/common/f;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final e()[Ljava/lang/Object;
    .locals 1
    .annotation runtime Lr7/a;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/common/f;->e:Lcom/google/android/gms/internal/common/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzac;->e()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/common/f;->d:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/common/b0;->a(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/common/f;->e:Lcom/google/android/gms/internal/common/zzag;

    iget v1, p0, Lcom/google/android/gms/internal/common/f;->c:I

    add-int/2addr p1, v1

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/common/f;->d:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/common/zzag;->zzh(II)Lcom/google/android/gms/internal/common/zzag;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(II)Lcom/google/android/gms/internal/common/zzag;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/common/zzag;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/common/f;->d:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/common/b0;->c(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/common/f;->e:Lcom/google/android/gms/internal/common/zzag;

    iget v1, p0, Lcom/google/android/gms/internal/common/f;->c:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/common/zzag;->zzh(II)Lcom/google/android/gms/internal/common/zzag;

    move-result-object p1

    return-object p1
.end method
