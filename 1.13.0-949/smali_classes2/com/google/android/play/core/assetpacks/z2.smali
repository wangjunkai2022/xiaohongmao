.class public final Lcom/google/android/play/core/assetpacks/z2;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/r1;


# instance fields
.field private final a:Lcom/google/android/play/core/internal/r1;

.field private final b:Lcom/google/android/play/core/internal/r1;

.field private final c:Lcom/google/android/play/core/internal/r1;

.field private final d:Lcom/google/android/play/core/internal/r1;

.field private final e:Lcom/google/android/play/core/internal/r1;

.field private final f:Lcom/google/android/play/core/internal/r1;

.field private final g:Lcom/google/android/play/core/internal/r1;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/z2;->a:Lcom/google/android/play/core/internal/r1;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/z2;->b:Lcom/google/android/play/core/internal/r1;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/z2;->c:Lcom/google/android/play/core/internal/r1;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/z2;->d:Lcom/google/android/play/core/internal/r1;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/z2;->e:Lcom/google/android/play/core/internal/r1;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/z2;->f:Lcom/google/android/play/core/internal/r1;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/z2;->g:Lcom/google/android/play/core/internal/r1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/z2;->a:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/z2;->b:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/z2;->c:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v2}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/z2;->d:Lcom/google/android/play/core/internal/r1;

    check-cast v3, Lcom/google/android/play/core/assetpacks/t4;

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/t4;->a()Landroid/content/Context;

    move-result-object v8

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/z2;->e:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v3}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/z2;->f:Lcom/google/android/play/core/internal/r1;

    invoke-static {v4}, Lcom/google/android/play/core/internal/p1;->a(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/n1;

    move-result-object v10

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/z2;->g:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v4}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v4

    .line 2
    new-instance v12, Lcom/google/android/play/core/assetpacks/y2;

    move-object v6, v1

    check-cast v6, Lcom/google/android/play/core/assetpacks/j0;

    move-object v7, v2

    check-cast v7, Lcom/google/android/play/core/assetpacks/x1;

    move-object v9, v3

    check-cast v9, Lcom/google/android/play/core/assetpacks/o3;

    move-object v11, v4

    check-cast v11, Lcom/google/android/play/core/assetpacks/m3;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/io/File;

    .line 3
    invoke-virtual {v8, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v8, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v5, v0

    :goto_0
    move-object v4, v12

    .line 5
    invoke-direct/range {v4 .. v11}, Lcom/google/android/play/core/assetpacks/y2;-><init>(Ljava/io/File;Lcom/google/android/play/core/assetpacks/j0;Lcom/google/android/play/core/assetpacks/x1;Landroid/content/Context;Lcom/google/android/play/core/assetpacks/o3;Lcom/google/android/play/core/internal/n1;Lcom/google/android/play/core/assetpacks/m3;)V

    return-object v12
.end method
