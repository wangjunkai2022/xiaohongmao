.class Lcom/facebook/drawee/controller/a$a;
.super Ljava/lang/Object;
.source "AbstractDraweeController.java"

# interfaces
.implements Li1/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/drawee/controller/a;->h0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/drawee/controller/a;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/controller/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/controller/a$a;->a:Lcom/facebook/drawee/controller/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a$a;->a:Lcom/facebook/drawee/controller/a;

    iget-object v1, v0, Lcom/facebook/drawee/controller/a;->i:Li1/f;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/facebook/drawee/controller/a;->j(Lcom/facebook/drawee/controller/a;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Li1/f;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a$a;->a:Lcom/facebook/drawee/controller/a;

    iget-object v1, v0, Lcom/facebook/drawee/controller/a;->i:Li1/f;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/facebook/drawee/controller/a;->j(Lcom/facebook/drawee/controller/a;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Li1/f;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
