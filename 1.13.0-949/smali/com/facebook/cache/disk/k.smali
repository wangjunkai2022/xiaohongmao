.class public Lcom/facebook/cache/disk/k;
.super Ljava/lang/Object;
.source "SettableCacheEvent.java"

# interfaces
.implements Lcom/facebook/cache/common/b;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final i:Ljava/lang/Object;

.field private static final j:I = 0x5

.field private static k:Lcom/facebook/cache/disk/k;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private static l:I


# instance fields
.field private a:Lcom/facebook/cache/common/c;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:Ljava/io/IOException;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private g:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private h:Lcom/facebook/cache/disk/k;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/cache/disk/k;->i:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g()Lcom/facebook/cache/disk/k;
    .locals 3
    .annotation build Lv1/u;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/cache/disk/k;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/facebook/cache/disk/k;->k:Lcom/facebook/cache/disk/k;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v1, Lcom/facebook/cache/disk/k;->h:Lcom/facebook/cache/disk/k;

    sput-object v2, Lcom/facebook/cache/disk/k;->k:Lcom/facebook/cache/disk/k;

    const/4 v2, 0x0

    .line 4
    iput-object v2, v1, Lcom/facebook/cache/disk/k;->h:Lcom/facebook/cache/disk/k;

    .line 5
    sget v2, Lcom/facebook/cache/disk/k;->l:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/facebook/cache/disk/k;->l:I

    .line 6
    monitor-exit v0

    return-object v1

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    new-instance v0, Lcom/facebook/cache/disk/k;

    invoke-direct {v0}, Lcom/facebook/cache/disk/k;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private i()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/facebook/cache/disk/k;->a:Lcom/facebook/cache/common/c;

    .line 2
    iput-object v0, p0, Lcom/facebook/cache/disk/k;->b:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/facebook/cache/disk/k;->c:J

    .line 4
    iput-wide v1, p0, Lcom/facebook/cache/disk/k;->d:J

    .line 5
    iput-wide v1, p0, Lcom/facebook/cache/disk/k;->e:J

    .line 6
    iput-object v0, p0, Lcom/facebook/cache/disk/k;->f:Ljava/io/IOException;

    .line 7
    iput-object v0, p0, Lcom/facebook/cache/disk/k;->g:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/cache/disk/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/cache/disk/k;->e:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/cache/disk/k;->d:J

    return-wide v0
.end method

.method public d()Lcom/facebook/cache/common/c;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/cache/disk/k;->a:Lcom/facebook/cache/common/c;

    return-object v0
.end method

.method public e()Lcom/facebook/cache/common/CacheEventListener$EvictionReason;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/cache/disk/k;->g:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    return-object v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/cache/disk/k;->c:J

    return-wide v0
.end method

.method public getException()Ljava/io/IOException;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/cache/disk/k;->f:Ljava/io/IOException;

    return-object v0
.end method

.method public h()V
    .locals 3

    .line 1
    sget-object v0, Lcom/facebook/cache/disk/k;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Lcom/facebook/cache/disk/k;->l:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/facebook/cache/disk/k;->i()V

    .line 4
    sget v1, Lcom/facebook/cache/disk/k;->l:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/facebook/cache/disk/k;->l:I

    .line 5
    sget-object v1, Lcom/facebook/cache/disk/k;->k:Lcom/facebook/cache/disk/k;

    if-eqz v1, :cond_0

    .line 6
    iput-object v1, p0, Lcom/facebook/cache/disk/k;->h:Lcom/facebook/cache/disk/k;

    .line 7
    :cond_0
    sput-object p0, Lcom/facebook/cache/disk/k;->k:Lcom/facebook/cache/disk/k;

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j(Lcom/facebook/cache/common/c;)Lcom/facebook/cache/disk/k;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/cache/disk/k;->a:Lcom/facebook/cache/common/c;

    return-object p0
.end method

.method public k(J)Lcom/facebook/cache/disk/k;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheLimit"
        }
    .end annotation

    iput-wide p1, p0, Lcom/facebook/cache/disk/k;->d:J

    return-object p0
.end method

.method public l(J)Lcom/facebook/cache/disk/k;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheSize"
        }
    .end annotation

    iput-wide p1, p0, Lcom/facebook/cache/disk/k;->e:J

    return-object p0
.end method

.method public m(Lcom/facebook/cache/common/CacheEventListener$EvictionReason;)Lcom/facebook/cache/disk/k;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "evictionReason"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/cache/disk/k;->g:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    return-object p0
.end method

.method public n(Ljava/io/IOException;)Lcom/facebook/cache/disk/k;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/cache/disk/k;->f:Ljava/io/IOException;

    return-object p0
.end method

.method public o(J)Lcom/facebook/cache/disk/k;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemSize"
        }
    .end annotation

    iput-wide p1, p0, Lcom/facebook/cache/disk/k;->c:J

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcom/facebook/cache/disk/k;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/cache/disk/k;->b:Ljava/lang/String;

    return-object p0
.end method
