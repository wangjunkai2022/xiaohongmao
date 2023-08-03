.class Lcom/facebook/datasource/g$b$a;
.super Ljava/lang/Object;
.source "FirstAvailableDataSourceSupplier.java"

# interfaces
.implements Lcom/facebook/datasource/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/datasource/g$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/datasource/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/datasource/g$b;


# direct methods
.method private constructor <init>(Lcom/facebook/datasource/g$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/datasource/g$b$a;->a:Lcom/facebook/datasource/g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/datasource/g$b;Lcom/facebook/datasource/g$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/datasource/g$b$a;-><init>(Lcom/facebook/datasource/g$b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/datasource/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/d<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Lcom/facebook/datasource/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/d<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/datasource/g$b$a;->a:Lcom/facebook/datasource/g$b;

    invoke-static {v0, p1}, Lcom/facebook/datasource/g$b;->y(Lcom/facebook/datasource/g$b;Lcom/facebook/datasource/d;)V

    return-void
.end method

.method public c(Lcom/facebook/datasource/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/datasource/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/datasource/g$b$a;->a:Lcom/facebook/datasource/g$b;

    invoke-static {v0, p1}, Lcom/facebook/datasource/g$b;->z(Lcom/facebook/datasource/g$b;Lcom/facebook/datasource/d;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/facebook/datasource/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/facebook/datasource/g$b$a;->a:Lcom/facebook/datasource/g$b;

    invoke-static {v0, p1}, Lcom/facebook/datasource/g$b;->y(Lcom/facebook/datasource/g$b;Lcom/facebook/datasource/d;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Lcom/facebook/datasource/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/datasource/g$b$a;->a:Lcom/facebook/datasource/g$b;

    invoke-virtual {v0}, Lcom/facebook/datasource/a;->getProgress()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/facebook/datasource/g$b$a;->a:Lcom/facebook/datasource/g$b;

    invoke-interface {p1}, Lcom/facebook/datasource/d;->getProgress()F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/facebook/datasource/a;->s(F)Z

    return-void
.end method
