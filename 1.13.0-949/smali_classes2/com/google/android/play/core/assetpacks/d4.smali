.class public final Lcom/google/android/play/core/assetpacks/d4;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/r1;


# instance fields
.field private final a:Lcom/google/android/play/core/internal/r1;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/r1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/d4;->a:Lcom/google/android/play/core/internal/r1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/d4;->a:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/play/core/assetpacks/c4;

    check-cast v0, Lcom/google/android/play/core/assetpacks/p0;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/assetpacks/c4;-><init>(Lcom/google/android/play/core/assetpacks/p0;)V

    return-object v1
.end method
