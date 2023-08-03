.class Lcom/facebook/imagepipeline/core/h$g;
.super Ljava/lang/Object;
.source "ImagePipeline.java"

# interfaces
.implements Lbolts/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/core/h;->I(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/datasource/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/g<",
        "Ljava/lang/Boolean;",
        "Lbolts/h<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/cache/common/c;

.field final synthetic b:Lcom/facebook/imagepipeline/core/h;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/core/h;Lcom/facebook/cache/common/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$cacheKey"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/h$g;->b:Lcom/facebook/imagepipeline/core/h;

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/h$g;->a:Lcom/facebook/cache/common/c;

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

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/h$g;->b(Lbolts/h;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method public b(Lbolts/h;)Lbolts/h;
    .locals 1
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
            "Ljava/lang/Boolean;",
            ">;)",
            "Lbolts/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lbolts/h;->H()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lbolts/h;->J()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lbolts/h;->F()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lbolts/h;->D(Ljava/lang/Object;)Lbolts/h;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/h$g;->b:Lcom/facebook/imagepipeline/core/h;

    invoke-static {p1}, Lcom/facebook/imagepipeline/core/h;->a(Lcom/facebook/imagepipeline/core/h;)Lcom/facebook/imagepipeline/cache/f;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h$g;->a:Lcom/facebook/cache/common/c;

    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/cache/f;->l(Lcom/facebook/cache/common/c;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method
