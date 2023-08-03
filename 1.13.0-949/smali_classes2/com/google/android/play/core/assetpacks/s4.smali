.class public final Lcom/google/android/play/core/assetpacks/s4;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/r1;


# instance fields
.field private final a:Lcom/google/android/play/core/internal/r1;

.field private final b:Lcom/google/android/play/core/internal/r1;

.field private final c:Lcom/google/android/play/core/internal/r1;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/s4;->a:Lcom/google/android/play/core/internal/r1;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/s4;->b:Lcom/google/android/play/core/internal/r1;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/s4;->c:Lcom/google/android/play/core/internal/r1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/s4;->a:Lcom/google/android/play/core/internal/r1;

    check-cast v0, Lcom/google/android/play/core/assetpacks/t4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/t4;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/s4;->b:Lcom/google/android/play/core/internal/r1;

    invoke-static {v1}, Lcom/google/android/play/core/internal/p1;->a(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/n1;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/s4;->c:Lcom/google/android/play/core/internal/r1;

    invoke-static {v2}, Lcom/google/android/play/core/internal/p1;->a(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/n1;

    move-result-object v2

    .line 2
    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/o4;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/google/android/play/core/internal/n1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/x4;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v2}, Lcom/google/android/play/core/internal/n1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/x4;

    .line 5
    :goto_0
    invoke-static {v0}, Lcom/google/android/play/core/internal/q1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
