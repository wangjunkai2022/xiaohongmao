.class Lcom/facebook/imagepipeline/core/h$f;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/datasource/j;

.field final synthetic b:Lcom/facebook/imagepipeline/core/h;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/core/h;Lcom/facebook/datasource/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$dataSource"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/h$f;->b:Lcom/facebook/imagepipeline/core/h;

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/h$f;->a:Lcom/facebook/datasource/j;

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

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/h$f;->b(Lbolts/h;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public b(Lbolts/h;)Ljava/lang/Void;
    .locals 2
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
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h$f;->a:Lcom/facebook/datasource/j;

    invoke-virtual {p1}, Lbolts/h;->H()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lbolts/h;->J()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lbolts/h;->F()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/datasource/j;->z(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1
.end method
