.class public final Lcom/google/android/play/core/assetpacks/m1;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/g;


# instance fields
.field private final A:Lcom/google/android/play/core/internal/r1;

.field private final B:Lcom/google/android/play/core/internal/r1;

.field private final C:Lcom/google/android/play/core/internal/r1;

.field private final D:Lcom/google/android/play/core/internal/r1;

.field private final a:Lcom/google/android/play/core/assetpacks/m1;

.field private final b:Lcom/google/android/play/core/internal/r1;

.field private final c:Lcom/google/android/play/core/internal/r1;

.field private final d:Lcom/google/android/play/core/internal/r1;

.field private final e:Lcom/google/android/play/core/internal/r1;

.field private final f:Lcom/google/android/play/core/internal/r1;

.field private final g:Lcom/google/android/play/core/internal/r1;

.field private final h:Lcom/google/android/play/core/internal/r1;

.field private final i:Lcom/google/android/play/core/internal/r1;

.field private final j:Lcom/google/android/play/core/internal/r1;

.field private final k:Lcom/google/android/play/core/internal/r1;

.field private final l:Lcom/google/android/play/core/internal/r1;

.field private final m:Lcom/google/android/play/core/internal/r1;

.field private final n:Lcom/google/android/play/core/internal/r1;

.field private final o:Lcom/google/android/play/core/internal/r1;

.field private final p:Lcom/google/android/play/core/internal/r1;

.field private final q:Lcom/google/android/play/core/internal/r1;

.field private final r:Lcom/google/android/play/core/internal/r1;

.field private final s:Lcom/google/android/play/core/internal/r1;

.field private final t:Lcom/google/android/play/core/internal/r1;

.field private final u:Lcom/google/android/play/core/internal/r1;

.field private final v:Lcom/google/android/play/core/internal/r1;

.field private final w:Lcom/google/android/play/core/internal/r1;

.field private final x:Lcom/google/android/play/core/internal/r1;

.field private final y:Lcom/google/android/play/core/internal/r1;

.field private final z:Lcom/google/android/play/core/internal/r1;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/o4;Lcom/google/android/play/core/assetpacks/l1;)V
    .locals 29

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v0, Lcom/google/android/play/core/assetpacks/m1;->a:Lcom/google/android/play/core/assetpacks/m1;

    new-instance v11, Lcom/google/android/play/core/assetpacks/t4;

    move-object/from16 v1, p1

    invoke-direct {v11, v1}, Lcom/google/android/play/core/assetpacks/t4;-><init>(Lcom/google/android/play/core/assetpacks/o4;)V

    iput-object v11, v0, Lcom/google/android/play/core/assetpacks/m1;->b:Lcom/google/android/play/core/internal/r1;

    new-instance v1, Lcom/google/android/play/core/assetpacks/p3;

    invoke-direct {v1, v11}, Lcom/google/android/play/core/assetpacks/p3;-><init>(Lcom/google/android/play/core/internal/r1;)V

    invoke-static {v1}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v12

    iput-object v12, v0, Lcom/google/android/play/core/assetpacks/m1;->c:Lcom/google/android/play/core/internal/r1;

    new-instance v1, Lcom/google/android/play/core/assetpacks/q0;

    invoke-direct {v1, v11, v12}, Lcom/google/android/play/core/assetpacks/q0;-><init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V

    .line 2
    invoke-static {v1}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v15

    iput-object v15, v0, Lcom/google/android/play/core/assetpacks/m1;->d:Lcom/google/android/play/core/internal/r1;

    invoke-static {}, Lcom/google/android/play/core/assetpacks/y1;->a()Lcom/google/android/play/core/assetpacks/z1;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v14

    iput-object v14, v0, Lcom/google/android/play/core/assetpacks/m1;->e:Lcom/google/android/play/core/internal/r1;

    invoke-static {}, Lcom/google/android/play/core/common/e;->a()Lcom/google/android/play/core/common/e;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v13

    iput-object v13, v0, Lcom/google/android/play/core/assetpacks/m1;->f:Lcom/google/android/play/core/internal/r1;

    new-instance v1, Lcom/google/android/play/core/assetpacks/n3;

    invoke-direct {v1, v15, v12, v13}, Lcom/google/android/play/core/assetpacks/n3;-><init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V

    .line 5
    invoke-static {v1}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v10

    iput-object v10, v0, Lcom/google/android/play/core/assetpacks/m1;->g:Lcom/google/android/play/core/internal/r1;

    new-instance v1, Lcom/google/android/play/core/assetpacks/e0;

    invoke-direct {v1, v11, v14, v10}, Lcom/google/android/play/core/assetpacks/e0;-><init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V

    .line 6
    invoke-static {v1}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/play/core/assetpacks/m1;->h:Lcom/google/android/play/core/internal/r1;

    new-instance v2, Lcom/google/android/play/core/assetpacks/u4;

    invoke-direct {v2, v11}, Lcom/google/android/play/core/assetpacks/u4;-><init>(Lcom/google/android/play/core/internal/r1;)V

    .line 7
    invoke-static {v2}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/play/core/assetpacks/m1;->i:Lcom/google/android/play/core/internal/r1;

    new-instance v8, Lcom/google/android/play/core/internal/o1;

    invoke-direct {v8}, Lcom/google/android/play/core/internal/o1;-><init>()V

    iput-object v8, v0, Lcom/google/android/play/core/assetpacks/m1;->j:Lcom/google/android/play/core/internal/r1;

    invoke-static {}, Lcom/google/android/play/core/assetpacks/p4;->a()Lcom/google/android/play/core/assetpacks/q4;

    move-result-object v2

    .line 8
    invoke-static {v2}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v7

    iput-object v7, v0, Lcom/google/android/play/core/assetpacks/m1;->k:Lcom/google/android/play/core/internal/r1;

    new-instance v2, Lcom/google/android/play/core/assetpacks/p2;

    invoke-direct {v2, v15, v8, v14, v7}, Lcom/google/android/play/core/assetpacks/p2;-><init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V

    .line 9
    invoke-static {v2}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/play/core/assetpacks/m1;->l:Lcom/google/android/play/core/internal/r1;

    new-instance v5, Lcom/google/android/play/core/internal/o1;

    invoke-direct {v5}, Lcom/google/android/play/core/internal/o1;-><init>()V

    iput-object v5, v0, Lcom/google/android/play/core/assetpacks/m1;->m:Lcom/google/android/play/core/internal/r1;

    new-instance v16, Lcom/google/android/play/core/assetpacks/p1;

    move-object/from16 v2, v16

    move-object v3, v15

    move-object v4, v8

    move-object/from16 p1, v5

    move-object/from16 p2, v6

    move-object v6, v14

    move-object/from16 v26, v7

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/google/android/play/core/assetpacks/p1;-><init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V

    .line 10
    invoke-static/range {v16 .. v16}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v7

    iput-object v7, v0, Lcom/google/android/play/core/assetpacks/m1;->n:Lcom/google/android/play/core/internal/r1;

    new-instance v2, Lcom/google/android/play/core/assetpacks/d4;

    invoke-direct {v2, v15}, Lcom/google/android/play/core/assetpacks/d4;-><init>(Lcom/google/android/play/core/internal/r1;)V

    .line 11
    invoke-static {v2}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/play/core/assetpacks/m1;->o:Lcom/google/android/play/core/internal/r1;

    new-instance v2, Lcom/google/android/play/core/assetpacks/f3;

    invoke-direct {v2, v15}, Lcom/google/android/play/core/assetpacks/f3;-><init>(Lcom/google/android/play/core/internal/r1;)V

    .line 12
    invoke-static {v2}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/play/core/assetpacks/m1;->p:Lcom/google/android/play/core/internal/r1;

    new-instance v16, Lcom/google/android/play/core/assetpacks/l3;

    move-object/from16 v2, v16

    move-object/from16 v21, v5

    move-object/from16 v5, p2

    move-object/from16 v20, v6

    move-object/from16 v6, v26

    move-object/from16 v19, v7

    move-object v7, v14

    move-object/from16 v27, v12

    move-object v12, v8

    move-object v8, v13

    move-object/from16 v28, v9

    move-object v9, v10

    invoke-direct/range {v2 .. v9}, Lcom/google/android/play/core/assetpacks/l3;-><init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V

    .line 13
    invoke-static/range {v16 .. v16}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v8

    iput-object v8, v0, Lcom/google/android/play/core/assetpacks/m1;->q:Lcom/google/android/play/core/internal/r1;

    new-instance v2, Lcom/google/android/play/core/assetpacks/s3;

    invoke-direct {v2, v15, v12}, Lcom/google/android/play/core/assetpacks/s3;-><init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V

    .line 14
    invoke-static {v2}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/play/core/assetpacks/m1;->r:Lcom/google/android/play/core/internal/r1;

    new-instance v16, Lcom/google/android/play/core/assetpacks/w3;

    move-object/from16 v2, v16

    move-object v4, v12

    invoke-direct/range {v2 .. v7}, Lcom/google/android/play/core/assetpacks/w3;-><init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V

    .line 15
    invoke-static/range {v16 .. v16}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/play/core/assetpacks/m1;->s:Lcom/google/android/play/core/internal/r1;

    new-instance v3, Lcom/google/android/play/core/assetpacks/d1;

    invoke-direct {v3, v12}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Lcom/google/android/play/core/internal/r1;)V

    .line 16
    invoke-static {v3}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/play/core/assetpacks/m1;->t:Lcom/google/android/play/core/internal/r1;

    new-instance v4, Lcom/google/android/play/core/assetpacks/s2;

    move-object/from16 v7, p2

    invoke-direct {v4, v7, v15, v3, v13}, Lcom/google/android/play/core/assetpacks/s2;-><init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V

    .line 17
    invoke-static {v4}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/play/core/assetpacks/m1;->u:Lcom/google/android/play/core/internal/r1;

    new-instance v4, Lcom/google/android/play/core/assetpacks/v1;

    move-object/from16 v16, v4

    move-object/from16 v17, v7

    move-object/from16 v18, v12

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    invoke-direct/range {v16 .. v25}, Lcom/google/android/play/core/assetpacks/v1;-><init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V

    .line 18
    invoke-static {v4}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/play/core/assetpacks/m1;->v:Lcom/google/android/play/core/internal/r1;

    invoke-static {}, Lcom/google/android/play/core/assetpacks/g1;->a()Lcom/google/android/play/core/assetpacks/h1;

    move-result-object v2

    .line 19
    invoke-static {v2}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/play/core/assetpacks/m1;->w:Lcom/google/android/play/core/internal/r1;

    invoke-static {}, Lcom/google/android/play/core/assetpacks/v4;->a()Lcom/google/android/play/core/assetpacks/w4;

    move-result-object v2

    .line 20
    invoke-static {v2}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v8

    iput-object v8, v0, Lcom/google/android/play/core/assetpacks/m1;->x:Lcom/google/android/play/core/internal/r1;

    new-instance v16, Lcom/google/android/play/core/assetpacks/k0;

    move-object v6, v1

    move-object/from16 v1, v16

    move-object v2, v11

    move-object v3, v7

    move-object v5, v12

    move-object/from16 p2, v13

    move-object v13, v6

    move-object v6, v14

    move-object/from16 v18, v7

    move-object v7, v9

    move-object/from16 v17, v8

    move-object/from16 v8, v26

    move-object/from16 v20, v9

    move-object/from16 v9, v17

    move-object/from16 v23, v10

    invoke-direct/range {v1 .. v10}, Lcom/google/android/play/core/assetpacks/k0;-><init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V

    .line 21
    invoke-static/range {v16 .. v16}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v1

    move-object/from16 v9, p1

    invoke-static {v9, v1}, Lcom/google/android/play/core/internal/o1;->a(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V

    new-instance v10, Lcom/google/android/play/core/assetpacks/z2;

    move-object v1, v10

    move-object/from16 v2, v28

    move-object v3, v9

    move-object v4, v14

    move-object v5, v11

    move-object/from16 v6, v27

    move-object/from16 v7, v26

    move-object/from16 v8, v23

    invoke-direct/range {v1 .. v8}, Lcom/google/android/play/core/assetpacks/z2;-><init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V

    .line 22
    invoke-static {v10}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/play/core/assetpacks/m1;->y:Lcom/google/android/play/core/internal/r1;

    new-instance v2, Lcom/google/android/play/core/assetpacks/s4;

    invoke-direct {v2, v11, v13, v1}, Lcom/google/android/play/core/assetpacks/s4;-><init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V

    .line 23
    invoke-static {v2}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/google/android/play/core/internal/o1;->a(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V

    new-instance v1, Lcom/google/android/play/core/splitinstall/g1;

    invoke-direct {v1, v11}, Lcom/google/android/play/core/splitinstall/g1;-><init>(Lcom/google/android/play/core/internal/r1;)V

    .line 24
    invoke-static {v1}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/play/core/assetpacks/m1;->z:Lcom/google/android/play/core/internal/r1;

    new-instance v2, Lcom/google/android/play/core/assetpacks/l4;

    move-object/from16 v3, p2

    move-object v13, v2

    move-object v14, v15

    move-object v5, v15

    move-object v15, v12

    move-object/from16 v16, v9

    move-object/from16 v17, v1

    move-object/from16 v19, v4

    move-object/from16 v21, v26

    move-object/from16 v22, v3

    invoke-direct/range {v13 .. v23}, Lcom/google/android/play/core/assetpacks/l4;-><init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V

    .line 25
    invoke-static {v2}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/play/core/assetpacks/m1;->A:Lcom/google/android/play/core/internal/r1;

    new-instance v2, Lcom/google/android/play/core/assetpacks/r4;

    invoke-direct {v2, v1, v11}, Lcom/google/android/play/core/assetpacks/r4;-><init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V

    .line 26
    invoke-static {v2}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/play/core/assetpacks/m1;->B:Lcom/google/android/play/core/internal/r1;

    new-instance v2, Lcom/google/android/play/core/assetpacks/s1;

    invoke-direct {v2, v11}, Lcom/google/android/play/core/assetpacks/s1;-><init>(Lcom/google/android/play/core/internal/r1;)V

    .line 27
    invoke-static {v2}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/play/core/assetpacks/m1;->C:Lcom/google/android/play/core/internal/r1;

    new-instance v3, Lcom/google/android/play/core/assetpacks/i1;

    invoke-direct {v3, v11, v5, v1, v2}, Lcom/google/android/play/core/assetpacks/i1;-><init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V

    .line 28
    invoke-static {v3}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/play/core/assetpacks/m1;->D:Lcom/google/android/play/core/internal/r1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m1;->D:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/play/core/assetpacks/h0;

    iput-object v0, p1, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->a:Lcom/google/android/play/core/assetpacks/h0;

    return-void
.end method

.method public final zza()Lcom/google/android/play/core/assetpacks/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m1;->B:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/c;

    return-object v0
.end method
