.class final Lcom/google/android/play/core/assetpacks/o2;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static final g:Lcom/google/android/play/core/internal/h;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/p0;

.field private final b:Lcom/google/android/play/core/internal/n1;

.field private final c:Lcom/google/android/play/core/assetpacks/x1;

.field private final d:Lcom/google/android/play/core/internal/n1;

.field private final e:Ljava/util/Map;

.field private final f:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/h;

    const-string v1, "ExtractorSessionStoreView"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/o2;->g:Lcom/google/android/play/core/internal/h;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/p0;Lcom/google/android/play/core/internal/n1;Lcom/google/android/play/core/assetpacks/x1;Lcom/google/android/play/core/internal/n1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/o2;->a:Lcom/google/android/play/core/assetpacks/p0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/o2;->b:Lcom/google/android/play/core/internal/n1;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/o2;->c:Lcom/google/android/play/core/assetpacks/x1;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/o2;->d:Lcom/google/android/play/core/internal/n1;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/o2;->e:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/o2;->f:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method private final q(I)Lcom/google/android/play/core/assetpacks/l2;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/o2;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/l2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/play/core/assetpacks/t1;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Could not find session %d while trying to get it"

    .line 2
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/t1;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private final r(Lcom/google/android/play/core/assetpacks/n2;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/o2;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    invoke-interface {p1}, Lcom/google/android/play/core/assetpacks/n2;->zza()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/o2;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/o2;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 7
    throw p1
.end method

.method private static s(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "pack_names"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Lcom/google/android/play/core/assetpacks/t1;

    const-string v0, "Session without pack received."

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/t1;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static t(Ljava/util/List;)Ljava/util/List;
    .locals 0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private final u(Ljava/util/List;)Ljava/util/Map;
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/g2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/assetpacks/g2;-><init>(Lcom/google/android/play/core/assetpacks/o2;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/o2;->r(Lcom/google/android/play/core/assetpacks/n2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method final synthetic a(Landroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 3

    const-string v0, "session_id"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/o2;->e:Ljava/util/Map;

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/o2;->e:Ljava/util/Map;

    .line 5
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/l2;

    .line 6
    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/l2;->c:Lcom/google/android/play/core/assetpacks/k2;

    iget v1, v1, Lcom/google/android/play/core/assetpacks/k2;->d:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 8
    :cond_2
    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/o2;->s(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    .line 9
    invoke-static {v2, v1}, Lb3/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 11
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/l2;->c:Lcom/google/android/play/core/assetpacks/k2;

    iget v0, v0, Lcom/google/android/play/core/assetpacks/k2;->d:I

    invoke-static {v0, p1}, Lcom/google/android/play/core/assetpacks/o0;->c(II)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method final synthetic b(Landroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "session_id"

    .line 1
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    :cond_0
    iget-object v3, v0, Lcom/google/android/play/core/assetpacks/o2;->e:Ljava/util/Map;

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "chunk_intents"

    const-string v6, "status"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_7

    .line 4
    invoke-direct {v0, v2}, Lcom/google/android/play/core/assetpacks/o2;->q(I)Lcom/google/android/play/core/assetpacks/l2;

    move-result-object v3

    iget-object v9, v3, Lcom/google/android/play/core/assetpacks/l2;->c:Lcom/google/android/play/core/assetpacks/k2;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/k2;->a:Ljava/lang/String;

    .line 5
    invoke-static {v6, v9}, Lb3/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iget-object v9, v3, Lcom/google/android/play/core/assetpacks/l2;->c:Lcom/google/android/play/core/assetpacks/k2;

    iget v10, v9, Lcom/google/android/play/core/assetpacks/k2;->d:I

    invoke-static {v10, v6}, Lcom/google/android/play/core/assetpacks/o0;->c(II)Z

    move-result v11

    if-eqz v11, :cond_3

    sget-object v1, Lcom/google/android/play/core/assetpacks/o2;->g:Lcom/google/android/play/core/internal/h;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v8

    .line 7
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v7

    const-string v4, "Found stale update for session %s with status %d."

    .line 8
    invoke-virtual {v1, v4, v5}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, v3, Lcom/google/android/play/core/assetpacks/l2;->c:Lcom/google/android/play/core/assetpacks/k2;

    iget-object v3, v1, Lcom/google/android/play/core/assetpacks/k2;->a:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/play/core/assetpacks/k2;->d:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/o2;->b:Lcom/google/android/play/core/internal/n1;

    .line 9
    invoke-interface {v1}, Lcom/google/android/play/core/internal/n1;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/assetpacks/x4;

    invoke-interface {v1, v2, v3}, Lcom/google/android/play/core/assetpacks/x4;->b(ILjava/lang/String;)V

    goto/16 :goto_5

    :cond_1
    const/4 v4, 0x5

    if-ne v1, v4, :cond_2

    .line 10
    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/o2;->b:Lcom/google/android/play/core/internal/n1;

    .line 11
    invoke-interface {v1}, Lcom/google/android/play/core/internal/n1;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/assetpacks/x4;

    invoke-interface {v1, v2}, Lcom/google/android/play/core/assetpacks/x4;->e(I)V

    goto/16 :goto_5

    :cond_2
    const/4 v2, 0x6

    if-ne v1, v2, :cond_c

    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/o2;->b:Lcom/google/android/play/core/internal/n1;

    .line 12
    invoke-interface {v1}, Lcom/google/android/play/core/internal/n1;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/assetpacks/x4;

    new-array v2, v7, [Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/play/core/assetpacks/x4;->f(Ljava/util/List;)V

    goto/16 :goto_5

    :cond_3
    iput v6, v9, Lcom/google/android/play/core/assetpacks/k2;->d:I

    invoke-static {v6}, Lcom/google/android/play/core/assetpacks/o0;->d(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 13
    invoke-virtual {v0, v2}, Lcom/google/android/play/core/assetpacks/o2;->n(I)V

    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/o2;->c:Lcom/google/android/play/core/assetpacks/x1;

    iget-object v2, v3, Lcom/google/android/play/core/assetpacks/l2;->c:Lcom/google/android/play/core/assetpacks/k2;

    iget-object v2, v2, Lcom/google/android/play/core/assetpacks/k2;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, v2}, Lcom/google/android/play/core/assetpacks/x1;->c(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_4
    iget-object v2, v9, Lcom/google/android/play/core/assetpacks/k2;->f:Ljava/util/List;

    .line 15
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/assetpacks/m2;

    iget-object v6, v3, Lcom/google/android/play/core/assetpacks/l2;->c:Lcom/google/android/play/core/assetpacks/k2;

    iget-object v6, v6, Lcom/google/android/play/core/assetpacks/k2;->a:Ljava/lang/String;

    .line 16
    iget-object v9, v4, Lcom/google/android/play/core/assetpacks/m2;->a:Ljava/lang/String;

    .line 17
    invoke-static {v5, v6, v9}, Lb3/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_5

    const/4 v9, 0x0

    .line 19
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 20
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 21
    iget-object v10, v4, Lcom/google/android/play/core/assetpacks/m2;->d:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/play/core/assetpacks/i2;

    iput-boolean v7, v10, Lcom/google/android/play/core/assetpacks/i2;->a:Z

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 22
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/google/android/play/core/assetpacks/o2;->s(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "pack_version"

    .line 23
    invoke-static {v3, v11}, Lb3/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v3, "pack_version_tag"

    .line 25
    invoke-static {v3, v11}, Lb3/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 26
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 27
    invoke-static {v6, v11}, Lb3/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v3, "total_bytes_to_download"

    .line 29
    invoke-static {v3, v11}, Lb3/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    const-string v3, "slice_ids"

    .line 31
    invoke-static {v3, v11}, Lb3/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-static {v3}, Lcom/google/android/play/core/assetpacks/o2;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 35
    invoke-static {v5, v11, v6}, Lb3/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 36
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    .line 37
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-static {v9}, Lcom/google/android/play/core/assetpacks/o2;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Intent;

    if-eqz v17, :cond_8

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    :goto_3
    new-instance v8, Lcom/google/android/play/core/assetpacks/i2;

    invoke-direct {v8, v7}, Lcom/google/android/play/core/assetpacks/i2;-><init>(Z)V

    .line 39
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_2

    :cond_9
    const-string v7, "uncompressed_hash_sha256"

    .line 40
    invoke-static {v7, v11, v6}, Lb3/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 41
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v7, "uncompressed_size"

    .line 42
    invoke-static {v7, v11, v6}, Lb3/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 43
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    const-string v7, "patch_format"

    .line 44
    invoke-static {v7, v11, v6}, Lb3/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 45
    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_a

    new-instance v7, Lcom/google/android/play/core/assetpacks/m2;

    const/16 v25, 0x0

    move-object/from16 v19, v7

    move-object/from16 v20, v6

    move-object/from16 v24, v10

    invoke-direct/range {v19 .. v26}, Lcom/google/android/play/core/assetpacks/m2;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;II)V

    const/4 v8, 0x0

    goto :goto_4

    :cond_a
    const-string v7, "compression_format"

    .line 46
    invoke-static {v7, v11, v6}, Lb3/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 47
    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    new-instance v7, Lcom/google/android/play/core/assetpacks/m2;

    const/16 v26, 0x0

    move-object/from16 v19, v7

    move-object/from16 v20, v6

    move-object/from16 v24, v10

    invoke-direct/range {v19 .. v26}, Lcom/google/android/play/core/assetpacks/m2;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;II)V

    .line 48
    :goto_4
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto/16 :goto_1

    .line 49
    :cond_b
    new-instance v3, Lcom/google/android/play/core/assetpacks/k2;

    move-object v10, v3

    move-object/from16 v17, v4

    invoke-direct/range {v10 .. v18}, Lcom/google/android/play/core/assetpacks/k2;-><init>(Ljava/lang/String;JIJLjava/util/List;Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/play/core/assetpacks/l2;

    const-string v5, "app_version_code"

    .line 50
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v4, v2, v1, v3}, Lcom/google/android/play/core/assetpacks/l2;-><init>(IILcom/google/android/play/core/assetpacks/k2;)V

    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/o2;->e:Ljava/util/Map;

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_c
    :goto_5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1
.end method

.method final synthetic c(Ljava/lang/String;IJ)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/play/core/assetpacks/o2;->u(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/assetpacks/l2;

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/google/android/play/core/assetpacks/l2;->c:Lcom/google/android/play/core/assetpacks/k2;

    iget v3, v3, Lcom/google/android/play/core/assetpacks/k2;->d:I

    invoke-static {v3}, Lcom/google/android/play/core/assetpacks/o0;->d(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    sget-object v3, Lcom/google/android/play/core/assetpacks/o2;->g:Lcom/google/android/play/core/internal/h;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v4, "Could not find pack %s while trying to complete it"

    .line 2
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/play/core/internal/h;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/o2;->a:Lcom/google/android/play/core/assetpacks/p0;

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/play/core/assetpacks/p0;->e(Ljava/lang/String;IJ)Z

    .line 4
    iget-object p1, v1, Lcom/google/android/play/core/assetpacks/l2;->c:Lcom/google/android/play/core/assetpacks/k2;

    const/4 p2, 0x4

    iput p2, p1, Lcom/google/android/play/core/assetpacks/k2;->d:I

    const/4 p1, 0x0

    return-object p1
.end method

.method final synthetic d(II)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/play/core/assetpacks/o2;->q(I)Lcom/google/android/play/core/assetpacks/l2;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/l2;->c:Lcom/google/android/play/core/assetpacks/k2;

    const/4 p2, 0x5

    iput p2, p1, Lcom/google/android/play/core/assetpacks/k2;->d:I

    const/4 p1, 0x0

    return-object p1
.end method

.method final synthetic e(I)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/play/core/assetpacks/o2;->q(I)Lcom/google/android/play/core/assetpacks/l2;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/l2;->c:Lcom/google/android/play/core/assetpacks/k2;

    iget v2, v1, Lcom/google/android/play/core/assetpacks/k2;->d:I

    invoke-static {v2}, Lcom/google/android/play/core/assetpacks/o0;->d(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/o2;->a:Lcom/google/android/play/core/assetpacks/p0;

    iget-object v2, v1, Lcom/google/android/play/core/assetpacks/k2;->a:Ljava/lang/String;

    iget v3, v0, Lcom/google/android/play/core/assetpacks/l2;->b:I

    iget-wide v4, v1, Lcom/google/android/play/core/assetpacks/k2;->b:J

    .line 3
    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/p0;->e(Ljava/lang/String;IJ)Z

    iget-object p1, v0, Lcom/google/android/play/core/assetpacks/l2;->c:Lcom/google/android/play/core/assetpacks/k2;

    iget v1, p1, Lcom/google/android/play/core/assetpacks/k2;->d:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/o2;->a:Lcom/google/android/play/core/assetpacks/p0;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/k2;->a:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/play/core/assetpacks/l2;->b:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/k2;->b:J

    .line 4
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/play/core/assetpacks/p0;->f(Ljava/lang/String;IJ)Z

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_2
    new-instance v0, Lcom/google/android/play/core/assetpacks/t1;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Could not safely delete session %d because it is not in a terminal state."

    .line 7
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/t1;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method final f(Ljava/util/List;)Ljava/util/Map;
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/f2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/assetpacks/f2;-><init>(Lcom/google/android/play/core/assetpacks/o2;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/o2;->r(Lcom/google/android/play/core/assetpacks/n2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method final g()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/o2;->e:Ljava/util/Map;

    return-object v0
.end method

.method final synthetic h(Ljava/util/List;)Ljava/util/Map;
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/play/core/assetpacks/o2;->u(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 2
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/play/core/assetpacks/l2;

    if-nez v3, :cond_0

    const/16 v3, 0x8

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v4, v3, Lcom/google/android/play/core/assetpacks/l2;->c:Lcom/google/android/play/core/assetpacks/k2;

    iget v5, v4, Lcom/google/android/play/core/assetpacks/k2;->d:I

    invoke-static {v5}, Lcom/google/android/play/core/assetpacks/o0;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x6

    :try_start_0
    iput v5, v4, Lcom/google/android/play/core/assetpacks/k2;->d:I

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/o2;->d:Lcom/google/android/play/core/internal/n1;

    .line 6
    invoke-interface {v4}, Lcom/google/android/play/core/internal/n1;->zza()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/google/android/play/core/assetpacks/h2;

    invoke-direct {v5, p0, v3}, Lcom/google/android/play/core/assetpacks/h2;-><init>(Lcom/google/android/play/core/assetpacks/o2;Lcom/google/android/play/core/assetpacks/l2;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/o2;->c:Lcom/google/android/play/core/assetpacks/x1;

    .line 7
    invoke-virtual {v4, v2}, Lcom/google/android/play/core/assetpacks/x1;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/play/core/assetpacks/t1; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 8
    :catch_0
    sget-object v4, Lcom/google/android/play/core/assetpacks/o2;->g:Lcom/google/android/play/core/internal/h;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v3, Lcom/google/android/play/core/assetpacks/l2;->a:I

    .line 9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const-string v6, "Session %d with pack %s does not exist, no need to cancel."

    .line 10
    invoke-virtual {v4, v6, v5}, Lcom/google/android/play/core/internal/h;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 11
    :cond_1
    :goto_1
    iget-object v3, v3, Lcom/google/android/play/core/assetpacks/l2;->c:Lcom/google/android/play/core/assetpacks/k2;

    iget v3, v3, Lcom/google/android/play/core/assetpacks/k2;->d:I

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method final synthetic i(Ljava/util/List;)Ljava/util/Map;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/o2;->e:Ljava/util/Map;

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/assetpacks/l2;

    .line 3
    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/l2;->c:Lcom/google/android/play/core/assetpacks/k2;

    iget-object v3, v3, Lcom/google/android/play/core/assetpacks/k2;->a:Ljava/lang/String;

    .line 4
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/assetpacks/l2;

    if-nez v4, :cond_1

    const/4 v4, -0x1

    goto :goto_1

    .line 6
    :cond_1
    iget v4, v4, Lcom/google/android/play/core/assetpacks/l2;->a:I

    .line 7
    :goto_1
    iget v5, v2, Lcom/google/android/play/core/assetpacks/l2;->a:I

    if-ge v4, v5, :cond_0

    .line 8
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method final j()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/o2;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method final k(Ljava/lang/String;IJ)V
    .locals 7

    new-instance v6, Lcom/google/android/play/core/assetpacks/e2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/e2;-><init>(Lcom/google/android/play/core/assetpacks/o2;Ljava/lang/String;IJ)V

    invoke-direct {p0, v6}, Lcom/google/android/play/core/assetpacks/o2;->r(Lcom/google/android/play/core/assetpacks/n2;)Ljava/lang/Object;

    return-void
.end method

.method final l()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/o2;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method final m(II)V
    .locals 1
    .param p2    # I
        .annotation build Lb3/b;
        .end annotation
    .end param

    new-instance p2, Lcom/google/android/play/core/assetpacks/b2;

    const/4 v0, 0x5

    invoke-direct {p2, p0, p1, v0}, Lcom/google/android/play/core/assetpacks/b2;-><init>(Lcom/google/android/play/core/assetpacks/o2;II)V

    invoke-direct {p0, p2}, Lcom/google/android/play/core/assetpacks/o2;->r(Lcom/google/android/play/core/assetpacks/n2;)Ljava/lang/Object;

    return-void
.end method

.method final n(I)V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/a2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/assetpacks/a2;-><init>(Lcom/google/android/play/core/assetpacks/o2;I)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/o2;->r(Lcom/google/android/play/core/assetpacks/n2;)Ljava/lang/Object;

    return-void
.end method

.method final o(Landroid/os/Bundle;)Z
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/c2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/assetpacks/c2;-><init>(Lcom/google/android/play/core/assetpacks/o2;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/o2;->r(Lcom/google/android/play/core/assetpacks/n2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method final p(Landroid/os/Bundle;)Z
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/d2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/assetpacks/d2;-><init>(Lcom/google/android/play/core/assetpacks/o2;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/o2;->r(Lcom/google/android/play/core/assetpacks/n2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
