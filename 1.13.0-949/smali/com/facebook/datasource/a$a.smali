.class Lcom/facebook/datasource/a$a;
.super Ljava/lang/Object;
.source "AbstractDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/datasource/a;->k(Lcom/facebook/datasource/f;Ljava/util/concurrent/Executor;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/facebook/datasource/f;

.field final synthetic c:Z

.field final synthetic d:Lcom/facebook/datasource/a;


# direct methods
.method constructor <init>(Lcom/facebook/datasource/a;ZLcom/facebook/datasource/f;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$isCancellation",
            "val$dataSubscriber",
            "val$isFailure"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/datasource/a$a;->d:Lcom/facebook/datasource/a;

    iput-boolean p2, p0, Lcom/facebook/datasource/a$a;->a:Z

    iput-object p3, p0, Lcom/facebook/datasource/a$a;->b:Lcom/facebook/datasource/f;

    iput-boolean p4, p0, Lcom/facebook/datasource/a$a;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/facebook/datasource/a$a;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/datasource/a$a;->b:Lcom/facebook/datasource/f;

    iget-object v1, p0, Lcom/facebook/datasource/a$a;->d:Lcom/facebook/datasource/a;

    invoke-interface {v0, v1}, Lcom/facebook/datasource/f;->b(Lcom/facebook/datasource/d;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/datasource/a$a;->c:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/facebook/datasource/a$a;->b:Lcom/facebook/datasource/f;

    iget-object v1, p0, Lcom/facebook/datasource/a$a;->d:Lcom/facebook/datasource/a;

    invoke-interface {v0, v1}, Lcom/facebook/datasource/f;->a(Lcom/facebook/datasource/d;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/facebook/datasource/a$a;->b:Lcom/facebook/datasource/f;

    iget-object v1, p0, Lcom/facebook/datasource/a$a;->d:Lcom/facebook/datasource/a;

    invoke-interface {v0, v1}, Lcom/facebook/datasource/f;->c(Lcom/facebook/datasource/d;)V

    :goto_0
    return-void
.end method
