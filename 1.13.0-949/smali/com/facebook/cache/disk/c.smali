.class public Lcom/facebook/cache/disk/c;
.super Ljava/lang/Object;
.source "DiskCacheConfig.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cache/disk/c$b;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final d:J

.field private final e:J

.field private final f:J

.field private final g:Lcom/facebook/cache/disk/h;

.field private final h:Lcom/facebook/cache/common/CacheErrorLogger;

.field private final i:Lcom/facebook/cache/common/CacheEventListener;

.field private final j:Lm0/b;

.field private final k:Landroid/content/Context;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final l:Z


# direct methods
.method protected constructor <init>(Lcom/facebook/cache/disk/c$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/facebook/cache/disk/c$b;->a(Lcom/facebook/cache/disk/c$b;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cache/disk/c;->k:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/facebook/cache/disk/c$b;->b(Lcom/facebook/cache/disk/c$b;)Lcom/facebook/common/internal/m;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "Either a non-null context or a base directory path or supplier must be provided."

    .line 4
    invoke-static {v1, v2}, Lcom/facebook/common/internal/j;->p(ZLjava/lang/Object;)V

    .line 5
    invoke-static {p1}, Lcom/facebook/cache/disk/c$b;->b(Lcom/facebook/cache/disk/c$b;)Lcom/facebook/common/internal/m;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lcom/facebook/cache/disk/c$a;

    invoke-direct {v0, p0}, Lcom/facebook/cache/disk/c$a;-><init>(Lcom/facebook/cache/disk/c;)V

    invoke-static {p1, v0}, Lcom/facebook/cache/disk/c$b;->d(Lcom/facebook/cache/disk/c$b;Lcom/facebook/common/internal/m;)Lcom/facebook/common/internal/m;

    .line 7
    :cond_2
    invoke-static {p1}, Lcom/facebook/cache/disk/c$b;->g(Lcom/facebook/cache/disk/c$b;)I

    move-result v0

    iput v0, p0, Lcom/facebook/cache/disk/c;->a:I

    .line 8
    invoke-static {p1}, Lcom/facebook/cache/disk/c$b;->h(Lcom/facebook/cache/disk/c$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/cache/disk/c;->b:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/facebook/cache/disk/c$b;->b(Lcom/facebook/cache/disk/c$b;)Lcom/facebook/common/internal/m;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/internal/m;

    iput-object v0, p0, Lcom/facebook/cache/disk/c;->c:Lcom/facebook/common/internal/m;

    .line 10
    invoke-static {p1}, Lcom/facebook/cache/disk/c$b;->i(Lcom/facebook/cache/disk/c$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/cache/disk/c;->d:J

    .line 11
    invoke-static {p1}, Lcom/facebook/cache/disk/c$b;->j(Lcom/facebook/cache/disk/c$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/cache/disk/c;->e:J

    .line 12
    invoke-static {p1}, Lcom/facebook/cache/disk/c$b;->k(Lcom/facebook/cache/disk/c$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/cache/disk/c;->f:J

    .line 13
    invoke-static {p1}, Lcom/facebook/cache/disk/c$b;->l(Lcom/facebook/cache/disk/c$b;)Lcom/facebook/cache/disk/h;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/cache/disk/h;

    iput-object v0, p0, Lcom/facebook/cache/disk/c;->g:Lcom/facebook/cache/disk/h;

    .line 14
    invoke-static {p1}, Lcom/facebook/cache/disk/c$b;->m(Lcom/facebook/cache/disk/c$b;)Lcom/facebook/cache/common/CacheErrorLogger;

    move-result-object v0

    if-nez v0, :cond_3

    .line 15
    invoke-static {}, Lcom/facebook/cache/common/h;->b()Lcom/facebook/cache/common/h;

    move-result-object v0

    goto :goto_2

    .line 16
    :cond_3
    invoke-static {p1}, Lcom/facebook/cache/disk/c$b;->m(Lcom/facebook/cache/disk/c$b;)Lcom/facebook/cache/common/CacheErrorLogger;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/facebook/cache/disk/c;->h:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 17
    invoke-static {p1}, Lcom/facebook/cache/disk/c$b;->c(Lcom/facebook/cache/disk/c$b;)Lcom/facebook/cache/common/CacheEventListener;

    move-result-object v0

    if-nez v0, :cond_4

    .line 18
    invoke-static {}, Lcom/facebook/cache/common/i;->i()Lcom/facebook/cache/common/i;

    move-result-object v0

    goto :goto_3

    .line 19
    :cond_4
    invoke-static {p1}, Lcom/facebook/cache/disk/c$b;->c(Lcom/facebook/cache/disk/c$b;)Lcom/facebook/cache/common/CacheEventListener;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/facebook/cache/disk/c;->i:Lcom/facebook/cache/common/CacheEventListener;

    .line 20
    invoke-static {p1}, Lcom/facebook/cache/disk/c$b;->e(Lcom/facebook/cache/disk/c$b;)Lm0/b;

    move-result-object v0

    if-nez v0, :cond_5

    .line 21
    invoke-static {}, Lm0/c;->c()Lm0/c;

    move-result-object v0

    goto :goto_4

    .line 22
    :cond_5
    invoke-static {p1}, Lcom/facebook/cache/disk/c$b;->e(Lcom/facebook/cache/disk/c$b;)Lm0/b;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/facebook/cache/disk/c;->j:Lm0/b;

    .line 23
    invoke-static {p1}, Lcom/facebook/cache/disk/c$b;->f(Lcom/facebook/cache/disk/c$b;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/cache/disk/c;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/cache/disk/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/facebook/cache/disk/c;->k:Landroid/content/Context;

    return-object p0
.end method

.method public static n(Landroid/content/Context;)Lcom/facebook/cache/disk/c$b;
    .locals 2
    .param p0    # Landroid/content/Context;
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

    new-instance v0, Lcom/facebook/cache/disk/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/cache/disk/c$b;-><init>(Landroid/content/Context;Lcom/facebook/cache/disk/c$a;)V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/cache/disk/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/facebook/common/internal/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/m<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/cache/disk/c;->c:Lcom/facebook/common/internal/m;

    return-object v0
.end method

.method public d()Lcom/facebook/cache/common/CacheErrorLogger;
    .locals 1

    iget-object v0, p0, Lcom/facebook/cache/disk/c;->h:Lcom/facebook/cache/common/CacheErrorLogger;

    return-object v0
.end method

.method public e()Lcom/facebook/cache/common/CacheEventListener;
    .locals 1

    iget-object v0, p0, Lcom/facebook/cache/disk/c;->i:Lcom/facebook/cache/common/CacheEventListener;

    return-object v0
.end method

.method public f()Landroid/content/Context;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/cache/disk/c;->k:Landroid/content/Context;

    return-object v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/cache/disk/c;->d:J

    return-wide v0
.end method

.method public h()Lm0/b;
    .locals 1

    iget-object v0, p0, Lcom/facebook/cache/disk/c;->j:Lm0/b;

    return-object v0
.end method

.method public i()Lcom/facebook/cache/disk/h;
    .locals 1

    iget-object v0, p0, Lcom/facebook/cache/disk/c;->g:Lcom/facebook/cache/disk/h;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/cache/disk/c;->l:Z

    return v0
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/cache/disk/c;->e:J

    return-wide v0
.end method

.method public l()J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/cache/disk/c;->f:J

    return-wide v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/facebook/cache/disk/c;->a:I

    return v0
.end method
