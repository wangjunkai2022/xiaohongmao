.class final Lcom/google/android/gms/internal/mlkit_common/m0;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Lcom/google/firebase/encoders/g;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/google/firebase/encoders/c;

.field private final d:Lcom/google/android/gms/internal/mlkit_common/i0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_common/i0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->a:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->b:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->d:Lcom/google/android/gms/internal/mlkit_common/i0;

    return-void
.end method

.method private final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->a:Z

    return-void

    :cond_0
    new-instance v0, Lcom/google/firebase/encoders/EncodingException;

    const-string v1, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(J)Lcom/google/firebase/encoders/g;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/m0;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->d:Lcom/google/android/gms/internal/mlkit_common/i0;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->c:Lcom/google/firebase/encoders/c;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->b:Z

    .line 2
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_common/i0;->r(Lcom/google/firebase/encoders/c;JZ)Lcom/google/android/gms/internal/mlkit_common/i0;

    return-object p0
.end method

.method public final add(I)Lcom/google/firebase/encoders/g;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/m0;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->d:Lcom/google/android/gms/internal/mlkit_common/i0;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->c:Lcom/google/firebase/encoders/c;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->b:Z

    .line 2
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_common/i0;->q(Lcom/google/firebase/encoders/c;IZ)Lcom/google/android/gms/internal/mlkit_common/i0;

    return-object p0
.end method

.method public final add(Ljava/lang/String;)Lcom/google/firebase/encoders/g;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/m0;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->d:Lcom/google/android/gms/internal/mlkit_common/i0;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->c:Lcom/google/firebase/encoders/c;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->b:Z

    .line 4
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_common/i0;->o(Lcom/google/firebase/encoders/c;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/e;

    return-object p0
.end method

.method final b(Lcom/google/firebase/encoders/c;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->a:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->c:Lcom/google/firebase/encoders/c;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->b:Z

    return-void
.end method

.method public final e([B)Lcom/google/firebase/encoders/g;
    .locals 3
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/m0;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->d:Lcom/google/android/gms/internal/mlkit_common/i0;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->c:Lcom/google/firebase/encoders/c;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->b:Z

    .line 2
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_common/i0;->o(Lcom/google/firebase/encoders/c;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/e;

    return-object p0
.end method

.method public final o(Z)Lcom/google/firebase/encoders/g;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/m0;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->d:Lcom/google/android/gms/internal/mlkit_common/i0;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->c:Lcom/google/firebase/encoders/c;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->b:Z

    .line 2
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_common/i0;->q(Lcom/google/firebase/encoders/c;IZ)Lcom/google/android/gms/internal/mlkit_common/i0;

    return-object p0
.end method

.method public final q(D)Lcom/google/firebase/encoders/g;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/m0;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->d:Lcom/google/android/gms/internal/mlkit_common/i0;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->c:Lcom/google/firebase/encoders/c;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->b:Z

    .line 2
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_common/i0;->a(Lcom/google/firebase/encoders/c;DZ)Lcom/google/firebase/encoders/e;

    return-object p0
.end method

.method public final r(F)Lcom/google/firebase/encoders/g;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/m0;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->d:Lcom/google/android/gms/internal/mlkit_common/i0;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->c:Lcom/google/firebase/encoders/c;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->b:Z

    .line 2
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_common/i0;->e(Lcom/google/firebase/encoders/c;FZ)Lcom/google/firebase/encoders/e;

    return-object p0
.end method
