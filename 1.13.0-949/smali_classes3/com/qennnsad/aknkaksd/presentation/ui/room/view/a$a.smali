.class Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a$a;
.super Ljava/lang/Object;
.source "AndroidBug5497Workaround.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->a(Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->d(Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->c(Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;I)I

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->b(Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;Z)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->e(Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;)V

    return-void
.end method
