.class Lcom/facebook/imagepipeline/cache/h$a;
.super Ljava/lang/Object;
.source "CountingLruBitmapMemoryCacheFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/h;->a(Lcom/facebook/common/internal/m;Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/cache/u$a;ZZLcom/facebook/imagepipeline/cache/j$b;)Lcom/facebook/imagepipeline/cache/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/a0<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/cache/h;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/h$a;->a:Lcom/facebook/imagepipeline/cache/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Lcom/facebook/imagepipeline/image/c;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/h$a;->b(Lcom/facebook/imagepipeline/image/c;)I

    move-result p1

    return p1
.end method

.method public b(Lcom/facebook/imagepipeline/image/c;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/c;->b()I

    move-result p1

    return p1
.end method
