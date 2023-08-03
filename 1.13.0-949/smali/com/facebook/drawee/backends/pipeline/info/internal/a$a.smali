.class Lcom/facebook/drawee/backends/pipeline/info/internal/a$a;
.super Landroid/os/Handler;
.source "ImagePerfControllerListener2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/backends/pipeline/info/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lx0/k;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lx0/k;)V
    .locals 0
    .param p1    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lx0/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "looper",
            "notifier"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a$a;->a:Lx0/k;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx0/l;

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a$a;->a:Lx0/k;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, p1}, Lx0/k;->a(Lx0/l;I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a$a;->a:Lx0/k;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, p1}, Lx0/k;->b(Lx0/l;I)V

    :goto_0
    return-void
.end method
