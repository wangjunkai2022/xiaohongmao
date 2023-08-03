.class public final synthetic Lcom/google/android/gms/internal/mlkit_common/pb;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Lo3/b;


# instance fields
.field public final synthetic a:Lcom/google/android/datatransport/h;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/pb;->a:Lcom/google/android/datatransport/h;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/pb;->a:Lcom/google/android/datatransport/h;

    const-class v1, [B

    const-string v2, "json"

    invoke-static {v2}, Lcom/google/android/datatransport/c;->b(Ljava/lang/String;)Lcom/google/android/datatransport/c;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/mlkit_common/rb;->a:Lcom/google/android/gms/internal/mlkit_common/rb;

    const-string v4, "FIREBASE_ML_SDK"

    .line 2
    invoke-interface {v0, v4, v1, v2, v3}, Lcom/google/android/datatransport/h;->b(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/datatransport/c;Lcom/google/android/datatransport/f;)Lcom/google/android/datatransport/g;

    move-result-object v0

    return-object v0
.end method
