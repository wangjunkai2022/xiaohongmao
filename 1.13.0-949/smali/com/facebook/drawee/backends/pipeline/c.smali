.class public Lcom/facebook/drawee/backends/pipeline/c;
.super Ljava/lang/Object;
.source "DraweeConfig.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/backends/pipeline/c$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/common/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/ImmutableList<",
            "Ln1/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final b:Lcom/facebook/drawee/backends/pipeline/h;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final c:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lx0/i;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/drawee/backends/pipeline/c$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/facebook/drawee/backends/pipeline/c$b;->a(Lcom/facebook/drawee/backends/pipeline/c$b;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/facebook/drawee/backends/pipeline/c$b;->a(Lcom/facebook/drawee/backends/pipeline/c$b;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/ImmutableList;->copyOf(Ljava/util/List;)Lcom/facebook/common/internal/ImmutableList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/c;->a:Lcom/facebook/common/internal/ImmutableList;

    .line 5
    invoke-static {p1}, Lcom/facebook/drawee/backends/pipeline/c$b;->b(Lcom/facebook/drawee/backends/pipeline/c$b;)Lcom/facebook/common/internal/m;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {p1}, Lcom/facebook/drawee/backends/pipeline/c$b;->b(Lcom/facebook/drawee/backends/pipeline/c$b;)Lcom/facebook/common/internal/m;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/facebook/common/internal/n;->a(Ljava/lang/Object;)Lcom/facebook/common/internal/m;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/c;->c:Lcom/facebook/common/internal/m;

    .line 8
    invoke-static {p1}, Lcom/facebook/drawee/backends/pipeline/c$b;->c(Lcom/facebook/drawee/backends/pipeline/c$b;)Lcom/facebook/drawee/backends/pipeline/h;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/c;->b:Lcom/facebook/drawee/backends/pipeline/h;

    .line 9
    invoke-static {p1}, Lcom/facebook/drawee/backends/pipeline/c$b;->d(Lcom/facebook/drawee/backends/pipeline/c$b;)Lx0/i;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/c;->d:Lx0/i;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/drawee/backends/pipeline/c$b;Lcom/facebook/drawee/backends/pipeline/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/drawee/backends/pipeline/c;-><init>(Lcom/facebook/drawee/backends/pipeline/c$b;)V

    return-void
.end method

.method public static e()Lcom/facebook/drawee/backends/pipeline/c$b;
    .locals 1

    new-instance v0, Lcom/facebook/drawee/backends/pipeline/c$b;

    invoke-direct {v0}, Lcom/facebook/drawee/backends/pipeline/c$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/common/internal/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Ln1/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/c;->a:Lcom/facebook/common/internal/ImmutableList;

    return-object v0
.end method

.method public b()Lcom/facebook/common/internal/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/c;->c:Lcom/facebook/common/internal/m;

    return-object v0
.end method

.method public c()Lx0/i;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/c;->d:Lx0/i;

    return-object v0
.end method

.method public d()Lcom/facebook/drawee/backends/pipeline/h;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/c;->b:Lcom/facebook/drawee/backends/pipeline/h;

    return-object v0
.end method
