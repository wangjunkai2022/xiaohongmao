.class public Lcom/facebook/drawee/backends/pipeline/info/internal/d;
.super Lq1/b;
.source "ImagePerfRequestListener.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final a:Ls0/c;

.field private final b:Lx0/l;


# direct methods
.method public constructor <init>(Ls0/c;Lx0/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "monotonicClock",
            "imagePerfState"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lq1/b;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->a:Ls0/c;

    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lx0/l;

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "request",
            "callerContext",
            "requestId",
            "isPrefetch"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lx0/l;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->a:Ls0/c;

    invoke-interface {v1}, Ls0/c;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lx0/l;->y(J)V

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lx0/l;

    invoke-virtual {v0, p1}, Lx0/l;->w(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 3
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lx0/l;

    invoke-virtual {p1, p2}, Lx0/l;->g(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lx0/l;

    invoke-virtual {p1, p3}, Lx0/l;->D(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lx0/l;

    invoke-virtual {p1, p4}, Lx0/l;->C(Z)V

    return-void
.end method

.method public c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "request",
            "requestId",
            "isPrefetch"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lx0/l;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->a:Ls0/c;

    invoke-interface {v1}, Ls0/c;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lx0/l;->x(J)V

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lx0/l;

    invoke-virtual {v0, p1}, Lx0/l;->w(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 3
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lx0/l;

    invoke-virtual {p1, p2}, Lx0/l;->D(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lx0/l;

    invoke-virtual {p1, p3}, Lx0/l;->C(Z)V

    return-void
.end method

.method public i(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "request",
            "requestId",
            "throwable",
            "isPrefetch"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lx0/l;

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->a:Ls0/c;

    invoke-interface {v0}, Ls0/c;->now()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lx0/l;->x(J)V

    .line 2
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lx0/l;

    invoke-virtual {p3, p1}, Lx0/l;->w(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 3
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lx0/l;

    invoke-virtual {p1, p2}, Lx0/l;->D(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lx0/l;

    invoke-virtual {p1, p4}, Lx0/l;->C(Z)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lx0/l;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->a:Ls0/c;

    invoke-interface {v1}, Ls0/c;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lx0/l;->x(J)V

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lx0/l;

    invoke-virtual {v0, p1}, Lx0/l;->D(Ljava/lang/String;)V

    return-void
.end method
