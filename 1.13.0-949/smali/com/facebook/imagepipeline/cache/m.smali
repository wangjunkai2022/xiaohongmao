.class public Lcom/facebook/imagepipeline/cache/m;
.super Ljava/lang/Object;
.source "DefaultCacheKeyFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/g;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static a:Lcom/facebook/imagepipeline/cache/m;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized f()Lcom/facebook/imagepipeline/cache/m;
    .locals 2

    const-class v0, Lcom/facebook/imagepipeline/cache/m;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/cache/m;->a:Lcom/facebook/imagepipeline/cache/m;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/facebook/imagepipeline/cache/m;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/cache/m;-><init>()V

    sput-object v1, Lcom/facebook/imagepipeline/cache/m;->a:Lcom/facebook/imagepipeline/cache/m;

    .line 3
    :cond_0
    sget-object v1, Lcom/facebook/imagepipeline/cache/m;->a:Lcom/facebook/imagepipeline/cache/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;
    .locals 9
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "callerContext"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/facebook/imagepipeline/cache/c;

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/cache/m;->e(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->s()Lcom/facebook/imagepipeline/common/d;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->u()Lcom/facebook/imagepipeline/common/e;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->i()Lcom/facebook/imagepipeline/common/b;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/cache/c;-><init>(Ljava/lang/String;Lcom/facebook/imagepipeline/common/d;Lcom/facebook/imagepipeline/common/e;Lcom/facebook/imagepipeline/common/b;Lcom/facebook/cache/common/c;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v8
.end method

.method public b(Lcom/facebook/imagepipeline/request/ImageRequest;Landroid/net/Uri;Ljava/lang/Object;)Lcom/facebook/cache/common/c;
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "request",
            "sourceUri",
            "callerContext"
        }
    .end annotation

    new-instance p1, Lcom/facebook/cache/common/j;

    invoke-virtual {p0, p2}, Lcom/facebook/imagepipeline/cache/m;->e(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/cache/common/j;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;
    .locals 10
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "callerContext"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->m()Lcom/facebook/imagepipeline/request/d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/facebook/imagepipeline/request/d;->a()Lcom/facebook/cache/common/c;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, v1

    move-object v8, v7

    .line 4
    :goto_0
    new-instance v0, Lcom/facebook/imagepipeline/cache/c;

    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/cache/m;->e(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->s()Lcom/facebook/imagepipeline/common/d;

    move-result-object v4

    .line 7
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->u()Lcom/facebook/imagepipeline/common/e;

    move-result-object v5

    .line 8
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->i()Lcom/facebook/imagepipeline/common/b;

    move-result-object v6

    move-object v2, v0

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/facebook/imagepipeline/cache/c;-><init>(Ljava/lang/String;Lcom/facebook/imagepipeline/common/d;Lcom/facebook/imagepipeline/common/e;Lcom/facebook/imagepipeline/common/b;Lcom/facebook/cache/common/c;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "callerContext"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/imagepipeline/cache/m;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Landroid/net/Uri;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object p1

    return-object p1
.end method

.method protected e(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceUri"
        }
    .end annotation

    return-object p1
.end method
