.class Lcom/qennnsad/aknkaksd/util/roomanim/a$a$a;
.super Ljava/lang/Object;
.source "FireworksView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/util/roomanim/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/util/roomanim/a$a;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/util/roomanim/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a$a$a;->a:Lcom/qennnsad/aknkaksd/util/roomanim/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a$a$a;->a:Lcom/qennnsad/aknkaksd/util/roomanim/a$a;

    iget-object v0, v0, Lcom/qennnsad/aknkaksd/util/roomanim/a$a;->c:Lcom/qennnsad/aknkaksd/util/roomanim/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a$a$a;->a:Lcom/qennnsad/aknkaksd/util/roomanim/a$a;

    iget-object v0, v0, Lcom/qennnsad/aknkaksd/util/roomanim/a$a;->c:Lcom/qennnsad/aknkaksd/util/roomanim/a;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/roomanim/a;->k(Lcom/qennnsad/aknkaksd/util/roomanim/a;)Lcom/qennnsad/aknkaksd/util/roomanim/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a$a$a;->a:Lcom/qennnsad/aknkaksd/util/roomanim/a$a;

    iget-object v0, v0, Lcom/qennnsad/aknkaksd/util/roomanim/a$a;->c:Lcom/qennnsad/aknkaksd/util/roomanim/a;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/roomanim/a;->k(Lcom/qennnsad/aknkaksd/util/roomanim/a;)Lcom/qennnsad/aknkaksd/util/roomanim/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/util/roomanim/c;->a()V

    :cond_0
    return-void
.end method
