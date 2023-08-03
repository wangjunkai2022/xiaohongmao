.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/r;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;

.field private final c:Lcom/google/firebase/encoders/d;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/r;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/r;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/r;->c:Lcom/google/firebase/encoders/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)[B
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/o;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/r;->a:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/r;->b:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/r;->c:Lcom/google/firebase/encoders/d;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;-><init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/d;)V

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/o;->t(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id_common/o;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
