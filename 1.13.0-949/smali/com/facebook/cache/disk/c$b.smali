.class public Lcom/facebook/cache/disk/c$b;
.super Ljava/lang/Object;
.source "DiskCacheConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private d:J

.field private e:J

.field private f:J

.field private g:Lcom/facebook/cache/disk/h;

.field private h:Lcom/facebook/cache/common/CacheErrorLogger;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private i:Lcom/facebook/cache/common/CacheEventListener;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private j:Lm0/b;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private k:Z

.field private final l:Landroid/content/Context;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/facebook/cache/disk/c$b;->a:I

    const-string v0, "image_cache"

    .line 4
    iput-object v0, p0, Lcom/facebook/cache/disk/c$b;->b:Ljava/lang/String;

    const-wide/32 v0, 0x2800000

    .line 5
    iput-wide v0, p0, Lcom/facebook/cache/disk/c$b;->d:J

    const-wide/32 v0, 0xa00000

    .line 6
    iput-wide v0, p0, Lcom/facebook/cache/disk/c$b;->e:J

    const-wide/32 v0, 0x200000

    .line 7
    iput-wide v0, p0, Lcom/facebook/cache/disk/c$b;->f:J

    .line 8
    new-instance v0, Lcom/facebook/cache/disk/b;

    invoke-direct {v0}, Lcom/facebook/cache/disk/b;-><init>()V

    iput-object v0, p0, Lcom/facebook/cache/disk/c$b;->g:Lcom/facebook/cache/disk/h;

    .line 9
    iput-object p1, p0, Lcom/facebook/cache/disk/c$b;->l:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/facebook/cache/disk/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/c$b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/cache/disk/c$b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/facebook/cache/disk/c$b;->l:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/cache/disk/c$b;)Lcom/facebook/common/internal/m;
    .locals 0

    iget-object p0, p0, Lcom/facebook/cache/disk/c$b;->c:Lcom/facebook/common/internal/m;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/cache/disk/c$b;)Lcom/facebook/cache/common/CacheEventListener;
    .locals 0

    iget-object p0, p0, Lcom/facebook/cache/disk/c$b;->i:Lcom/facebook/cache/common/CacheEventListener;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/cache/disk/c$b;Lcom/facebook/common/internal/m;)Lcom/facebook/common/internal/m;
    .locals 0

    iput-object p1, p0, Lcom/facebook/cache/disk/c$b;->c:Lcom/facebook/common/internal/m;

    return-object p1
.end method

.method static synthetic e(Lcom/facebook/cache/disk/c$b;)Lm0/b;
    .locals 0

    iget-object p0, p0, Lcom/facebook/cache/disk/c$b;->j:Lm0/b;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/cache/disk/c$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/cache/disk/c$b;->k:Z

    return p0
.end method

.method static synthetic g(Lcom/facebook/cache/disk/c$b;)I
    .locals 0

    iget p0, p0, Lcom/facebook/cache/disk/c$b;->a:I

    return p0
.end method

.method static synthetic h(Lcom/facebook/cache/disk/c$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/cache/disk/c$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/facebook/cache/disk/c$b;)J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/cache/disk/c$b;->d:J

    return-wide v0
.end method

.method static synthetic j(Lcom/facebook/cache/disk/c$b;)J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/cache/disk/c$b;->e:J

    return-wide v0
.end method

.method static synthetic k(Lcom/facebook/cache/disk/c$b;)J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/cache/disk/c$b;->f:J

    return-wide v0
.end method

.method static synthetic l(Lcom/facebook/cache/disk/c$b;)Lcom/facebook/cache/disk/h;
    .locals 0

    iget-object p0, p0, Lcom/facebook/cache/disk/c$b;->g:Lcom/facebook/cache/disk/h;

    return-object p0
.end method

.method static synthetic m(Lcom/facebook/cache/disk/c$b;)Lcom/facebook/cache/common/CacheErrorLogger;
    .locals 0

    iget-object p0, p0, Lcom/facebook/cache/disk/c$b;->h:Lcom/facebook/cache/common/CacheErrorLogger;

    return-object p0
.end method


# virtual methods
.method public n()Lcom/facebook/cache/disk/c;
    .locals 1

    new-instance v0, Lcom/facebook/cache/disk/c;

    invoke-direct {v0, p0}, Lcom/facebook/cache/disk/c;-><init>(Lcom/facebook/cache/disk/c$b;)V

    return-object v0
.end method

.method public o(Ljava/lang/String;)Lcom/facebook/cache/disk/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseDirectoryName"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/cache/disk/c$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public p(Ljava/io/File;)Lcom/facebook/cache/disk/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "baseDirectoryPath"
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/common/internal/n;->a(Ljava/lang/Object;)Lcom/facebook/common/internal/m;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/cache/disk/c$b;->c:Lcom/facebook/common/internal/m;

    return-object p0
.end method

.method public q(Lcom/facebook/common/internal/m;)Lcom/facebook/cache/disk/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseDirectoryPathSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/m<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/facebook/cache/disk/c$b;"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/cache/disk/c$b;->c:Lcom/facebook/common/internal/m;

    return-object p0
.end method

.method public r(Lcom/facebook/cache/common/CacheErrorLogger;)Lcom/facebook/cache/disk/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheErrorLogger"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/cache/disk/c$b;->h:Lcom/facebook/cache/common/CacheErrorLogger;

    return-object p0
.end method

.method public s(Lcom/facebook/cache/common/CacheEventListener;)Lcom/facebook/cache/disk/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheEventListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/cache/disk/c$b;->i:Lcom/facebook/cache/common/CacheEventListener;

    return-object p0
.end method

.method public t(Lm0/b;)Lcom/facebook/cache/disk/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diskTrimmableRegistry"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/cache/disk/c$b;->j:Lm0/b;

    return-object p0
.end method

.method public u(Lcom/facebook/cache/disk/h;)Lcom/facebook/cache/disk/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supplier"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/cache/disk/c$b;->g:Lcom/facebook/cache/disk/h;

    return-object p0
.end method

.method public v(Z)Lcom/facebook/cache/disk/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indexEnabled"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/facebook/cache/disk/c$b;->k:Z

    return-object p0
.end method

.method public w(J)Lcom/facebook/cache/disk/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxCacheSize"
        }
    .end annotation

    iput-wide p1, p0, Lcom/facebook/cache/disk/c$b;->d:J

    return-object p0
.end method

.method public x(J)Lcom/facebook/cache/disk/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxCacheSizeOnLowDiskSpace"
        }
    .end annotation

    iput-wide p1, p0, Lcom/facebook/cache/disk/c$b;->e:J

    return-object p0
.end method

.method public y(J)Lcom/facebook/cache/disk/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxCacheSizeOnVeryLowDiskSpace"
        }
    .end annotation

    iput-wide p1, p0, Lcom/facebook/cache/disk/c$b;->f:J

    return-object p0
.end method

.method public z(I)Lcom/facebook/cache/disk/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    iput p1, p0, Lcom/facebook/cache/disk/c$b;->a:I

    return-object p0
.end method
