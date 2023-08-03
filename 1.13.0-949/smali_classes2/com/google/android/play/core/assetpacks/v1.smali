.class public final Lcom/google/android/play/core/assetpacks/v1;
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

.field private final h:Lcom/google/android/play/core/internal/r1;

.field private final i:Lcom/google/android/play/core/internal/r1;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/v1;->a:Lcom/google/android/play/core/internal/r1;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/v1;->b:Lcom/google/android/play/core/internal/r1;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/v1;->c:Lcom/google/android/play/core/internal/r1;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/v1;->d:Lcom/google/android/play/core/internal/r1;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/v1;->e:Lcom/google/android/play/core/internal/r1;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/v1;->f:Lcom/google/android/play/core/internal/r1;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/v1;->g:Lcom/google/android/play/core/internal/r1;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/v1;->h:Lcom/google/android/play/core/internal/r1;

    iput-object p9, p0, Lcom/google/android/play/core/assetpacks/v1;->i:Lcom/google/android/play/core/internal/r1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/v1;->a:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/play/core/assetpacks/v1;->b:Lcom/google/android/play/core/internal/r1;

    invoke-static {v2}, Lcom/google/android/play/core/internal/p1;->a(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/n1;

    move-result-object v5

    iget-object v2, v0, Lcom/google/android/play/core/assetpacks/v1;->c:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v2}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/play/core/assetpacks/v1;->d:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v3}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/play/core/assetpacks/v1;->e:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v4}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v4

    iget-object v6, v0, Lcom/google/android/play/core/assetpacks/v1;->f:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v6}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/play/core/assetpacks/v1;->g:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v7}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/play/core/assetpacks/v1;->h:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v8}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v0, Lcom/google/android/play/core/assetpacks/v1;->i:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v9}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v9

    .line 2
    new-instance v13, Lcom/google/android/play/core/assetpacks/u1;

    check-cast v1, Lcom/google/android/play/core/assetpacks/o2;

    check-cast v2, Lcom/google/android/play/core/assetpacks/o1;

    move-object v10, v3

    check-cast v10, Lcom/google/android/play/core/assetpacks/c4;

    move-object v11, v4

    check-cast v11, Lcom/google/android/play/core/assetpacks/e3;

    move-object v12, v6

    check-cast v12, Lcom/google/android/play/core/assetpacks/j3;

    move-object v14, v7

    check-cast v14, Lcom/google/android/play/core/assetpacks/r3;

    move-object v15, v8

    check-cast v15, Lcom/google/android/play/core/assetpacks/v3;

    move-object/from16 v16, v9

    check-cast v16, Lcom/google/android/play/core/assetpacks/r2;

    move-object v3, v13

    move-object v4, v1

    move-object v6, v2

    move-object v7, v10

    move-object v8, v11

    move-object v9, v12

    move-object v10, v14

    move-object v11, v15

    move-object/from16 v12, v16

    invoke-direct/range {v3 .. v12}, Lcom/google/android/play/core/assetpacks/u1;-><init>(Lcom/google/android/play/core/assetpacks/o2;Lcom/google/android/play/core/internal/n1;Lcom/google/android/play/core/assetpacks/o1;Lcom/google/android/play/core/assetpacks/c4;Lcom/google/android/play/core/assetpacks/e3;Lcom/google/android/play/core/assetpacks/j3;Lcom/google/android/play/core/assetpacks/r3;Lcom/google/android/play/core/assetpacks/v3;Lcom/google/android/play/core/assetpacks/r2;)V

    return-object v13
.end method
