.class Lcom/facebook/drawee/controller/a$c;
.super Lcom/facebook/drawee/controller/e;
.source "AbstractDraweeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/controller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<INFO:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/drawee/controller/e<",
        "TINFO;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/drawee/controller/e;-><init>()V

    return-void
.end method

.method public static n(Lcom/facebook/drawee/controller/c;Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/a$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener1",
            "listener2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<INFO:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/drawee/controller/c<",
            "-TINFO;>;",
            "Lcom/facebook/drawee/controller/c<",
            "-TINFO;>;)",
            "Lcom/facebook/drawee/controller/a$c<",
            "TINFO;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbstractDraweeController#createInternal"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Lcom/facebook/drawee/controller/a$c;

    invoke-direct {v0}, Lcom/facebook/drawee/controller/a$c;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Lcom/facebook/drawee/controller/e;->g(Lcom/facebook/drawee/controller/c;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/e;->g(Lcom/facebook/drawee/controller/c;)V

    .line 6
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_1
    return-object v0
.end method
