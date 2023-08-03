.class Lcom/facebook/datasource/i$b$a;
.super Ljava/lang/Object;
.source "RetainingDataSourceSupplier.java"

# interfaces
.implements Lcom/facebook/datasource/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/datasource/i$b;
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
.field final synthetic a:Lcom/facebook/datasource/i$b;


# direct methods
.method private constructor <init>(Lcom/facebook/datasource/i$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/datasource/i$b$a;->a:Lcom/facebook/datasource/i$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/datasource/i$b;Lcom/facebook/datasource/i$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/datasource/i$b$a;-><init>(Lcom/facebook/datasource/i$b;)V

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

    iget-object p1, p0, Lcom/facebook/datasource/i$b$a;->a:Lcom/facebook/datasource/i$b;

    invoke-static {p1}, Lcom/facebook/datasource/i$b;->z(Lcom/facebook/datasource/i$b;)V

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
    iget-object v0, p0, Lcom/facebook/datasource/i$b$a;->a:Lcom/facebook/datasource/i$b;

    invoke-static {v0, p1}, Lcom/facebook/datasource/i$b;->y(Lcom/facebook/datasource/i$b;Lcom/facebook/datasource/d;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/facebook/datasource/d;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/facebook/datasource/i$b$a;->a:Lcom/facebook/datasource/i$b;

    invoke-static {p1}, Lcom/facebook/datasource/i$b;->z(Lcom/facebook/datasource/i$b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Lcom/facebook/datasource/d;)V
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

    iget-object v0, p0, Lcom/facebook/datasource/i$b$a;->a:Lcom/facebook/datasource/i$b;

    invoke-static {v0, p1}, Lcom/facebook/datasource/i$b;->A(Lcom/facebook/datasource/i$b;Lcom/facebook/datasource/d;)V

    return-void
.end method
