.class final Lcom/google/android/gms/internal/mlkit_common/l;
.super Lcom/google/android/gms/internal/mlkit_common/f;
.source "com.google.mlkit:common@@18.4.0"


# instance fields
.field private final c:Lcom/google/android/gms/internal/mlkit_common/zzan;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzan;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_common/f;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/l;->c:Lcom/google/android/gms/internal/mlkit_common/zzan;

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/l;->c:Lcom/google/android/gms/internal/mlkit_common/zzan;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
