.class public Lcom/facebook/datasource/h;
.super Ljava/lang/Object;
.source "IncreasingQualityDataSourceSupplier.java"

# interfaces
.implements Lcom/facebook/common/internal/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/datasource/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/m<",
        "Lcom/facebook/datasource/d<",
        "TT;>;>;"
    }
.end annotation

.annotation build Ls7/d;
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/datasource/d<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field private final b:Z


# direct methods
.method private constructor <init>(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataSourceSuppliers",
            "dataSourceLazy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/datasource/d<",
            "TT;>;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "List of suppliers is empty!"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/j;->e(ZLjava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lcom/facebook/datasource/h;->a:Ljava/util/List;

    .line 4
    iput-boolean p2, p0, Lcom/facebook/datasource/h;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/datasource/h;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/datasource/h;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/facebook/datasource/h;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/facebook/datasource/h;->a:Ljava/util/List;

    return-object p0
.end method

.method public static c(Ljava/util/List;)Lcom/facebook/datasource/h;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSourceSuppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/datasource/d<",
            "TT;>;>;>;)",
            "Lcom/facebook/datasource/h<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/datasource/h;->d(Ljava/util/List;Z)Lcom/facebook/datasource/h;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/List;Z)Lcom/facebook/datasource/h;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataSourceSuppliers",
            "dataSourceLazy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/datasource/d<",
            "TT;>;>;>;Z)",
            "Lcom/facebook/datasource/h<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/datasource/h;

    invoke-direct {v0, p0, p1}, Lcom/facebook/datasource/h;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method


# virtual methods
.method public e()Lcom/facebook/datasource/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/datasource/h$a;

    invoke-direct {v0, p0}, Lcom/facebook/datasource/h$a;-><init>(Lcom/facebook/datasource/h;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/facebook/datasource/h;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/facebook/datasource/h;

    .line 3
    iget-object v0, p0, Lcom/facebook/datasource/h;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/facebook/datasource/h;->a:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/facebook/common/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/datasource/h;->e()Lcom/facebook/datasource/d;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/datasource/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/facebook/common/internal/i;->e(Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/datasource/h;->a:Ljava/util/List;

    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/internal/i$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
