.class final Lcom/google/android/gms/internal/mlkit_language_id_common/gb;
.super Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;
.source "com.google.mlkit:language-id-common@@16.0.0"


# static fields
.field static final e:Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;


# instance fields
.field final transient c:[Ljava/lang/Object;

.field private final transient d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/gb;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/gb;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/gb;->e:Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/gb;->c:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/gb;->d:I

    return-void
.end method


# virtual methods
.method final a([Ljava/lang/Object;I)I
    .locals 2

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/gb;->c:[Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/gb;->d:I

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/gb;->d:I

    return p1
.end method

.method final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/gb;->d:I

    return v0
.end method

.method final c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final d()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/gb;->c:[Ljava/lang/Object;

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/gb;->d:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/g9;->a(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/gb;->c:[Ljava/lang/Object;

    .line 2
    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/gb;->d:I

    return v0
.end method
