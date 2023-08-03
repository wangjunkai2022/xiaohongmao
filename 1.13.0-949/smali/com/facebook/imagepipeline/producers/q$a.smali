.class Lcom/facebook/imagepipeline/producers/q$a;
.super Ljava/lang/Object;
.source "DiskCacheReadProducer.java"

# interfaces
.implements Lbolts/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/q;->h(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)Lbolts/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/g<",
        "Lcom/facebook/imagepipeline/image/e;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/u0;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/s0;

.field final synthetic c:Lcom/facebook/imagepipeline/producers/l;

.field final synthetic d:Lcom/facebook/imagepipeline/producers/q;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/q;Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/imagepipeline/producers/l;)V
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
            "val$consumer",
            "val$producerContext",
            "val$listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/q$a;->d:Lcom/facebook/imagepipeline/producers/q;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/q$a;->a:Lcom/facebook/imagepipeline/producers/u0;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/q$a;->b:Lcom/facebook/imagepipeline/producers/s0;

    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/q$a;->c:Lcom/facebook/imagepipeline/producers/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lbolts/h;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/q$a;->b(Lbolts/h;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public b(Lbolts/h;)Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/h<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/q;->c(Lbolts/h;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "DiskCacheProducer"

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/q$a;->a:Lcom/facebook/imagepipeline/producers/u0;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/q$a;->b:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/imagepipeline/producers/u0;->c(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/q$a;->c:Lcom/facebook/imagepipeline/producers/l;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/l;->b()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lbolts/h;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/q$a;->a:Lcom/facebook/imagepipeline/producers/u0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/q$a;->b:Lcom/facebook/imagepipeline/producers/s0;

    .line 6
    invoke-virtual {p1}, Lbolts/h;->E()Ljava/lang/Exception;

    move-result-object p1

    .line 7
    invoke-interface {v0, v3, v2, p1, v1}, Lcom/facebook/imagepipeline/producers/u0;->k(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 8
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/q$a;->d:Lcom/facebook/imagepipeline/producers/q;

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/q;->d(Lcom/facebook/imagepipeline/producers/q;)Lcom/facebook/imagepipeline/producers/q0;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/q$a;->c:Lcom/facebook/imagepipeline/producers/l;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/q$a;->b:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {p1, v0, v2}, Lcom/facebook/imagepipeline/producers/q0;->b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lbolts/h;->F()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/image/e;

    if-eqz p1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/q$a;->a:Lcom/facebook/imagepipeline/producers/u0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/q$a;->b:Lcom/facebook/imagepipeline/producers/s0;

    .line 11
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->H()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v0, v3, v5, v4}, Lcom/facebook/imagepipeline/producers/q;->e(Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/s0;ZI)Ljava/util/Map;

    move-result-object v4

    .line 12
    invoke-interface {v0, v3, v2, v4}, Lcom/facebook/imagepipeline/producers/u0;->j(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    .line 13
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/q$a;->a:Lcom/facebook/imagepipeline/producers/u0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/q$a;->b:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {v0, v3, v2, v5}, Lcom/facebook/imagepipeline/producers/u0;->b(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Z)V

    .line 14
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/q$a;->b:Lcom/facebook/imagepipeline/producers/s0;

    const-string v2, "disk"

    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/producers/s0;->j(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/q$a;->c:Lcom/facebook/imagepipeline/producers/l;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/producers/l;->d(F)V

    .line 16
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/q$a;->c:Lcom/facebook/imagepipeline/producers/l;

    invoke-interface {v0, p1, v5}, Lcom/facebook/imagepipeline/producers/l;->c(Ljava/lang/Object;I)V

    .line 17
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->close()V

    goto :goto_0

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/q$a;->a:Lcom/facebook/imagepipeline/producers/u0;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/q$a;->b:Lcom/facebook/imagepipeline/producers/s0;

    const/4 v3, 0x0

    .line 19
    invoke-static {p1, v0, v3, v3}, Lcom/facebook/imagepipeline/producers/q;->e(Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/s0;ZI)Ljava/util/Map;

    move-result-object v3

    .line 20
    invoke-interface {p1, v0, v2, v3}, Lcom/facebook/imagepipeline/producers/u0;->j(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    .line 21
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/q$a;->d:Lcom/facebook/imagepipeline/producers/q;

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/q;->d(Lcom/facebook/imagepipeline/producers/q;)Lcom/facebook/imagepipeline/producers/q0;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/q$a;->c:Lcom/facebook/imagepipeline/producers/l;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/q$a;->b:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {p1, v0, v2}, Lcom/facebook/imagepipeline/producers/q0;->b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V

    :goto_0
    return-object v1
.end method
