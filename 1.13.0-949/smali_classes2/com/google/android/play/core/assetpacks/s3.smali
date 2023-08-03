.class public final Lcom/google/android/play/core/assetpacks/s3;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/r1;


# instance fields
.field private final a:Lcom/google/android/play/core/internal/r1;

.field private final b:Lcom/google/android/play/core/internal/r1;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/s3;->a:Lcom/google/android/play/core/internal/r1;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/s3;->b:Lcom/google/android/play/core/internal/r1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/s3;->a:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/s3;->b:Lcom/google/android/play/core/internal/r1;

    invoke-static {v1}, Lcom/google/android/play/core/internal/p1;->a(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/n1;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/google/android/play/core/assetpacks/r3;

    check-cast v0, Lcom/google/android/play/core/assetpacks/p0;

    invoke-direct {v2, v0, v1}, Lcom/google/android/play/core/assetpacks/r3;-><init>(Lcom/google/android/play/core/assetpacks/p0;Lcom/google/android/play/core/internal/n1;)V

    return-object v2
.end method
