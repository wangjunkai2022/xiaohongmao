.class public Lcom/clj/fastble/bluetooth/c;
.super Ljava/lang/Object;
.source "MultipleBluetoothController.java"


# instance fields
.field private final a:Lcom/clj/fastble/utils/BleLruHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/clj/fastble/utils/BleLruHashMap<",
            "Ljava/lang/String;",
            "Lcom/clj/fastble/bluetooth/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/clj/fastble/bluetooth/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clj/fastble/a;->x()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/clj/fastble/utils/BleLruHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/c;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/c;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/clj/fastble/bluetooth/a;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/c;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/a;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/c;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/a;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/a;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/clj/fastble/bluetooth/a;

    invoke-direct {v0, p1}, Lcom/clj/fastble/bluetooth/a;-><init>(Lcom/clj/fastble/data/BleDevice;)V

    .line 2
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/a;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/a;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/c;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clj/fastble/bluetooth/a;

    invoke-virtual {v1}, Lcom/clj/fastble/bluetooth/a;->F()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/c;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 4
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clj/fastble/bluetooth/a;

    invoke-virtual {v1}, Lcom/clj/fastble/bluetooth/a;->F()V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/clj/fastble/bluetooth/c;->j(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/clj/fastble/bluetooth/c;->f(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/a;->G()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/c;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clj/fastble/bluetooth/a;

    invoke-virtual {v1}, Lcom/clj/fastble/bluetooth/a;->G()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/c;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/a;
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/c;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/c;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/clj/fastble/bluetooth/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    monitor-exit p0

    return-object p1
.end method

.method public declared-synchronized g()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/clj/fastble/bluetooth/a;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/clj/fastble/bluetooth/c;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance v1, Lcom/clj/fastble/bluetooth/c$a;

    invoke-direct {v1, p0}, Lcom/clj/fastble/bluetooth/c$a;-><init>(Lcom/clj/fastble/bluetooth/c;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/clj/fastble/data/BleDevice;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/c;->k()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/c;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clj/fastble/bluetooth/a;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/clj/fastble/bluetooth/a;->J()Lcom/clj/fastble/data/BleDevice;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/c;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1
.end method

.method public declared-synchronized j(Lcom/clj/fastble/data/BleDevice;)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/c;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1
.end method

.method public k()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/c;->g()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clj/fastble/bluetooth/a;

    .line 4
    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/clj/fastble/bluetooth/a;->J()Lcom/clj/fastble/data/BleDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/clj/fastble/a;->J(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {p0, v2}, Lcom/clj/fastble/bluetooth/c;->l(Lcom/clj/fastble/bluetooth/a;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized l(Lcom/clj/fastble/bluetooth/a;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/c;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/a;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/c;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/a;->K()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized m(Lcom/clj/fastble/bluetooth/a;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/c;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/a;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/c;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/a;->K()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
