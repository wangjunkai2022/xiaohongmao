.class final Lcom/google/android/gms/internal/mlkit_language_id_bundled/g;
.super Lcom/google/android/gms/internal/mlkit_language_id_bundled/f;
.source "com.google.mlkit:language-id@@17.0.4"


# instance fields
.field private final c:Lcom/google/android/gms/internal/mlkit_language_id_bundled/zbj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_bundled/zbj;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_language_id_bundled/f;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_bundled/g;->c:Lcom/google/android/gms/internal/mlkit_language_id_bundled/zbj;

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_bundled/g;->c:Lcom/google/android/gms/internal/mlkit_language_id_bundled/zbj;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
