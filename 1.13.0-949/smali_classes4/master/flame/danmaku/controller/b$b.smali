.class public Lmaster/flame/danmaku/controller/b$b;
.super Lmaster/flame/danmaku/controller/b$a;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/controller/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/controller/b$a<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Lmaster/flame/danmaku/danmaku/model/m;

.field protected final b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lmaster/flame/danmaku/danmaku/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lmaster/flame/danmaku/danmaku/model/m;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/b$a;-><init>()V

    .line 2
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/b$b;->a:Lmaster/flame/danmaku/danmaku/model/m;

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/b$b;->b:Ljava/util/LinkedHashMap;

    .line 4
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/b$b;->c:Lmaster/flame/danmaku/danmaku/model/m;

    return-void
.end method

.method private d(Ljava/util/LinkedHashMap;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lmaster/flame/danmaku/danmaku/model/d;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    invoke-static {}, Lg8/c;->b()J

    move-result-wide v0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmaster/flame/danmaku/danmaku/model/d;

    .line 6
    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/d;->y()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-static {}, Lg8/c;->b()J

    move-result-wide v2

    sub-long/2addr v2, v0

    int-to-long v4, p2

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    :catch_0
    :cond_1
    return-void
.end method

.method private final e(Lmaster/flame/danmaku/danmaku/model/m;J)V
    .locals 1

    new-instance v0, Lmaster/flame/danmaku/controller/b$b$a;

    invoke-direct {v0, p0, p2, p3}, Lmaster/flame/danmaku/controller/b$b$a;-><init>(Lmaster/flame/danmaku/controller/b$b;J)V

    invoke-interface {p1, v0}, Lmaster/flame/danmaku/danmaku/model/m;->a(Lmaster/flame/danmaku/danmaku/model/m$b;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/b$b;->f(Ljava/lang/Void;)V

    return-void
.end method

.method public b(Lmaster/flame/danmaku/danmaku/model/d;IILmaster/flame/danmaku/danmaku/model/f;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lmaster/flame/danmaku/controller/b$b;->c(Lmaster/flame/danmaku/danmaku/model/d;IILmaster/flame/danmaku/danmaku/model/f;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget p3, p1, Lmaster/flame/danmaku/danmaku/model/d;->G:I

    or-int/lit16 p3, p3, 0x80

    iput p3, p1, Lmaster/flame/danmaku/danmaku/model/d;->G:I

    :cond_0
    return p2
.end method

.method public declared-synchronized c(Lmaster/flame/danmaku/danmaku/model/d;IILmaster/flame/danmaku/danmaku/model/f;Z)Z
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p2, p0, Lmaster/flame/danmaku/controller/b$b;->a:Lmaster/flame/danmaku/danmaku/model/m;

    const-wide/16 p3, 0x2

    invoke-direct {p0, p2, p3, p4}, Lmaster/flame/danmaku/controller/b$b;->e(Lmaster/flame/danmaku/danmaku/model/m;J)V

    .line 2
    iget-object p2, p0, Lmaster/flame/danmaku/controller/b$b;->c:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-direct {p0, p2, p3, p4}, Lmaster/flame/danmaku/controller/b$b;->e(Lmaster/flame/danmaku/danmaku/model/m;J)V

    .line 3
    iget-object p2, p0, Lmaster/flame/danmaku/controller/b$b;->b:Ljava/util/LinkedHashMap;

    const/4 p3, 0x3

    invoke-direct {p0, p2, p3}, Lmaster/flame/danmaku/controller/b$b;->d(Ljava/util/LinkedHashMap;I)V

    .line 4
    iget-object p2, p0, Lmaster/flame/danmaku/controller/b$b;->a:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {p2, p1}, Lmaster/flame/danmaku/danmaku/model/m;->j(Lmaster/flame/danmaku/danmaku/model/d;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->u()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 5
    monitor-exit p0

    return p3

    .line 6
    :cond_0
    :try_start_1
    iget-object p2, p0, Lmaster/flame/danmaku/controller/b$b;->c:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {p2, p1}, Lmaster/flame/danmaku/danmaku/model/m;->j(Lmaster/flame/danmaku/danmaku/model/d;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    .line 7
    monitor-exit p0

    return p4

    .line 8
    :cond_1
    :try_start_2
    iget-object p2, p0, Lmaster/flame/danmaku/controller/b$b;->b:Ljava/util/LinkedHashMap;

    iget-object p5, p1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    invoke-virtual {p2, p5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    iget-object p2, p0, Lmaster/flame/danmaku/controller/b$b;->b:Ljava/util/LinkedHashMap;

    iget-object p4, p1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p2, p0, Lmaster/flame/danmaku/controller/b$b;->a:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {p2, p1}, Lmaster/flame/danmaku/danmaku/model/m;->g(Lmaster/flame/danmaku/danmaku/model/d;)Z

    .line 11
    iget-object p2, p0, Lmaster/flame/danmaku/controller/b$b;->a:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {p2, p1}, Lmaster/flame/danmaku/danmaku/model/m;->i(Lmaster/flame/danmaku/danmaku/model/d;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    monitor-exit p0

    return p3

    .line 13
    :cond_2
    :try_start_3
    iget-object p2, p0, Lmaster/flame/danmaku/controller/b$b;->b:Ljava/util/LinkedHashMap;

    iget-object p3, p1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p2, p0, Lmaster/flame/danmaku/controller/b$b;->c:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {p2, p1}, Lmaster/flame/danmaku/danmaku/model/m;->i(Lmaster/flame/danmaku/danmaku/model/d;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    monitor-exit p0

    return p4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clear()V
    .locals 0

    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/b$b;->reset()V

    return-void
.end method

.method public f(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/b$b;->c:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/m;->clear()V

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/b$b;->a:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/m;->clear()V

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/controller/b$b;->b:Ljava/util/LinkedHashMap;

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
