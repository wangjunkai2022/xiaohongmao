.class public final Lcom/google/android/play/core/assetpacks/i1;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/r1;


# instance fields
.field private final a:Lcom/google/android/play/core/internal/r1;

.field private final b:Lcom/google/android/play/core/internal/r1;

.field private final c:Lcom/google/android/play/core/internal/r1;

.field private final d:Lcom/google/android/play/core/internal/r1;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/i1;->a:Lcom/google/android/play/core/internal/r1;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/i1;->b:Lcom/google/android/play/core/internal/r1;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/i1;->c:Lcom/google/android/play/core/internal/r1;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/i1;->d:Lcom/google/android/play/core/internal/r1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/i1;->a:Lcom/google/android/play/core/internal/r1;

    check-cast v0, Lcom/google/android/play/core/assetpacks/t4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/t4;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/i1;->b:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/i1;->c:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v2}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/i1;->d:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v3}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/assetpacks/h0;

    .line 2
    check-cast v1, Lcom/google/android/play/core/assetpacks/p0;

    check-cast v2, Lcom/google/android/play/core/assetpacks/k4;

    check-cast v3, Lcom/google/android/play/core/assetpacks/r1;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/play/core/assetpacks/h0;-><init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/p0;Lcom/google/android/play/core/assetpacks/k4;Lcom/google/android/play/core/assetpacks/r1;)V

    return-object v4
.end method
