.class public final Lcom/google/android/play/core/assetpacks/t4;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/r1;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/o4;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/o4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/t4;->a:Lcom/google/android/play/core/assetpacks/o4;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/t4;->a:Lcom/google/android/play/core/assetpacks/o4;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/o4;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/internal/q1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final synthetic zza()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/t4;->a:Lcom/google/android/play/core/assetpacks/o4;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/o4;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/internal/q1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
