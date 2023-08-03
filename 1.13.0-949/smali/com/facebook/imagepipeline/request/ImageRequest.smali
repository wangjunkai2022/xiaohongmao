.class public Lcom/facebook/imagepipeline/request/ImageRequest;
.super Ljava/lang/Object;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/request/ImageRequest$b;,
        Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;,
        Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    }
.end annotation

.annotation build Ls7/b;
.end annotation


# static fields
.field private static w:Z

.field private static x:Z

.field public static final y:Lcom/facebook/common/internal/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/g<",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private final b:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

.field private final c:Landroid/net/Uri;

.field private final d:I

.field private e:Ljava/io/File;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Lcom/facebook/imagepipeline/common/b;

.field private final j:Lcom/facebook/imagepipeline/common/d;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final k:Lcom/facebook/imagepipeline/common/e;

.field private final l:Lcom/facebook/imagepipeline/common/a;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final m:Lcom/facebook/imagepipeline/common/Priority;

.field private final n:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

.field private final o:I

.field private final p:Z

.field private final q:Z

.field private final r:Ljava/lang/Boolean;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final s:Lcom/facebook/imagepipeline/request/d;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final t:Lq1/f;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final u:Ljava/lang/Boolean;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequest$a;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/request/ImageRequest$a;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/request/ImageRequest;->y:Lcom/facebook/common/internal/g;

    return-void
.end method

.method protected constructor <init>(Lcom/facebook/imagepipeline/request/ImageRequestBuilder;)V
    .locals 1
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
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->f()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->r()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    .line 4
    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->y(Landroid/net/Uri;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:I

    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->v()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Z

    .line 6
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    .line 7
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Z

    .line 8
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->i()Lcom/facebook/imagepipeline/common/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/b;

    .line 9
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->o()Lcom/facebook/imagepipeline/common/d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/common/d;

    .line 10
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->q()Lcom/facebook/imagepipeline/common/e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 11
    invoke-static {}, Lcom/facebook/imagepipeline/common/e;->a()Lcom/facebook/imagepipeline/common/e;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->q()Lcom/facebook/imagepipeline/common/e;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/e;

    .line 13
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->e()Lcom/facebook/imagepipeline/common/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Lcom/facebook/imagepipeline/common/a;

    .line 14
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->n()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->m:Lcom/facebook/imagepipeline/common/Priority;

    .line 15
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->k()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 16
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->g()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->o:I

    .line 17
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->s()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->p:Z

    .line 18
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->u()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Z

    .line 19
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->Q()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Ljava/lang/Boolean;

    .line 20
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->l()Lcom/facebook/imagepipeline/request/d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->s:Lcom/facebook/imagepipeline/request/d;

    .line 21
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->m()Lq1/f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->t:Lq1/f;

    .line 22
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->p()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->u:Ljava/lang/Boolean;

    .line 23
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->h()I

    move-result p1

    iput p1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->v:I

    return-void
.end method

.method public static C(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheHashcode"
        }
    .end annotation

    sput-boolean p0, Lcom/facebook/imagepipeline/request/ImageRequest;->x:Z

    return-void
.end method

.method public static D(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useCachedHashcodeInEquals"
        }
    .end annotation

    sput-boolean p0, Lcom/facebook/imagepipeline/request/ImageRequest;->w:Z

    return-void
.end method

.method public static a(Ljava/io/File;)Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 0
    .param p0    # Ljava/io/File;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/facebook/common/util/f;->d(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->b(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static b(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 0
    .param p0    # Landroid/net/Uri;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->x(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uriString"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->b(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private static y(Landroid/net/Uri;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/facebook/common/util/f;->n(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    invoke-static {p0}, Lcom/facebook/common/util/f;->l(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lq0/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lq0/a;->f(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0

    .line 4
    :cond_3
    invoke-static {p0}, Lcom/facebook/common/util/f;->k(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p0, 0x4

    return p0

    .line 5
    :cond_4
    invoke-static {p0}, Lcom/facebook/common/util/f;->h(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p0, 0x5

    return p0

    .line 6
    :cond_5
    invoke-static {p0}, Lcom/facebook/common/util/f;->m(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p0, 0x6

    return p0

    .line 7
    :cond_6
    invoke-static {p0}, Lcom/facebook/common/util/f;->g(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 p0, 0x7

    return p0

    .line 8
    :cond_7
    invoke-static {p0}, Lcom/facebook/common/util/f;->o(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/16 p0, 0x8

    return p0

    :cond_8
    return v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->p:Z

    return v0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Z

    return v0
.end method

.method public E()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Ljava/lang/Boolean;

    return-object v0
.end method

.method public d()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/e;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/e;->h()Z

    move-result v0

    return v0
.end method

.method public e()Lcom/facebook/imagepipeline/common/a;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Lcom/facebook/imagepipeline/common/a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/facebook/imagepipeline/request/ImageRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 3
    sget-boolean v0, Lcom/facebook/imagepipeline/request/ImageRequest;->w:Z

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:I

    .line 5
    iget v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->a:I

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-eq v0, v2, :cond_1

    return v1

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    iget-boolean v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    if-eq v0, v2, :cond_2

    return v1

    .line 7
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->p:Z

    iget-boolean v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->p:Z

    if-eq v0, v2, :cond_3

    return v1

    .line 8
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Z

    iget-boolean v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Z

    if-eq v0, v2, :cond_4

    return v1

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/facebook/common/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 10
    invoke-static {v0, v2}, Lcom/facebook/common/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->e:Ljava/io/File;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->e:Ljava/io/File;

    .line 11
    invoke-static {v0, v2}, Lcom/facebook/common/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Lcom/facebook/imagepipeline/common/a;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Lcom/facebook/imagepipeline/common/a;

    .line 12
    invoke-static {v0, v2}, Lcom/facebook/common/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/b;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/b;

    .line 13
    invoke-static {v0, v2}, Lcom/facebook/common/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/common/d;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/common/d;

    .line 14
    invoke-static {v0, v2}, Lcom/facebook/common/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->m:Lcom/facebook/imagepipeline/common/Priority;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->m:Lcom/facebook/imagepipeline/common/Priority;

    .line 15
    invoke-static {v0, v2}, Lcom/facebook/common/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 16
    invoke-static {v0, v2}, Lcom/facebook/common/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->o:I

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/common/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Ljava/lang/Boolean;

    .line 18
    invoke-static {v0, v2}, Lcom/facebook/common/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->u:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->u:Ljava/lang/Boolean;

    .line 19
    invoke-static {v0, v2}, Lcom/facebook/common/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/e;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/e;

    .line 20
    invoke-static {v0, v2}, Lcom/facebook/common/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Z

    iget-boolean v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Z

    if-eq v0, v2, :cond_5

    goto :goto_1

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->s:Lcom/facebook/imagepipeline/request/d;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 22
    invoke-interface {v0}, Lcom/facebook/imagepipeline/request/d;->a()Lcom/facebook/cache/common/c;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, v2

    .line 23
    :goto_0
    iget-object v3, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->s:Lcom/facebook/imagepipeline/request/d;

    if-eqz v3, :cond_7

    .line 24
    invoke-interface {v3}, Lcom/facebook/imagepipeline/request/d;->a()Lcom/facebook/cache/common/c;

    move-result-object v2

    .line 25
    :cond_7
    invoke-static {v0, v2}, Lcom/facebook/common/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    .line 26
    :cond_8
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->v:I

    iget p1, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->v:I

    if-ne v0, p1, :cond_9

    const/4 v1, 0x1

    :cond_9
    :goto_1
    return v1
.end method

.method public f()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->o:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->v:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    sget-boolean v0, Lcom/facebook/imagepipeline/request/ImageRequest;->x:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->s:Lcom/facebook/imagepipeline/request/d;

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v2}, Lcom/facebook/imagepipeline/request/d;->a()Lcom/facebook/cache/common/c;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x11

    new-array v3, v3, [Ljava/lang/Object;

    .line 5
    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    aput-object v4, v3, v1

    const/4 v1, 0x2

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    .line 6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Lcom/facebook/imagepipeline/common/a;

    aput-object v4, v3, v1

    const/4 v1, 0x4

    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->m:Lcom/facebook/imagepipeline/common/Priority;

    aput-object v4, v3, v1

    const/4 v1, 0x5

    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    aput-object v4, v3, v1

    const/4 v1, 0x6

    iget v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->o:I

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x7

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->p:Z

    .line 8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v1, 0x8

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Z

    .line 9
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v1, 0x9

    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/b;

    aput-object v4, v3, v1

    const/16 v1, 0xa

    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Ljava/lang/Boolean;

    aput-object v4, v3, v1

    const/16 v1, 0xb

    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/common/d;

    aput-object v4, v3, v1

    const/16 v1, 0xc

    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/e;

    aput-object v4, v3, v1

    const/16 v1, 0xd

    aput-object v2, v3, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->u:Ljava/lang/Boolean;

    aput-object v2, v3, v1

    const/16 v1, 0xf

    iget v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->v:I

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0x10

    iget-boolean v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Z

    .line 11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    .line 12
    invoke-static {v3}, Lcom/facebook/common/internal/i;->c([Ljava/lang/Object;)I

    move-result v2

    if-eqz v0, :cond_2

    .line 13
    iput v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:I

    :cond_2
    return v2
.end method

.method public i()Lcom/facebook/imagepipeline/common/b;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/b;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    return v0
.end method

.method public l()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object v0
.end method

.method public m()Lcom/facebook/imagepipeline/request/d;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->s:Lcom/facebook/imagepipeline/request/d;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/common/d;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/facebook/imagepipeline/common/d;->b:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x800

    :goto_0
    return v0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/common/d;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/facebook/imagepipeline/common/d;->a:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x800

    :goto_0
    return v0
.end method

.method public p()Lcom/facebook/imagepipeline/common/Priority;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->m:Lcom/facebook/imagepipeline/common/Priority;

    return-object v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Z

    return v0
.end method

.method public r()Lq1/f;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->t:Lq1/f;

    return-object v0
.end method

.method public s()Lcom/facebook/imagepipeline/common/d;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/common/d;

    return-object v0
.end method

.method public t()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->u:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/i;->e(Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    const-string v2, "uri"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    const-string v2, "cacheChoice"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/b;

    const-string v2, "decodeOptions"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->s:Lcom/facebook/imagepipeline/request/d;

    const-string v2, "postprocessor"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->m:Lcom/facebook/imagepipeline/common/Priority;

    const-string v2, "priority"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/common/d;

    const-string v2, "resizeOptions"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/e;

    const-string v2, "rotationOptions"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Lcom/facebook/imagepipeline/common/a;

    const-string v2, "bytesRange"

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->u:Ljava/lang/Boolean;

    const-string v2, "resizingAllowedOverride"

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Z

    const-string v2, "progressiveRenderingEnabled"

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    const-string v2, "localThumbnailPreviewsEnabled"

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Z

    const-string v2, "loadThumbnailOnly"

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    const-string v2, "lowestPermittedRequestLevel"

    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->o:I

    const-string v2, "cachesDisabled"

    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->p:Z

    const-string v2, "isDiskCacheEnabled"

    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Z

    const-string v2, "isMemoryCacheEnabled"

    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Ljava/lang/Boolean;

    const-string v2, "decodePrefetches"

    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->v:I

    const-string v2, "delayMs"

    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/facebook/common/internal/i$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/facebook/imagepipeline/common/e;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/e;

    return-object v0
.end method

.method public declared-synchronized v()Ljava/io/File;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->e:Ljava/io/File;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->e:Ljava/io/File;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->e:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public w()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:I

    return v0
.end method

.method public z(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheMask"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->g()I

    move-result v0

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
