.class public Lcom/facebook/drawee/backends/pipeline/info/internal/c;
.super Ljava/lang/Object;
.source "ImagePerfImageOriginListener.java"

# interfaces
.implements Lx0/e;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final a:Lx0/l;

.field private final b:Lx0/j;


# direct methods
.method public constructor <init>(Lx0/l;Lx0/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imagePerfState",
            "imagePerfMonitor"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/c;->a:Lx0/l;

    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/c;->b:Lx0/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "controllerId",
            "imageOrigin",
            "successful",
            "ultimateProducerName"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/c;->a:Lx0/l;

    invoke-virtual {p1, p2}, Lx0/l;->v(I)V

    .line 2
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/c;->a:Lx0/l;

    invoke-virtual {p1, p4}, Lx0/l;->E(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/c;->b:Lx0/j;

    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/c;->a:Lx0/l;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lx0/j;->b(Lx0/l;I)V

    return-void
.end method
