.class public Lcom/facebook/drawee/backends/pipeline/c$b;
.super Ljava/lang/Object;
.source "DraweeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/backends/pipeline/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln1/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private b:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private c:Lcom/facebook/drawee/backends/pipeline/h;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private d:Lx0/i;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/drawee/backends/pipeline/c$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/facebook/drawee/backends/pipeline/c$b;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/drawee/backends/pipeline/c$b;)Lcom/facebook/common/internal/m;
    .locals 0

    iget-object p0, p0, Lcom/facebook/drawee/backends/pipeline/c$b;->b:Lcom/facebook/common/internal/m;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/drawee/backends/pipeline/c$b;)Lcom/facebook/drawee/backends/pipeline/h;
    .locals 0

    iget-object p0, p0, Lcom/facebook/drawee/backends/pipeline/c$b;->c:Lcom/facebook/drawee/backends/pipeline/h;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/drawee/backends/pipeline/c$b;)Lx0/i;
    .locals 0

    iget-object p0, p0, Lcom/facebook/drawee/backends/pipeline/c$b;->d:Lx0/i;

    return-object p0
.end method


# virtual methods
.method public e(Ln1/a;)Lcom/facebook/drawee/backends/pipeline/c$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "factory"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/c$b;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/c$b;->a:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/c$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public f()Lcom/facebook/drawee/backends/pipeline/c;
    .locals 2

    new-instance v0, Lcom/facebook/drawee/backends/pipeline/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/drawee/backends/pipeline/c;-><init>(Lcom/facebook/drawee/backends/pipeline/c$b;Lcom/facebook/drawee/backends/pipeline/c$a;)V

    return-object v0
.end method

.method public g(Lcom/facebook/common/internal/m;)Lcom/facebook/drawee/backends/pipeline/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "debugOverlayEnabledSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/drawee/backends/pipeline/c$b;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/c$b;->b:Lcom/facebook/common/internal/m;

    return-object p0
.end method

.method public h(Z)Lcom/facebook/drawee/backends/pipeline/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawDebugOverlay"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/common/internal/n;->a(Ljava/lang/Object;)Lcom/facebook/common/internal/m;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/c$b;->g(Lcom/facebook/common/internal/m;)Lcom/facebook/drawee/backends/pipeline/c$b;

    move-result-object p1

    return-object p1
.end method

.method public i(Lx0/i;)Lcom/facebook/drawee/backends/pipeline/c$b;
    .locals 0
    .param p1    # Lx0/i;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imagePerfDataListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/c$b;->d:Lx0/i;

    return-object p0
.end method

.method public j(Lcom/facebook/drawee/backends/pipeline/h;)Lcom/facebook/drawee/backends/pipeline/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "factory"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/c$b;->c:Lcom/facebook/drawee/backends/pipeline/h;

    return-object p0
.end method
